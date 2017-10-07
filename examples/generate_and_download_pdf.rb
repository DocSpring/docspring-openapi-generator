#!/usr/bin/env ruby
#
# This example demonstrates generating a PDF from a preconfigured template,
# and downloading the PDF to a local file.
#
# You can run this example with: ./examples/generate_and_download_pdf.rb

require "bundler/setup"
Bundler.require

# This is a real test API token and template on formapi.io
# -------------------------------------------------------------
API_TOKEN_ID = 'yRaaR9JmTPtGX7EN'
API_TOKEN_SECRET = 'IB3TRkSdm4f2BdtU_D3YgxjdMB7l-r2fOgvxD1Yzwec'
TEMPLATE_ID = '6zz3dYRYM67fxMXA'
PDF_FILENAME = '/tmp/formapi-test.pdf'

begin
  FormAPI.configure do |c|
    c.username  = API_TOKEN_ID               # Your API Token ID
    c.password  = API_TOKEN_SECRET           # Your API Token Secret
    # c.debugging = true
  end

  formapi = FormAPI::Client.new

  puts "Generating PDF..."

  response = formapi.generate_pdf(
    template_id: TEMPLATE_ID,
    filename: PDF_FILENAME,
    data: {
      first_name: 'John',
      last_name: 'Smith',
      favorite_color: 'Blue'
    }
  )

  puts "Downloading PDF to #{PDF_FILENAME}..."

  # Note: This example uses the Typhoeus library to download the file as a stream.
  # This is a good way to download files, since the whole file is not loaded into memory.
  # (The form_api gem includes Typhoeus as a dependency.)
  downloaded_file = File.open PDF_FILENAME, 'wb'
  request = Typhoeus::Request.new(response.submission.download_url)
  request.on_body { |chunk| downloaded_file.write(chunk) }
  request.on_complete do |response|
    downloaded_file.close

    puts "PDF was downloaded!"
    # Open the downloaded PDF on Mac or Linux.
    `type xdg-open > /dev/null 2>&1 && xdg-open '#{PDF_FILENAME}' || open '#{PDF_FILENAME}'`
  end
  request.run

rescue FormAPI::ApiError => ex
  puts "#{ex.class}: #{ex.message}"
  puts ex.code          # HTTP response code
  puts ex.response_body # HTTP response body
  puts ex.backtrace[0..3].join("\n")
end
