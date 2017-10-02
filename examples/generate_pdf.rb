#!/usr/bin/env ruby
# This example demonstrates generating a PDF from a preconfigured template,
# and downloading the PDF to a local file.
#
# You can run this example with: ./examples/generate_pdf.rb

require "bundler/setup"
Bundler.require

PDF_FILENAME = '/tmp/formapi-test.pdf'

begin
  FormAPI.configure do |c|
    c.username  = "yRaaR9JmTPtGX7EN"                              # Your API Token ID
    c.password  = "IB3TRkSdm4f2BdtU_D3YgxjdMB7l-r2fOgvxD1Yzwec"   # Your API Token Secret
    # c.debugging = true
  end

  formapi = FormAPI::Client.new

  puts "Downloading PDF to /tmp/formapi-test.pdf..."

  formapi.generate_and_download_pdf(
    template_id: '6zz3dYRYM67fxMXA',
    filename: PDF_FILENAME,
    data: {
      first_name: 'John',
      last_name: 'Smith',
      favorite_color: 'Blue'
    }
  )

  puts "PDF was downloaded to /tmp/formapi-test.pdf"

  # Open the PDF on Mac or Linux.
  `type xdg-open > /dev/null 2>&1 && xdg-open '#{PDF_FILENAME}' || open '#{PDF_FILENAME}'`

rescue FormAPI::ApiError => ex
  puts "#{ex.class}: #{ex.message}"
  puts ex.code          # HTTP response code
  puts ex.response_body # HTTP response body
  puts ex.backtrace[0..3].join("\n")
end
