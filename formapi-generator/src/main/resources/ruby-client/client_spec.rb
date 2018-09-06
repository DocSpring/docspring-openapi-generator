require 'spec_helper'
require 'json'

describe FormAPI::Client do
  before do
    FormAPI.configure do |c|
      c.username  = 'api_token123'
      c.password  = 'testsecret123'
      c.host = 'localhost:31337'
      c.scheme = 'http'
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
  end

  describe '#combine_submissions' do
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
      expect(combined_submission.submission_ids).to eq(
        %w[sub_000000000000000001 sub_000000000000000002])
      expect(combined_submission.download_url).to include(
        'combined_submissions/combined_submission.pdf')
    end
  end
end
