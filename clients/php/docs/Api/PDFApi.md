# FormAPI\PDFApi

All URIs are relative to *https://app.formapi.io/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**combineSubmissions**](PDFApi.md#combineSubmissions) | **POST** /combined_submissions | Merge generated PDFs together
[**expireCombinedSubmission**](PDFApi.md#expireCombinedSubmission) | **DELETE** /combined_submissions/{combined_submission_id} | Expire a combined submission
[**expireSubmission**](PDFApi.md#expireSubmission) | **DELETE** /submissions/{submission_id} | Expire a PDF submission
[**generatePDF**](PDFApi.md#generatePDF) | **POST** /templates/{template_id}/submissions | Generates a new PDF
[**getCombinedSubmission**](PDFApi.md#getCombinedSubmission) | **GET** /combined_submissions/{combined_submission_id} | Check the status of a combined submission (merged PDFs)
[**getSubmission**](PDFApi.md#getSubmission) | **GET** /submissions/{submission_id} | Check the status of a PDF
[**testAuthentication**](PDFApi.md#testAuthentication) | **GET** /authentication | Test Authentication


# **combineSubmissions**
> \FormAPI\Model\InlineResponse201 combineSubmissions($create_combined_submission_body)

Merge generated PDFs together

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: basic
FormAPI\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
FormAPI\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new FormAPI\Api\PDFApi(new \Http\Adapter\Guzzle6\Client());
$create_combined_submission_body = new \FormAPI\Model\CreateCombinedSubmissionBody(); // \FormAPI\Model\CreateCombinedSubmissionBody |

try {
    $result = $api_instance->combineSubmissions($create_combined_submission_body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PDFApi->combineSubmissions: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_combined_submission_body** | [**\FormAPI\Model\CreateCombinedSubmissionBody**](../Model/CreateCombinedSubmissionBody.md)|  | [optional]

### Return type

[**\FormAPI\Model\InlineResponse201**](../Model/InlineResponse201.md)

### Authorization

[basic](../../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **expireCombinedSubmission**
> \FormAPI\Model\InlineResponse201CombinedSubmission expireCombinedSubmission($combined_submission_id)

Expire a combined submission

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: basic
FormAPI\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
FormAPI\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new FormAPI\Api\PDFApi(new \Http\Adapter\Guzzle6\Client());
$combined_submission_id = "combined_submission_id_example"; // string |

try {
    $result = $api_instance->expireCombinedSubmission($combined_submission_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PDFApi->expireCombinedSubmission: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **combined_submission_id** | **string**|  |

### Return type

[**\FormAPI\Model\InlineResponse201CombinedSubmission**](../Model/InlineResponse201CombinedSubmission.md)

### Authorization

[basic](../../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **expireSubmission**
> \FormAPI\Model\InlineResponse2011Submission expireSubmission($submission_id)

Expire a PDF submission

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: basic
FormAPI\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
FormAPI\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new FormAPI\Api\PDFApi(new \Http\Adapter\Guzzle6\Client());
$submission_id = "submission_id_example"; // string |

try {
    $result = $api_instance->expireSubmission($submission_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PDFApi->expireSubmission: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submission_id** | **string**|  |

### Return type

[**\FormAPI\Model\InlineResponse2011Submission**](../Model/InlineResponse2011Submission.md)

### Authorization

[basic](../../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **generatePDF**
> \FormAPI\Model\InlineResponse2011 generatePDF($template_id, $create_submission_body)

Generates a new PDF

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: basic
FormAPI\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
FormAPI\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new FormAPI\Api\PDFApi(new \Http\Adapter\Guzzle6\Client());
$template_id = "template_id_example"; // string |
$create_submission_body = new \FormAPI\Model\CreateSubmissionBody(); // \FormAPI\Model\CreateSubmissionBody |

try {
    $result = $api_instance->generatePDF($template_id, $create_submission_body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PDFApi->generatePDF: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **string**|  |
 **create_submission_body** | [**\FormAPI\Model\CreateSubmissionBody**](../Model/CreateSubmissionBody.md)|  | [optional]

### Return type

[**\FormAPI\Model\InlineResponse2011**](../Model/InlineResponse2011.md)

### Authorization

[basic](../../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getCombinedSubmission**
> \FormAPI\Model\InlineResponse201CombinedSubmission getCombinedSubmission($combined_submission_id)

Check the status of a combined submission (merged PDFs)

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: basic
FormAPI\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
FormAPI\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new FormAPI\Api\PDFApi(new \Http\Adapter\Guzzle6\Client());
$combined_submission_id = "combined_submission_id_example"; // string |

try {
    $result = $api_instance->getCombinedSubmission($combined_submission_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PDFApi->getCombinedSubmission: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **combined_submission_id** | **string**|  |

### Return type

[**\FormAPI\Model\InlineResponse201CombinedSubmission**](../Model/InlineResponse201CombinedSubmission.md)

### Authorization

[basic](../../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getSubmission**
> \FormAPI\Model\InlineResponse2011Submission getSubmission($submission_id)

Check the status of a PDF

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: basic
FormAPI\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
FormAPI\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new FormAPI\Api\PDFApi(new \Http\Adapter\Guzzle6\Client());
$submission_id = "submission_id_example"; // string |

try {
    $result = $api_instance->getSubmission($submission_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PDFApi->getSubmission: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submission_id** | **string**|  |

### Return type

[**\FormAPI\Model\InlineResponse2011Submission**](../Model/InlineResponse2011Submission.md)

### Authorization

[basic](../../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **testAuthentication**
> \FormAPI\Model\InlineResponse200 testAuthentication()

Test Authentication

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: basic
FormAPI\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
FormAPI\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new FormAPI\Api\PDFApi(new \Http\Adapter\Guzzle6\Client());

try {
    $result = $api_instance->testAuthentication();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PDFApi->testAuthentication: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\FormAPI\Model\InlineResponse200**](../Model/InlineResponse200.md)

### Authorization

[basic](../../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

