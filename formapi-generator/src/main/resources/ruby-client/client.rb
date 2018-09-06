require 'form_api/api/pdf_api'

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
      opts[:wait] = true unless opts.has_key?(:wait)

      template_id = opts.delete :template_id
      create_submission_data = opts
      response = super(template_id, create_submission_data)

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

      CreateSubmissionResponse.new(
        status: submission.state == 'processed' ? 'success' : 'error',
        submission: submission
      )
    end

    def combine_submissions(opts = {})
      unless opts[:submission_ids].kind_of?(::Array)
        raise InvalidDataError, "submission_ids is required, and must be an Array."
      end

      # Wait for job to finish by default.
      opts[:wait] = true unless opts.has_key?(:wait)

      # PdfAPI requires a :combined_submission_data option.
      response = super(combined_submission_data: opts)

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

      CreateCombinedSubmissionResponse.new(
        status: combined_submission.state == 'processed' ? 'success' : 'error',
        combined_submission: combined_submission
      )
    end
  end
end
