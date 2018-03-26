# form_api.PDFApi

All URIs are relative to *https://app.formapi.io/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**combine_submissions**](PDFApi.md#combine_submissions) | **POST** /combined_submissions | Merge generated PDFs together
[**expire_combined_submission**](PDFApi.md#expire_combined_submission) | **DELETE** /combined_submissions/{combined_submission_id} | Expire a combined submission
[**expire_submission**](PDFApi.md#expire_submission) | **DELETE** /submissions/{submission_id} | Expire a PDF submission
[**generate_pdf**](PDFApi.md#generate_pdf) | **POST** /templates/{template_id}/submissions | Generates a new PDF
[**get_combined_submission**](PDFApi.md#get_combined_submission) | **GET** /combined_submissions/{combined_submission_id} | Check the status of a combined submission (merged PDFs)
[**get_submission**](PDFApi.md#get_submission) | **GET** /submissions/{submission_id} | Check the status of a PDF
[**test_authentication**](PDFApi.md#test_authentication) | **GET** /authentication | Test Authentication


# **combine_submissions**
> InlineResponse201 combine_submissions(data=data)

Merge generated PDFs together

### Example
```python
from __future__ import print_function
import time
import form_api
from form_api.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: basic
configuration = form_api.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = form_api.PDFApi(form_api.ApiClient(configuration))
data = form_api.Data() # Data |  (optional)

try:
    # Merge generated PDFs together
    api_response = api_instance.combine_submissions(data=data)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PDFApi->combine_submissions: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**Data**](Data.md)|  | [optional]

### Return type

[**InlineResponse201**](InlineResponse201.md)

### Authorization

[basic](../README.md#basic)

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

# Configure HTTP basic authorization: basic
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

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **expire_submission**
> InlineResponse2011Submission expire_submission(submission_id)

Expire a PDF submission

### Example
```python
from __future__ import print_function
import time
import form_api
from form_api.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: basic
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

[**InlineResponse2011Submission**](InlineResponse2011Submission.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generate_pdf**
> InlineResponse2011 generate_pdf(template_id, data=data)

Generates a new PDF

### Example
```python
from __future__ import print_function
import time
import form_api
from form_api.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: basic
configuration = form_api.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = form_api.PDFApi(form_api.ApiClient(configuration))
template_id = 'template_id_example' # str |
data = form_api.Data1() # Data1 |  (optional)

try:
    # Generates a new PDF
    api_response = api_instance.generate_pdf(template_id, data=data)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PDFApi->generate_pdf: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **str**|  |
 **data** | [**Data1**](Data1.md)|  | [optional]

### Return type

[**InlineResponse2011**](InlineResponse2011.md)

### Authorization

[basic](../README.md#basic)

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

# Configure HTTP basic authorization: basic
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

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_submission**
> InlineResponse2011Submission get_submission(submission_id)

Check the status of a PDF

### Example
```python
from __future__ import print_function
import time
import form_api
from form_api.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: basic
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

[**InlineResponse2011Submission**](InlineResponse2011Submission.md)

### Authorization

[basic](../README.md#basic)

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

# Configure HTTP basic authorization: basic
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

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

