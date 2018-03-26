#!/usr/bin/env ruby
#
# This example demonstrates merging multiple generated PDFs into a single PDF.
#
# This example is just a demonstration, and cannot be run from the command line.

Dir.chdir File.join(File.dirname(__FILE__), '../../clients/ruby')
require "bundler/setup"
Bundler.require

begin
  FormAPI.configure do |c|
    c.username  = ENV['FORM_API_TOKEN_ID']
    c.password  = ENV['FORM_API_TOKEN_SECRET']
  end

  formapi = FormAPI::Client.new

  response = formapi.combine_submissions(
    submission_ids: ["SUBMISSION_1_ID", "SUBMISSION_2_ID", ... ],
    metadata: {
      user_id: 123
    }
  )

  puts "Download your combined PDF at: #{response.combined_submission.download_url}"

rescue FormAPI::ApiError => ex
  puts "#{ex.class}: #{ex.message}"
  puts ex.code          # HTTP response code
  puts ex.response_body # HTTP response body
  puts ex.backtrace[0..3].join("\n")
end
