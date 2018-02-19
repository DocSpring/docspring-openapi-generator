require 'spec_helper'
require 'json'

describe FormAPI::Client, vcr: { record: :none } do
  it 'should generate a PDF and wait for the submission to be processed' do
    client = FormAPI::Client.new
    client.api_client.config.username = 'yRaaR9JmTPtGX7EN'
    client.api_client.config.password = 'IB3TRkSdm4f2BdtU_D3YgxjdMB7l-r2fOgvxD1Yzwec'
    template_id = '6zz3dYRYM67fxMXA'

    expect(client).to receive(:sleep).with(1).once

    response = client.generate_pdf(
      template_id: template_id,
      data: {
        first_name: 'John',
        last_name: 'Smith',
        favorite_color: 'Blue'
      }
    )

    expect(response.status).to eq 'success'
    submission = response.submission
    # expect(submission.id).to eq 'jpZnjXmRtZYxsFx4'
    expect(submission.state).to eq 'processed'
    expect(submission.download_url).to include 'https://formapi-docs.s3.amazonaws.com/store/submissions'
  end
end
