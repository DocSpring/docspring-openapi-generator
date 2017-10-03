#!/usr/bin/env ruby
#
# This example demonstrates generating a PDF from a preconfigured template,
# and waiting for the PDF to be processed.
#
# You can run this example with: ./examples/generate_pdf.rb

require "bundler/setup"
Bundler.require

# This is a real test API token and template on formapi.io
# -------------------------------------------------------------
API_TOKEN_ID = 'yRaaR9JmTPtGX7EN'
API_TOKEN_SECRET = 'IB3TRkSdm4f2BdtU_D3YgxjdMB7l-r2fOgvxD1Yzwec'
TEMPLATE_ID = '6zz3dYRYM67fxMXA'


begin
  FormAPI.configure do |c|
    c.username  = API_TOKEN_ID               # Your API Token ID
    c.password  = API_TOKEN_SECRET           # Your API Token Secret
    # c.debugging = true
  end

  formapi = FormAPI::Client.new

  puts "Generating PDF and waiting until ready..."

  response = formapi.generate_pdf(
    template_id: TEMPLATE_ID,
    test: true,
    data: {
      first_name: 'John',
      last_name: 'Smith',
      favorite_color: 'Blue'
    }
  )

  puts "PDF was generated:"
  puts response

rescue FormAPI::ApiError => ex
  puts "#{ex.class}: #{ex.message}"
  puts ex.code          # HTTP response code
  puts ex.response_body # HTTP response body
  puts ex.backtrace[0..3].join("\n")
end
