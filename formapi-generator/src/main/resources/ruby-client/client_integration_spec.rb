require 'spec_helper'
require 'json'

describe FormAPI::Client do
  before do
    FormAPI.configure do |c|
      c.api_token_id = 'api_token123'
      c.api_token_secret = 'testsecret123'
      c.host = 'http://api.formapi.local:31337'
    end
  end

  describe '#generate_pdf' do
    it 'should generate a PDF and wait for the submission to be processed' do
      client = FormAPI::Client.new
      template_id = 'tpl_000000000000000001'

      expect(client).to receive(:sleep).with(1).once

      response = client.generate_pdf(
        template_id: template_id,
        data: {
          title: 'Test PDF',
          description: 'This PDF is great!',
        }
      )

      expect(response.status).to eq 'success'
      submission = response.submission
      expect(submission.id).to start_with 'sub_'
      expect(submission.expired).to eq false
      expect(submission.state).to eq 'processed'
      expect(submission.download_url).to include 'submissions/submission.pdf'
    end

    it 'should handle invalid data errors' do
      client = FormAPI::Client.new
      template_id = 'tpl_000000000000000001'

      expect(client).to_not receive(:sleep)

      expect {
        client.generate_pdf(
          template_id: template_id,
          data: {
            title: 'Test PDF'
          }
        )
      }.to raise_error(
        FormAPI::ApiError,
        'Unprocessable Entity: The root object did not contain a ' \
          "required property of 'description'"
      )
    end
  end

  describe '#batch_generate_pdfs' do
    it 'should submit a batch job and wait for all jobs to be processed' do
      client = FormAPI::Client.new
      template_id = 'tpl_000000000000000001'

      expect(client).to receive(:sleep).with(1).once

      response = client.batch_generate_pdfs(
        metadata: { user_id: 123 },
        test: true,
        submissions: [
          {
            template_id: template_id,
            data: {
              title: 'Test PDF',
              description: 'This PDF is great!',
            }
          },
          {
            template_id: template_id,
            data: {
              title: 'Test PDF 2',
              description: 'This PDF is also great!',
            }
          }
        ]
      )

      expect(response.status).to eq 'success'
      batch = response.submission_batch
      expect(batch.id).to start_with 'sbb_'
      expect(batch.state).to eq 'processed'
      expect(batch.total_count).to eq 2
      expect(batch.pending_count).to eq 0
      expect(batch.error_count).to eq 0
      expect(batch.completion_percentage).to eq 100

      expect(response.submissions.size).to eq 2
      submission_response1 = response.submissions[0]
      expect(submission_response1.status).to eq 'success'
      submission1 = submission_response1.submission
      expect(submission1.id).to start_with 'sub_'
      expect(submission1.expired).to eq false
      expect(submission1.state).to eq 'processed'
      expect(submission1.download_url).to include 'submissions/submission.pdf'

      submission_response2 = response.submissions[1]
      expect(submission_response2.status).to eq 'success'
      submission2 = submission_response2.submission
      expect(submission2.id).to start_with 'sub_'
      expect(submission2.expired).to eq false
      expect(submission2.state).to eq 'processed'
    end

    it 'generates no PDFs if there are any errors' do
      client = FormAPI::Client.new
      template_id = 'tpl_000000000000000001'

      # Response is immediately an error so no need to poll
      expect(client).to_not receive(:sleep)

      response = client.batch_generate_pdfs(
        metadata: { user_id: 123 },
        test: true,
        submissions: [
          {
            template_id: template_id,
            data: {
              title: 'Test PDF',
              description: 'This PDF is great!',
            }
          },
          {
            template_id: template_id,
            data: {
              description: 'This PDF is also great!',
            }
          }
        ]
      )

      expect(response.status).to eq 'error'
      batch = response.submission_batch
      expect(batch.id).to start_with 'sbb_'
      expect(batch.state).to eq 'error'
      expect(batch.total_count).to eq 2
      expect(batch.pending_count).to eq 0
      expect(batch.error_count).to eq 1
      expect(batch.completion_percentage).to eq 100

      expect(response.submissions.size).to eq 2
      submission_response1 = response.submissions[0]
      expect(submission_response1.status).to eq 'valid_but_not_saved'
      expect(submission_response1.submission).to be_nil

      submission_response2 = response.submissions[1]
      expect(submission_response2.status).to eq 'error'
      submission2 = submission_response2.submission
      expect(submission2.id).to start_with 'sub_'
      expect(submission2.expired).to eq false
      expect(submission2.state).to eq 'invalid_data'
    end
  end

  describe '#combine_submissions with submission_ids' do
    it 'should merge multiple PDFs and wait for the job to be processed' do
      client = FormAPI::Client.new
      expect(client).to receive(:sleep).with(1).once

      response = client.combine_submissions(
        submission_ids: %w[sub_000000000000000001 sub_000000000000000002])

      expect(response.status).to eq 'success'
      combined_submission = response.combined_submission
      expect(combined_submission.id).to start_with 'com_'
      expect(combined_submission.expired).to eq false
      expect(combined_submission.state).to eq 'processed'
      expect(combined_submission.source_pdfs).to eq(
        [
          { type: 'submission', id: 'sub_000000000000000001' },
          { type: 'submission', id: 'sub_000000000000000002' }
        ]
      )
      # Backwards compatibility - We still set submission_ids
      expect(combined_submission.submission_ids).to eq(
        %w[sub_000000000000000001 sub_000000000000000002])
      expect(combined_submission.download_url).to include(
        'combined_submissions/combined_submission.pdf')
    end
  end

  describe '#combine_pdfs with source_pdfs' do
    it 'should merge multiple PDFs and wait for the job to be processed' do
      client = FormAPI::Client.new
      expect(client).to receive(:sleep).with(1).once

      response = client.combine_pdfs(
        source_pdfs: [
          { type: 'submission', id: 'sub_000000000000000001' },
          { type: 'template',   id: 'tpl_000000000000000001' },
          { type: 'submission', id: 'sub_000000000000000002' }
        ]
      )

      expect(response.status).to eq 'success'
      combined_submission = response.combined_submission
      expect(combined_submission.id).to start_with 'com_'
      expect(combined_submission.expired).to eq false
      expect(combined_submission.state).to eq 'processed'
      expect(combined_submission.source_pdfs).to eq(
        [
          { type: 'submission', id: 'sub_000000000000000001' },
          { type: 'template',   id: 'tpl_000000000000000001' },
          { type: 'submission', id: 'sub_000000000000000002' }
        ]
      )
      expect(combined_submission.download_url).to include(
        'combined_submissions/combined_submission.pdf')
    end
  end

  describe '#batch_generate_and_combine_pdfs' do
    it 'should submit a batch job and combine the PDFs into a single PDF' do
      client = FormAPI::Client.new
      template_id = 'tpl_000000000000000001'

      expect(client).to receive(:sleep).with(1).twice

      response = client.batch_generate_and_combine_pdfs(
        metadata: { user_id: 123 },
        test: true,
        submissions: [
          {
            template_id: template_id,
            data: {
              title: 'Test PDF',
              description: 'This PDF is great!',
            }
          },
          {
            template_id: template_id,
            data: {
              title: 'Test PDF 2',
              description: 'This PDF is also great!',
            }
          }
        ]
      )

      expect(response.status).to eq 'success'
      combined_submission = response.combined_submission
      expect(combined_submission.id).to start_with 'com_'
      expect(combined_submission.expired).to eq false
      expect(combined_submission.state).to eq 'processed'
      expect(combined_submission.submission_ids.count).to eq 2
      combined_submission.submission_ids.each do |sub_id|
        expect(sub_id).to start_with 'sub_'
      end
      expect(combined_submission.download_url).to include(
        'combined_submissions/combined_submission.pdf')
    end
  end
end
