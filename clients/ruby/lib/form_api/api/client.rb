require 'form_api/api/pdf_api'

module FormAPI
  class Client < PDFApi
    class InvalidDataError < ApiError; end
    class PollTimeoutError < ApiError; end
    class InvalidResponseError < ApiError; end
    class FailedBatchError < ApiError; end

    def generate_pdf(options)
      unless options[:data].is_a?(::Hash)
        raise InvalidDataError, "data is required, and must be a Hash."
      end

      # Wait for job to finish by default.
      options[:wait] = options.key?(:wait) ? options[:wait] : true

      template_id = options.delete :template_id
      create_submission_data = options
      response = super(template_id, create_submission_data)

      return response unless options[:wait]

      submission = response.submission
      timeout = options[:timeout] || 60
      start_time = Time.now

      # Wait for submission to be ready
      while submission.state == 'pending'
        sleep 1
        submission = get_submission(submission.id)
        if Time.now - start_time > timeout
          raise PollTimeoutError, "PDF was not processed after #{timeout} seconds!"
        end
      end

      CreateSubmissionResponse.new(
        status: submission.state == 'processed' ? 'success' : 'error',
        submission: submission
      )
    end

    def batch_generate_pdfs(options)
      unless options[:submissions].is_a?(::Array)
        raise InvalidDataError, ":submissions is required, and must be an Array."
      end
      options[:submissions].each do |submission|
        unless submission[:data].is_a?(::Hash)
          raise InvalidDataError,
            ":data is required for each submission, and must be a Hash."
        end
      end

      # Wait for job to finish by default.
      options[:wait] = options.key?(:wait) ? options[:wait] : true

      submission_batch_data = options
      response = super(submission_batch_data)

      return response unless options[:wait]

      batch = response.submission_batch
      submission_responses = response.submissions
      timeout = options[:timeout] || 600
      start_time = Time.now

      # Wait for submission to be ready
      while batch.state == 'pending'
        sleep 1
        batch = get_submission_batch(batch.id)
        if Time.now - start_time > timeout
          raise PollTimeoutError, "PDFs were not processed after #{timeout} seconds!"
        end
      end

      # While polling the batch status, we exclude any info about the submissions.
      # We need to make one more request to fetch the updated submissions and
      # prepare the correct responses for CreateSubmissionBatchResponse
      batch_with_submissions = get_submission_batch(batch.id, include_submissions: true)
      if batch_with_submissions.submissions && batch_with_submissions.submissions.any?
        updated_submissions_hash =
          batch_with_submissions.submissions.each_with_object({}) do |sub, h|
            next h unless sub && sub.id
            h[sub.id] = sub
          end
        submission_responses.each do |sub|
          # If there's no submission it's already an error.
          next unless sub.submission
          updated_sub = updated_submissions_hash[sub.submission.id]
          if updated_sub
            sub.submission = updated_sub
            sub.status = updated_sub.state == 'processed' ? 'success' : 'error'
          else
            sub.status = 'error'
          end
        end
      end

      CreateSubmissionBatchResponse.new(
        status: batch.state == 'processed' ? 'success' : 'error',
        submission_batch: batch,
        submissions: submission_responses
      )
    end

    def combine_submissions(options)
      unless options[:submission_ids].is_a?(::Array)
        raise InvalidDataError, "submission_ids is required, and must be an Array."
      end

      # Wait for job to finish by default.
      options[:wait] = options.key?(:wait) ? options[:wait] : true

      # PdfAPI requires a :combined_submission_data option.
      response = super(options)

      return response unless options[:wait]

      combined_submission = response.combined_submission
      timeout = options[:timeout] || 600
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

    def batch_generate_and_combine_pdfs(options)
      # We pass the wait option to the combine_submissions method
      wait = options.key?(:wait) ? options.delete(:wait) : true

      response = batch_generate_pdfs(options)
      if response.status == 'error'
        raise FailedBatchError, 'Batch job failed, cannot combine PDFs!'
      end
      submission_ids = response.submissions.map { |s| s.submission.id }
      combine_submissions(submission_ids: submission_ids, wait: wait)
    end
  end
end
