=begin
#API V1

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require "uri"

module FormAPI
  class PDFApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Generates multiple PDFs
    #
    # @param template_id
    # @param [Hash] opts the optional parameters
    # @option opts [Array<CreateSubmissionBatchBody>] :create_submission_batch_body
    # @return [Array<InlineResponse2011>]
    def batch_generate_pdf(template_id, opts = {})
      data, _status_code, _headers = batch_generate_pdf_with_http_info(template_id, opts)
      return data
    end

    # Generates multiple PDFs
    #
    # @param template_id
    # @param [Hash] opts the optional parameters
    # @option opts [Array<CreateSubmissionBatchBody>] :create_submission_batch_body
    # @return [Array<(Array<InlineResponse2011>, Fixnum, Hash)>] Array<InlineResponse2011> data, response status code and response headers
    def batch_generate_pdf_with_http_info(template_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PDFApi.batch_generate_pdf ..."
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling PDFApi.batch_generate_pdf"
      end
      # resource path
      local_var_path = "/templates/{template_id}/submissions/batch".sub('{' + 'template_id' + '}', template_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'create_submission_batch_body'])
      auth_names = ['api_token_basic']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<InlineResponse2011>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PDFApi#batch_generate_pdf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Merge generated PDFs together
    #
    # @param [Hash] opts the optional parameters
    # @option opts [CreateCombinedSubmissionBody] :create_combined_submission_body
    # @return [InlineResponse201]
    def combine_submissions(opts = {})
      data, _status_code, _headers = combine_submissions_with_http_info(opts)
      return data
    end

    # Merge generated PDFs together
    #
    # @param [Hash] opts the optional parameters
    # @option opts [CreateCombinedSubmissionBody] :create_combined_submission_body
    # @return [Array<(InlineResponse201, Fixnum, Hash)>] InlineResponse201 data, response status code and response headers
    def combine_submissions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PDFApi.combine_submissions ..."
      end
      # resource path
      local_var_path = "/combined_submissions"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'create_combined_submission_body'])
      auth_names = ['api_token_basic']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse201')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PDFApi#combine_submissions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Expire a combined submission
    #
    # @param combined_submission_id
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse201CombinedSubmission]
    def expire_combined_submission(combined_submission_id, opts = {})
      data, _status_code, _headers = expire_combined_submission_with_http_info(combined_submission_id, opts)
      return data
    end

    # Expire a combined submission
    #
    # @param combined_submission_id
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse201CombinedSubmission, Fixnum, Hash)>] InlineResponse201CombinedSubmission data, response status code and response headers
    def expire_combined_submission_with_http_info(combined_submission_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PDFApi.expire_combined_submission ..."
      end
      # verify the required parameter 'combined_submission_id' is set
      if @api_client.config.client_side_validation && combined_submission_id.nil?
        fail ArgumentError, "Missing the required parameter 'combined_submission_id' when calling PDFApi.expire_combined_submission"
      end
      # resource path
      local_var_path = "/combined_submissions/{combined_submission_id}".sub('{' + 'combined_submission_id' + '}', combined_submission_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_token_basic']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse201CombinedSubmission')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PDFApi#expire_combined_submission\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Expire a PDF submission
    #
    # @param submission_id
    # @param [Hash] opts the optional parameters
    # @return [TemplatestemplateIdsubmissionsbatchSubmission]
    def expire_submission(submission_id, opts = {})
      data, _status_code, _headers = expire_submission_with_http_info(submission_id, opts)
      return data
    end

    # Expire a PDF submission
    #
    # @param submission_id
    # @param [Hash] opts the optional parameters
    # @return [Array<(TemplatestemplateIdsubmissionsbatchSubmission, Fixnum, Hash)>] TemplatestemplateIdsubmissionsbatchSubmission data, response status code and response headers
    def expire_submission_with_http_info(submission_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PDFApi.expire_submission ..."
      end
      # verify the required parameter 'submission_id' is set
      if @api_client.config.client_side_validation && submission_id.nil?
        fail ArgumentError, "Missing the required parameter 'submission_id' when calling PDFApi.expire_submission"
      end
      # resource path
      local_var_path = "/submissions/{submission_id}".sub('{' + 'submission_id' + '}', submission_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_token_basic']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TemplatestemplateIdsubmissionsbatchSubmission')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PDFApi#expire_submission\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Generates a new PDF
    #
    # @param template_id
    # @param [Hash] opts the optional parameters
    # @option opts [CreateSubmissionBody] :create_submission_body
    # @return [InlineResponse2011]
    def generate_pdf(template_id, opts = {})
      data, _status_code, _headers = generate_pdf_with_http_info(template_id, opts)
      return data
    end

    # Generates a new PDF
    #
    # @param template_id
    # @param [Hash] opts the optional parameters
    # @option opts [CreateSubmissionBody] :create_submission_body
    # @return [Array<(InlineResponse2011, Fixnum, Hash)>] InlineResponse2011 data, response status code and response headers
    def generate_pdf_with_http_info(template_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PDFApi.generate_pdf ..."
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling PDFApi.generate_pdf"
      end
      # resource path
      local_var_path = "/templates/{template_id}/submissions".sub('{' + 'template_id' + '}', template_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'create_submission_body'])
      auth_names = ['api_token_basic']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2011')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PDFApi#generate_pdf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Check the status of a combined submission (merged PDFs)
    #
    # @param combined_submission_id
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse201CombinedSubmission]
    def get_combined_submission(combined_submission_id, opts = {})
      data, _status_code, _headers = get_combined_submission_with_http_info(combined_submission_id, opts)
      return data
    end

    # Check the status of a combined submission (merged PDFs)
    #
    # @param combined_submission_id
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse201CombinedSubmission, Fixnum, Hash)>] InlineResponse201CombinedSubmission data, response status code and response headers
    def get_combined_submission_with_http_info(combined_submission_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PDFApi.get_combined_submission ..."
      end
      # verify the required parameter 'combined_submission_id' is set
      if @api_client.config.client_side_validation && combined_submission_id.nil?
        fail ArgumentError, "Missing the required parameter 'combined_submission_id' when calling PDFApi.get_combined_submission"
      end
      # resource path
      local_var_path = "/combined_submissions/{combined_submission_id}".sub('{' + 'combined_submission_id' + '}', combined_submission_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_token_basic']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse201CombinedSubmission')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PDFApi#get_combined_submission\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Check the status of a PDF
    #
    # @param submission_id
    # @param [Hash] opts the optional parameters
    # @return [TemplatestemplateIdsubmissionsbatchSubmission]
    def get_submission(submission_id, opts = {})
      data, _status_code, _headers = get_submission_with_http_info(submission_id, opts)
      return data
    end

    # Check the status of a PDF
    #
    # @param submission_id
    # @param [Hash] opts the optional parameters
    # @return [Array<(TemplatestemplateIdsubmissionsbatchSubmission, Fixnum, Hash)>] TemplatestemplateIdsubmissionsbatchSubmission data, response status code and response headers
    def get_submission_with_http_info(submission_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PDFApi.get_submission ..."
      end
      # verify the required parameter 'submission_id' is set
      if @api_client.config.client_side_validation && submission_id.nil?
        fail ArgumentError, "Missing the required parameter 'submission_id' when calling PDFApi.get_submission"
      end
      # resource path
      local_var_path = "/submissions/{submission_id}".sub('{' + 'submission_id' + '}', submission_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_token_basic']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TemplatestemplateIdsubmissionsbatchSubmission')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PDFApi#get_submission\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of all templates
    #
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Default: 1
    # @option opts [Integer] :per_page Default: 50
    # @return [Array<InlineResponse2001>]
    def get_templates(opts = {})
      data, _status_code, _headers = get_templates_with_http_info(opts)
      return data
    end

    # Get a list of all templates
    #
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Default: 1
    # @option opts [Integer] :per_page Default: 50
    # @return [Array<(Array<InlineResponse2001>, Fixnum, Hash)>] Array<InlineResponse2001> data, response status code and response headers
    def get_templates_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PDFApi.get_templates ..."
      end
      # resource path
      local_var_path = "/templates"

      # query parameters
      query_params = {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_token_basic']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<InlineResponse2001>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PDFApi#get_templates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Test Authentication
    #
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse200]
    def test_authentication(opts = {})
      data, _status_code, _headers = test_authentication_with_http_info(opts)
      return data
    end

    # Test Authentication
    #
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse200, Fixnum, Hash)>] InlineResponse200 data, response status code and response headers
    def test_authentication_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PDFApi.test_authentication ..."
      end
      # resource path
      local_var_path = "/authentication"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_token_basic']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse200')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PDFApi#test_authentication\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end