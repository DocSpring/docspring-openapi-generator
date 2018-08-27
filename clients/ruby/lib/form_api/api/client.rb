require 'form_api/api/pdf_api'

# The original 'lib' files are overriden every time we
# regenerate the client, so custom methods go in here.
# Also I want to call it "Client".

module FormAPI
  class Client < PDFApi
    class InvalidDataError < ApiError; end
    class PollTimeoutError < ApiError; end
    class InvalidResponseError < ApiError; end

    def generate_pdf(opts = {})
      unless opts[:data].kind_of?(::Hash)
        raise InvalidDataError, "data is required, and must be a Hash."
      end

      # Wait for job to finish by default.
      if !opts.has_key?(:wait)
        opts[:wait] = true
      end

      # FormAPI requires a nested :data object.
      opts[:'create_submission_body'] = { data: opts.delete(:data) }
      if opts[:metadata]
        opts[:'create_submission_body'][:metadata] = opts.delete(:metadata)
      end

      template_id = opts.delete :template_id
      response = super(template_id, opts)

      return response unless opts[:wait]

      submission = response.submission
      timeout = opts[:timeout] || 60
      start_time = Time.now

      # Wait for submission to be ready
      while submission.state == 'pending'
        sleep 1
        submission = get_submission(submission.id)

        if Time.now - start_time > timeout
          raise PollTimeoutError, "PDF was not ready after #{timeout} seconds!"
        end
      end

      return InlineResponse2011.new(
        status: submission.state == 'processed' ? 'success' : 'error',
        submission: submission
      )
    end


    def combine_submissions(opts = {})
      unless opts[:submission_ids].kind_of?(::Array)
        raise InvalidDataError, "submission_ids is required, and must be an Array."
      end

      # Wait for job to finish by default.
      if !opts.has_key?(:wait)
        opts[:wait] = true
      end

      # FormAPI requires a nested :data object.
      opts[:data] = { submission_ids: opts.delete(:submission_ids) }
      if opts[:metadata]
        opts[:data][:metadata] = opts.delete(:metadata)
      end
      if opts[:expire_in]
        opts[:data][:expire_in] = opts.delete(:expire_in)
      end

      response = super(opts)

      return response unless opts[:wait]

      combined_submission = response.combined_submission
      timeout = opts[:timeout] || 60
      start_time = Time.now

      # Wait for submission to be ready
      while combined_submission.state == 'pending'
        sleep 1
        combined_submission = get_combined_submission(combined_submission.id)

        if Time.now - start_time > timeout
          raise PollTimeoutError, "Merged PDF was not ready after #{timeout} seconds!"
        end
      end

      return InlineResponse201.new(
        status: combined_submission.state == 'processed' ? 'success' : 'error',
        combined_submission: combined_submission
      )
    end
  end
end
