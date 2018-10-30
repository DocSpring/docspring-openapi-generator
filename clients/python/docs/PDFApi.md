# form_api.PDFApi

All URIs are relative to *https://app.formapi.io/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**batch_generate_pdf_v1**](PDFApi.md#batch_generate_pdf_v1) | **POST** /templates/{template_id}/submissions/batch | Generates multiple PDFs
[**batch_generate_pdfs**](PDFApi.md#batch_generate_pdfs) | **POST** /submissions/batches | Generates multiple PDFs
[**combine_submissions**](PDFApi.md#combine_submissions) | **POST** /combined_submissions | Merge generated PDFs together
[**create_data_request_token**](PDFApi.md#create_data_request_token) | **POST** /data_requests/{data_request_id}/tokens | Creates a new data request token for form authentication
[**expire_combined_submission**](PDFApi.md#expire_combined_submission) | **DELETE** /combined_submissions/{combined_submission_id} | Expire a combined submission
[**expire_submission**](PDFApi.md#expire_submission) | **DELETE** /submissions/{submission_id} | Expire a PDF submission
[**generate_pdf**](PDFApi.md#generate_pdf) | **POST** /templates/{template_id}/submissions | Generates a new PDF
[**get_combined_submission**](PDFApi.md#get_combined_submission) | **GET** /combined_submissions/{combined_submission_id} | Check the status of a combined submission (merged PDFs)
[**get_data_request**](PDFApi.md#get_data_request) | **GET** /data_requests/{data_request_id} | Look up a submission data request
[**get_submission**](PDFApi.md#get_submission) | **GET** /submissions/{submission_id} | Check the status of a PDF
[**get_submission_batch**](PDFApi.md#get_submission_batch) | **GET** /submissions/batches/{submission_batch_id} | Check the status of a submission batch job
[**get_templates**](PDFApi.md#get_templates) | **GET** /templates | Get a list of all templates
[**test_authentication**](PDFApi.md#test_authentication) | **GET** /authentication | Test Authentication
[**update_data_request**](PDFApi.md#update_data_request) | **PUT** /data_requests/{data_request_id} | Update a submission data request


# **batch_generate_pdf_v1**
> list[CreateSubmissionResponse] batch_generate_pdf_v1(template_id, create_submission_data_batch_v1)

Generates multiple PDFs

### Example

* Basic Authentication (api_token_basic): 
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
template_id = 'tpl_000000000000000001' # str | 
create_submission_data_batch_v1 = NULL # list[CreateSubmissionDataBatchV1] | 

try:
    # Generates multiple PDFs
    api_response = api_instance.batch_generate_pdf_v1(template_id, create_submission_data_batch_v1)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PDFApi->batch_generate_pdf_v1: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **str**|  | 
 **create_submission_data_batch_v1** | [**list[CreateSubmissionDataBatchV1]**](list.md)|  | 

### Return type

[**list[CreateSubmissionResponse]**](CreateSubmissionResponse.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **batch_generate_pdfs**
> CreateSubmissionBatchResponse batch_generate_pdfs(submission_batch_data)

Generates multiple PDFs

### Example

* Basic Authentication (api_token_basic): 
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
submission_batch_data = form_api.SubmissionBatchData() # SubmissionBatchData | 

try:
    # Generates multiple PDFs
    api_response = api_instance.batch_generate_pdfs(submission_batch_data)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PDFApi->batch_generate_pdfs: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submission_batch_data** | [**SubmissionBatchData**](SubmissionBatchData.md)|  | 

### Return type

[**CreateSubmissionBatchResponse**](CreateSubmissionBatchResponse.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **combine_submissions**
> CreateCombinedSubmissionResponse combine_submissions(combined_submission_data)

Merge generated PDFs together

### Example

* Basic Authentication (api_token_basic): 
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
combined_submission_data = form_api.CombinedSubmissionData() # CombinedSubmissionData | 

try:
    # Merge generated PDFs together
    api_response = api_instance.combine_submissions(combined_submission_data)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PDFApi->combine_submissions: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **combined_submission_data** | [**CombinedSubmissionData**](CombinedSubmissionData.md)|  | 

### Return type

[**CreateCombinedSubmissionResponse**](CreateCombinedSubmissionResponse.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_data_request_token**
> CreateSubmissionDataRequestTokenResponse create_data_request_token(data_request_id)

Creates a new data request token for form authentication

### Example

* Basic Authentication (api_token_basic): 
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
data_request_id = 'drq_000000000000000001' # str | 

try:
    # Creates a new data request token for form authentication
    api_response = api_instance.create_data_request_token(data_request_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PDFApi->create_data_request_token: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data_request_id** | **str**|  | 

### Return type

[**CreateSubmissionDataRequestTokenResponse**](CreateSubmissionDataRequestTokenResponse.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **expire_combined_submission**
> CombinedSubmission expire_combined_submission(combined_submission_id)

Expire a combined submission

### Example

* Basic Authentication (api_token_basic): 
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
combined_submission_id = 'com_000000000000000001' # str | 

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

[**CombinedSubmission**](CombinedSubmission.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **expire_submission**
> Submission expire_submission(submission_id)

Expire a PDF submission

### Example

* Basic Authentication (api_token_basic): 
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
submission_id = 'sub_000000000000000001' # str | 

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

[**Submission**](Submission.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generate_pdf**
> CreateSubmissionResponse generate_pdf(template_id, create_submission_data)

Generates a new PDF

### Example

* Basic Authentication (api_token_basic): 
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
template_id = 'tpl_000000000000000001' # str | 
create_submission_data = form_api.CreateSubmissionData() # CreateSubmissionData | 

try:
    # Generates a new PDF
    api_response = api_instance.generate_pdf(template_id, create_submission_data)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PDFApi->generate_pdf: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **str**|  | 
 **create_submission_data** | [**CreateSubmissionData**](CreateSubmissionData.md)|  | 

### Return type

[**CreateSubmissionResponse**](CreateSubmissionResponse.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_combined_submission**
> CombinedSubmission get_combined_submission(combined_submission_id)

Check the status of a combined submission (merged PDFs)

### Example

* Basic Authentication (api_token_basic): 
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
combined_submission_id = 'com_000000000000000001' # str | 

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

[**CombinedSubmission**](CombinedSubmission.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_data_request**
> SubmissionDataRequest get_data_request(data_request_id)

Look up a submission data request

### Example

* Basic Authentication (api_token_basic): 
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
data_request_id = 'drq_000000000000000001' # str | 

try:
    # Look up a submission data request
    api_response = api_instance.get_data_request(data_request_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PDFApi->get_data_request: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data_request_id** | **str**|  | 

### Return type

[**SubmissionDataRequest**](SubmissionDataRequest.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_submission**
> Submission get_submission(submission_id)

Check the status of a PDF

### Example

* Basic Authentication (api_token_basic): 
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
submission_id = 'sub_000000000000000001' # str | 

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

[**Submission**](Submission.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_submission_batch**
> SubmissionBatch get_submission_batch(submission_batch_id, include_submissions=include_submissions)

Check the status of a submission batch job

### Example

* Basic Authentication (api_token_basic): 
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
submission_batch_id = 'sba_000000000000000001' # str | 
include_submissions = true # bool |  (optional)

try:
    # Check the status of a submission batch job
    api_response = api_instance.get_submission_batch(submission_batch_id, include_submissions=include_submissions)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PDFApi->get_submission_batch: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submission_batch_id** | **str**|  | 
 **include_submissions** | **bool**|  | [optional] 

### Return type

[**SubmissionBatch**](SubmissionBatch.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_templates**
> list[Template] get_templates(page=page, per_page=per_page)

Get a list of all templates

### Example

* Basic Authentication (api_token_basic): 
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
page = 2 # int | Default: 1 (optional)
per_page = 1 # int | Default: 50 (optional)

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

[**list[Template]**](Template.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **test_authentication**
> AuthenticationSuccessResponse test_authentication()

Test Authentication

### Example

* Basic Authentication (api_token_basic): 
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

[**AuthenticationSuccessResponse**](AuthenticationSuccessResponse.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_data_request**
> UpdateDataRequestResponse update_data_request(data_request_id, update_submission_data_request_data)

Update a submission data request

### Example

* Basic Authentication (api_token_basic): 
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
data_request_id = 'drq_000000000000000001' # str | 
update_submission_data_request_data = form_api.UpdateSubmissionDataRequestData() # UpdateSubmissionDataRequestData | 

try:
    # Update a submission data request
    api_response = api_instance.update_data_request(data_request_id, update_submission_data_request_data)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PDFApi->update_data_request: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data_request_id** | **str**|  | 
 **update_submission_data_request_data** | [**UpdateSubmissionDataRequestData**](UpdateSubmissionDataRequestData.md)|  | 

### Return type

[**UpdateDataRequestResponse**](UpdateDataRequestResponse.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

