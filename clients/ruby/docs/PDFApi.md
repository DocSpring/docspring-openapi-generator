# FormAPI::PDFApi

All URIs are relative to *https://app.formapi.io/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**batch_generate_pdf**](PDFApi.md#batch_generate_pdf) | **POST** /templates/{template_id}/submissions/batch | Generates multiple PDFs
[**combine_submissions**](PDFApi.md#combine_submissions) | **POST** /combined_submissions | Merge generated PDFs together
[**expire_combined_submission**](PDFApi.md#expire_combined_submission) | **DELETE** /combined_submissions/{combined_submission_id} | Expire a combined submission
[**expire_submission**](PDFApi.md#expire_submission) | **DELETE** /submissions/{submission_id} | Expire a PDF submission
[**generate_pdf**](PDFApi.md#generate_pdf) | **POST** /templates/{template_id}/submissions | Generates a new PDF
[**get_combined_submission**](PDFApi.md#get_combined_submission) | **GET** /combined_submissions/{combined_submission_id} | Check the status of a combined submission (merged PDFs)
[**get_submission**](PDFApi.md#get_submission) | **GET** /submissions/{submission_id} | Check the status of a PDF
[**get_templates**](PDFApi.md#get_templates) | **GET** /templates | Get a list of all templates
[**test_authentication**](PDFApi.md#test_authentication) | **GET** /authentication | Test Authentication


# **batch_generate_pdf**
> Array&lt;InlineResponse2011&gt; batch_generate_pdf(template_id, opts)

Generates multiple PDFs

### Example
```ruby
# load the gem
require 'form_api'
# setup authorization
FormAPI.configure do |config|
  # Configure HTTP basic authorization: api_token_basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FormAPI::PDFApi.new

template_id = "template_id_example" # String |

opts = {
  create_submission_batch_body: [FormAPI::CreateSubmissionBatchBody.new] # Array<CreateSubmissionBatchBody> |
}

begin
  #Generates multiple PDFs
  result = api_instance.batch_generate_pdf(template_id, opts)
  p result
rescue FormAPI::ApiError => e
  puts "Exception when calling PDFApi->batch_generate_pdf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **String**|  |
 **create_submission_batch_body** | [**Array&lt;CreateSubmissionBatchBody&gt;**](CreateSubmissionBatchBody.md)|  | [optional]

### Return type

[**Array&lt;InlineResponse2011&gt;**](InlineResponse2011.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **combine_submissions**
> InlineResponse201 combine_submissions(opts)

Merge generated PDFs together

### Example
```ruby
# load the gem
require 'form_api'
# setup authorization
FormAPI.configure do |config|
  # Configure HTTP basic authorization: api_token_basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FormAPI::PDFApi.new

opts = {
  create_combined_submission_body: FormAPI::CreateCombinedSubmissionBody.new # CreateCombinedSubmissionBody |
}

begin
  #Merge generated PDFs together
  result = api_instance.combine_submissions(opts)
  p result
rescue FormAPI::ApiError => e
  puts "Exception when calling PDFApi->combine_submissions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_combined_submission_body** | [**CreateCombinedSubmissionBody**](CreateCombinedSubmissionBody.md)|  | [optional]

### Return type

[**InlineResponse201**](InlineResponse201.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **expire_combined_submission**
> InlineResponse201CombinedSubmission expire_combined_submission(combined_submission_id)

Expire a combined submission

### Example
```ruby
# load the gem
require 'form_api'
# setup authorization
FormAPI.configure do |config|
  # Configure HTTP basic authorization: api_token_basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FormAPI::PDFApi.new

combined_submission_id = "combined_submission_id_example" # String |


begin
  #Expire a combined submission
  result = api_instance.expire_combined_submission(combined_submission_id)
  p result
rescue FormAPI::ApiError => e
  puts "Exception when calling PDFApi->expire_combined_submission: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **combined_submission_id** | **String**|  |

### Return type

[**InlineResponse201CombinedSubmission**](InlineResponse201CombinedSubmission.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **expire_submission**
> TemplatestemplateIdsubmissionsbatchSubmission expire_submission(submission_id)

Expire a PDF submission

### Example
```ruby
# load the gem
require 'form_api'
# setup authorization
FormAPI.configure do |config|
  # Configure HTTP basic authorization: api_token_basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FormAPI::PDFApi.new

submission_id = "submission_id_example" # String |


begin
  #Expire a PDF submission
  result = api_instance.expire_submission(submission_id)
  p result
rescue FormAPI::ApiError => e
  puts "Exception when calling PDFApi->expire_submission: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submission_id** | **String**|  |

### Return type

[**TemplatestemplateIdsubmissionsbatchSubmission**](TemplatestemplateIdsubmissionsbatchSubmission.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **generate_pdf**
> InlineResponse2011 generate_pdf(template_id, opts)

Generates a new PDF

### Example
```ruby
# load the gem
require 'form_api'
# setup authorization
FormAPI.configure do |config|
  # Configure HTTP basic authorization: api_token_basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FormAPI::PDFApi.new

template_id = "template_id_example" # String |

opts = {
  create_submission_body: FormAPI::CreateSubmissionBody.new # CreateSubmissionBody |
}

begin
  #Generates a new PDF
  result = api_instance.generate_pdf(template_id, opts)
  p result
rescue FormAPI::ApiError => e
  puts "Exception when calling PDFApi->generate_pdf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **String**|  |
 **create_submission_body** | [**CreateSubmissionBody**](CreateSubmissionBody.md)|  | [optional]

### Return type

[**InlineResponse2011**](InlineResponse2011.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_combined_submission**
> InlineResponse201CombinedSubmission get_combined_submission(combined_submission_id)

Check the status of a combined submission (merged PDFs)

### Example
```ruby
# load the gem
require 'form_api'
# setup authorization
FormAPI.configure do |config|
  # Configure HTTP basic authorization: api_token_basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FormAPI::PDFApi.new

combined_submission_id = "combined_submission_id_example" # String |


begin
  #Check the status of a combined submission (merged PDFs)
  result = api_instance.get_combined_submission(combined_submission_id)
  p result
rescue FormAPI::ApiError => e
  puts "Exception when calling PDFApi->get_combined_submission: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **combined_submission_id** | **String**|  |

### Return type

[**InlineResponse201CombinedSubmission**](InlineResponse201CombinedSubmission.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_submission**
> TemplatestemplateIdsubmissionsbatchSubmission get_submission(submission_id)

Check the status of a PDF

### Example
```ruby
# load the gem
require 'form_api'
# setup authorization
FormAPI.configure do |config|
  # Configure HTTP basic authorization: api_token_basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FormAPI::PDFApi.new

submission_id = "submission_id_example" # String |


begin
  #Check the status of a PDF
  result = api_instance.get_submission(submission_id)
  p result
rescue FormAPI::ApiError => e
  puts "Exception when calling PDFApi->get_submission: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submission_id** | **String**|  |

### Return type

[**TemplatestemplateIdsubmissionsbatchSubmission**](TemplatestemplateIdsubmissionsbatchSubmission.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_templates**
> Array&lt;InlineResponse2001&gt; get_templates(opts)

Get a list of all templates

### Example
```ruby
# load the gem
require 'form_api'
# setup authorization
FormAPI.configure do |config|
  # Configure HTTP basic authorization: api_token_basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FormAPI::PDFApi.new

opts = {
  page: 56, # Integer | Default: 1
  per_page: 56 # Integer | Default: 50
}

begin
  #Get a list of all templates
  result = api_instance.get_templates(opts)
  p result
rescue FormAPI::ApiError => e
  puts "Exception when calling PDFApi->get_templates: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Default: 1 | [optional]
 **per_page** | **Integer**| Default: 50 | [optional]

### Return type

[**Array&lt;InlineResponse2001&gt;**](InlineResponse2001.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **test_authentication**
> InlineResponse200 test_authentication

Test Authentication

### Example
```ruby
# load the gem
require 'form_api'
# setup authorization
FormAPI.configure do |config|
  # Configure HTTP basic authorization: api_token_basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FormAPI::PDFApi.new

begin
  #Test Authentication
  result = api_instance.test_authentication
  p result
rescue FormAPI::ApiError => e
  puts "Exception when calling PDFApi->test_authentication: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


