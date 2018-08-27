# form_api.PDFApi

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
> list[InlineResponse2011] batch_generate_pdf(template_id, create_submission_batch_body=create_submission_batch_body)

Generates multiple PDFs

### Example
```python
from __future__ import print_function
import time
import form_api
from form_api.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: api_token_basic
configuration = form_api.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = form_api.PDFApi(form_api.ApiClient(configuration))
template_id = 'template_id_example' # str |
create_submission_batch_body = [form_api.CreateSubmissionBatchBody()] # list[CreateSubmissionBatchBody] |  (optional)

try:
    # Generates multiple PDFs
    api_response = api_instance.batch_generate_pdf(template_id, create_submission_batch_body=create_submission_batch_body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PDFApi->batch_generate_pdf: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **str**|  |
 **create_submission_batch_body** | [**list[CreateSubmissionBatchBody]**](CreateSubmissionBatchBody.md)|  | [optional]

### Return type

[**list[InlineResponse2011]**](InlineResponse2011.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **combine_submissions**
> InlineResponse201 combine_submissions(create_combined_submission_body=create_combined_submission_body)

Merge generated PDFs together

### Example
```python
from __future__ import print_function
import time
import form_api
from form_api.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: api_token_basic
configuration = form_api.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = form_api.PDFApi(form_api.ApiClient(configuration))
create_combined_submission_body = form_api.CreateCombinedSubmissionBody() # CreateCombinedSubmissionBody |  (optional)

try:
    # Merge generated PDFs together
    api_response = api_instance.combine_submissions(create_combined_submission_body=create_combined_submission_body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PDFApi->combine_submissions: %s\n" % e)
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **expire_combined_submission**
> InlineResponse201CombinedSubmission expire_combined_submission(combined_submission_id)

Expire a combined submission

### Example
```python
from __future__ import print_function
import time
import form_api
from form_api.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: api_token_basic
configuration = form_api.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = form_api.PDFApi(form_api.ApiClient(configuration))
combined_submission_id = 'combined_submission_id_example' # str |

try:
    # Expire a combined submission
    api_response = api_instance.expire_combined_submission(combined_submission_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PDFApi->expire_combined_submission: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **combined_submission_id** | **str**|  |

### Return type

[**InlineResponse201CombinedSubmission**](InlineResponse201CombinedSubmission.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **expire_submission**
> TemplatestemplateIdsubmissionsbatchSubmission expire_submission(submission_id)

Expire a PDF submission

### Example
```python
from __future__ import print_function
import time
import form_api
from form_api.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: api_token_basic
configuration = form_api.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = form_api.PDFApi(form_api.ApiClient(configuration))
submission_id = 'submission_id_example' # str |

try:
    # Expire a PDF submission
    api_response = api_instance.expire_submission(submission_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PDFApi->expire_submission: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submission_id** | **str**|  |

### Return type

[**TemplatestemplateIdsubmissionsbatchSubmission**](TemplatestemplateIdsubmissionsbatchSubmission.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generate_pdf**
> InlineResponse2011 generate_pdf(template_id, create_submission_body=create_submission_body)

Generates a new PDF

### Example
```python
from __future__ import print_function
import time
import form_api
from form_api.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: api_token_basic
configuration = form_api.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = form_api.PDFApi(form_api.ApiClient(configuration))
template_id = 'template_id_example' # str |
create_submission_body = form_api.CreateSubmissionBody() # CreateSubmissionBody |  (optional)

try:
    # Generates a new PDF
    api_response = api_instance.generate_pdf(template_id, create_submission_body=create_submission_body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PDFApi->generate_pdf: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **str**|  |
 **create_submission_body** | [**CreateSubmissionBody**](CreateSubmissionBody.md)|  | [optional]

### Return type

[**InlineResponse2011**](InlineResponse2011.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_combined_submission**
> InlineResponse201CombinedSubmission get_combined_submission(combined_submission_id)

Check the status of a combined submission (merged PDFs)

### Example
```python
from __future__ import print_function
import time
import form_api
from form_api.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: api_token_basic
configuration = form_api.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = form_api.PDFApi(form_api.ApiClient(configuration))
combined_submission_id = 'combined_submission_id_example' # str |

try:
    # Check the status of a combined submission (merged PDFs)
    api_response = api_instance.get_combined_submission(combined_submission_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PDFApi->get_combined_submission: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **combined_submission_id** | **str**|  |

### Return type

[**InlineResponse201CombinedSubmission**](InlineResponse201CombinedSubmission.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_submission**
> TemplatestemplateIdsubmissionsbatchSubmission get_submission(submission_id)

Check the status of a PDF

### Example
```python
from __future__ import print_function
import time
import form_api
from form_api.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: api_token_basic
configuration = form_api.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = form_api.PDFApi(form_api.ApiClient(configuration))
submission_id = 'submission_id_example' # str |

try:
    # Check the status of a PDF
    api_response = api_instance.get_submission(submission_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PDFApi->get_submission: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submission_id** | **str**|  |

### Return type

[**TemplatestemplateIdsubmissionsbatchSubmission**](TemplatestemplateIdsubmissionsbatchSubmission.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_templates**
> list[InlineResponse2001] get_templates(page=page, per_page=per_page)

Get a list of all templates

### Example
```python
from __future__ import print_function
import time
import form_api
from form_api.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: api_token_basic
configuration = form_api.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = form_api.PDFApi(form_api.ApiClient(configuration))
page = 56 # int | Default: 1 (optional)
per_page = 56 # int | Default: 50 (optional)

try:
    # Get a list of all templates
    api_response = api_instance.get_templates(page=page, per_page=per_page)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PDFApi->get_templates: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Default: 1 | [optional]
 **per_page** | **int**| Default: 50 | [optional]

### Return type

[**list[InlineResponse2001]**](InlineResponse2001.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **test_authentication**
> InlineResponse200 test_authentication()

Test Authentication

### Example
```python
from __future__ import print_function
import time
import form_api
from form_api.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: api_token_basic
configuration = form_api.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = form_api.PDFApi(form_api.ApiClient(configuration))

try:
    # Test Authentication
    api_response = api_instance.test_authentication()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PDFApi->test_authentication: %s\n" % e)
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

