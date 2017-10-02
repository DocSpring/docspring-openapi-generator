require 'form_api/api/pdf_api'

# The original 'lib' files are overriden every time we
# regenerate the client, so custom methods go in here.
# Also I want to call it "Client".

module FormAPI
  class Client < PDFApi
    class InvalidDataError < ApiError; end
    class PollTimeoutError < ApiError; end
    class InvalidResponseError < ApiError; end

    def generate_pdf(template_id, opts = {})
      unless opts[:data].kind_of?(::Hash)
        raise InvalidDataError, ":data is required, and must be a Hash."
      end

      # FormAPI requires a nested :data object.
      opts[:data] = { data: opts.delete(:data) }

      response = super(template_id, opts)
      return response unless opts[:wait]

      timeout = opts[:timeout] || 60
      start_time = Time.now

      submission = response.submission

      # Wait for submission to be ready
      while submission.state != 'processed'
        sleep 1
        submission = get_submission(submission.id)

        if Time.now - start_time > timeout
          raise PollTimeoutError, "PDF was not ready after #{timeout} seconds!"
        end
      end

      return InlineResponse201.new(
        status: submission.state == 'processed' ? 'success' : 'error',
        submission: submission
      )
    end

    def generate_and_download_pdf(opts = {})
      template_id = opts.delete :template_id
      filename = opts.delete :filename

      response = generate_pdf(template_id, opts.merge(wait: true))
      submission = response.submission

      pdf_response = Typhoeus.get(submission.download_url, followlocation: true)

      File.open(filename, 'wb') do |f|
        f.write pdf_response.body
      end

      response
    end
  end
end
