# PdfApi

All URIs are relative to *https://app.formapi.io/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**batchGeneratePdfV1**](PdfApi.md#batchGeneratePdfV1) | **POST** templates/{template_id}/submissions/batch | Generates multiple PDFs
[**batchGeneratePdfs**](PdfApi.md#batchGeneratePdfs) | **POST** submissions/batches | Generates multiple PDFs
[**combineSubmissions**](PdfApi.md#combineSubmissions) | **POST** combined_submissions | Merge generated PDFs together
[**createDataRequestToken**](PdfApi.md#createDataRequestToken) | **POST** data_requests/{data_request_id}/tokens | Creates a new data request token for form authentication
[**expireCombinedSubmission**](PdfApi.md#expireCombinedSubmission) | **DELETE** combined_submissions/{combined_submission_id} | Expire a combined submission
[**expireSubmission**](PdfApi.md#expireSubmission) | **DELETE** submissions/{submission_id} | Expire a PDF submission
[**generatePDF**](PdfApi.md#generatePDF) | **POST** templates/{template_id}/submissions | Generates a new PDF
[**getCombinedSubmission**](PdfApi.md#getCombinedSubmission) | **GET** combined_submissions/{combined_submission_id} | Check the status of a combined submission (merged PDFs)
[**getDataRequest**](PdfApi.md#getDataRequest) | **GET** data_requests/{data_request_id} | Look up a submission data request
[**getSubmission**](PdfApi.md#getSubmission) | **GET** submissions/{submission_id} | Check the status of a PDF
[**getSubmissionBatch**](PdfApi.md#getSubmissionBatch) | **GET** submissions/batches/{submission_batch_id} | Check the status of a submission batch job
[**getTemplates**](PdfApi.md#getTemplates) | **GET** templates | Get a list of all templates
[**testAuthentication**](PdfApi.md#testAuthentication) | **GET** authentication | Test Authentication
[**updateDataRequest**](PdfApi.md#updateDataRequest) | **PUT** data_requests/{data_request_id} | Update a submission data request


<a name="batchGeneratePdfV1"></a>
# **batchGeneratePdfV1**
> List&lt;CreateSubmissionResponse&gt; batchGeneratePdfV1(templateId, createSubmissionDataBatchV1)

Generates multiple PDFs

### Example
```java
// Import classes:
//import io.formapi.ApiClient;
//import io.formapi.ApiException;
//import io.formapi.Configuration;
//import io.formapi.auth.*;
//import io.formapi.PdfApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: api_token_basic
HttpBasicAuth api_token_basic = (HttpBasicAuth) defaultClient.getAuthentication("api_token_basic");
api_token_basic.setUsername("YOUR USERNAME");
api_token_basic.setPassword("YOUR PASSWORD");

PdfApi apiInstance = new PdfApi();
String templateId = tpl_000000000000000001; // String | 
List<CreateSubmissionDataBatchV1> createSubmissionDataBatchV1 = Arrays.asList(new List()); // List<CreateSubmissionDataBatchV1> | 
try {
    List<CreateSubmissionResponse> result = apiInstance.batchGeneratePdfV1(templateId, createSubmissionDataBatchV1);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PdfApi#batchGeneratePdfV1");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateId** | **String**|  |
 **createSubmissionDataBatchV1** | [**List&lt;CreateSubmissionDataBatchV1&gt;**](List.md)|  |

### Return type

[**List&lt;CreateSubmissionResponse&gt;**](CreateSubmissionResponse.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="batchGeneratePdfs"></a>
# **batchGeneratePdfs**
> CreateSubmissionBatchResponse batchGeneratePdfs(submissionBatchData)

Generates multiple PDFs

### Example
```java
// Import classes:
//import io.formapi.ApiClient;
//import io.formapi.ApiException;
//import io.formapi.Configuration;
//import io.formapi.auth.*;
//import io.formapi.PdfApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: api_token_basic
HttpBasicAuth api_token_basic = (HttpBasicAuth) defaultClient.getAuthentication("api_token_basic");
api_token_basic.setUsername("YOUR USERNAME");
api_token_basic.setPassword("YOUR PASSWORD");

PdfApi apiInstance = new PdfApi();
SubmissionBatchData submissionBatchData = new SubmissionBatchData(); // SubmissionBatchData | 
try {
    CreateSubmissionBatchResponse result = apiInstance.batchGeneratePdfs(submissionBatchData);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PdfApi#batchGeneratePdfs");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submissionBatchData** | [**SubmissionBatchData**](SubmissionBatchData.md)|  |

### Return type

[**CreateSubmissionBatchResponse**](CreateSubmissionBatchResponse.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="combineSubmissions"></a>
# **combineSubmissions**
> CreateCombinedSubmissionResponse combineSubmissions(combinedSubmissionData)

Merge generated PDFs together

### Example
```java
// Import classes:
//import io.formapi.ApiClient;
//import io.formapi.ApiException;
//import io.formapi.Configuration;
//import io.formapi.auth.*;
//import io.formapi.PdfApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: api_token_basic
HttpBasicAuth api_token_basic = (HttpBasicAuth) defaultClient.getAuthentication("api_token_basic");
api_token_basic.setUsername("YOUR USERNAME");
api_token_basic.setPassword("YOUR PASSWORD");

PdfApi apiInstance = new PdfApi();
CombinedSubmissionData combinedSubmissionData = new CombinedSubmissionData(); // CombinedSubmissionData | 
try {
    CreateCombinedSubmissionResponse result = apiInstance.combineSubmissions(combinedSubmissionData);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PdfApi#combineSubmissions");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **combinedSubmissionData** | [**CombinedSubmissionData**](CombinedSubmissionData.md)|  |

### Return type

[**CreateCombinedSubmissionResponse**](CreateCombinedSubmissionResponse.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="createDataRequestToken"></a>
# **createDataRequestToken**
> CreateSubmissionDataRequestTokenResponse createDataRequestToken(dataRequestId)

Creates a new data request token for form authentication

### Example
```java
// Import classes:
//import io.formapi.ApiClient;
//import io.formapi.ApiException;
//import io.formapi.Configuration;
//import io.formapi.auth.*;
//import io.formapi.PdfApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: api_token_basic
HttpBasicAuth api_token_basic = (HttpBasicAuth) defaultClient.getAuthentication("api_token_basic");
api_token_basic.setUsername("YOUR USERNAME");
api_token_basic.setPassword("YOUR PASSWORD");

PdfApi apiInstance = new PdfApi();
String dataRequestId = drq_000000000000000001; // String | 
try {
    CreateSubmissionDataRequestTokenResponse result = apiInstance.createDataRequestToken(dataRequestId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PdfApi#createDataRequestToken");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataRequestId** | **String**|  |

### Return type

[**CreateSubmissionDataRequestTokenResponse**](CreateSubmissionDataRequestTokenResponse.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="expireCombinedSubmission"></a>
# **expireCombinedSubmission**
> CombinedSubmission expireCombinedSubmission(combinedSubmissionId)

Expire a combined submission

### Example
```java
// Import classes:
//import io.formapi.ApiClient;
//import io.formapi.ApiException;
//import io.formapi.Configuration;
//import io.formapi.auth.*;
//import io.formapi.PdfApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: api_token_basic
HttpBasicAuth api_token_basic = (HttpBasicAuth) defaultClient.getAuthentication("api_token_basic");
api_token_basic.setUsername("YOUR USERNAME");
api_token_basic.setPassword("YOUR PASSWORD");

PdfApi apiInstance = new PdfApi();
String combinedSubmissionId = com_000000000000000001; // String | 
try {
    CombinedSubmission result = apiInstance.expireCombinedSubmission(combinedSubmissionId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PdfApi#expireCombinedSubmission");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **combinedSubmissionId** | **String**|  |

### Return type

[**CombinedSubmission**](CombinedSubmission.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="expireSubmission"></a>
# **expireSubmission**
> Submission expireSubmission(submissionId)

Expire a PDF submission

### Example
```java
// Import classes:
//import io.formapi.ApiClient;
//import io.formapi.ApiException;
//import io.formapi.Configuration;
//import io.formapi.auth.*;
//import io.formapi.PdfApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: api_token_basic
HttpBasicAuth api_token_basic = (HttpBasicAuth) defaultClient.getAuthentication("api_token_basic");
api_token_basic.setUsername("YOUR USERNAME");
api_token_basic.setPassword("YOUR PASSWORD");

PdfApi apiInstance = new PdfApi();
String submissionId = sub_000000000000000001; // String | 
try {
    Submission result = apiInstance.expireSubmission(submissionId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PdfApi#expireSubmission");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submissionId** | **String**|  |

### Return type

[**Submission**](Submission.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="generatePDF"></a>
# **generatePDF**
> CreateSubmissionResponse generatePDF(templateId, createSubmissionData)

Generates a new PDF

### Example
```java
// Import classes:
//import io.formapi.ApiClient;
//import io.formapi.ApiException;
//import io.formapi.Configuration;
//import io.formapi.auth.*;
//import io.formapi.PdfApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: api_token_basic
HttpBasicAuth api_token_basic = (HttpBasicAuth) defaultClient.getAuthentication("api_token_basic");
api_token_basic.setUsername("YOUR USERNAME");
api_token_basic.setPassword("YOUR PASSWORD");

PdfApi apiInstance = new PdfApi();
String templateId = tpl_000000000000000001; // String | 
CreateSubmissionData createSubmissionData = new CreateSubmissionData(); // CreateSubmissionData | 
try {
    CreateSubmissionResponse result = apiInstance.generatePDF(templateId, createSubmissionData);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PdfApi#generatePDF");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateId** | **String**|  |
 **createSubmissionData** | [**CreateSubmissionData**](CreateSubmissionData.md)|  |

### Return type

[**CreateSubmissionResponse**](CreateSubmissionResponse.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getCombinedSubmission"></a>
# **getCombinedSubmission**
> CombinedSubmission getCombinedSubmission(combinedSubmissionId)

Check the status of a combined submission (merged PDFs)

### Example
```java
// Import classes:
//import io.formapi.ApiClient;
//import io.formapi.ApiException;
//import io.formapi.Configuration;
//import io.formapi.auth.*;
//import io.formapi.PdfApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: api_token_basic
HttpBasicAuth api_token_basic = (HttpBasicAuth) defaultClient.getAuthentication("api_token_basic");
api_token_basic.setUsername("YOUR USERNAME");
api_token_basic.setPassword("YOUR PASSWORD");

PdfApi apiInstance = new PdfApi();
String combinedSubmissionId = com_000000000000000001; // String | 
try {
    CombinedSubmission result = apiInstance.getCombinedSubmission(combinedSubmissionId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PdfApi#getCombinedSubmission");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **combinedSubmissionId** | **String**|  |

### Return type

[**CombinedSubmission**](CombinedSubmission.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getDataRequest"></a>
# **getDataRequest**
> SubmissionDataRequest getDataRequest(dataRequestId)

Look up a submission data request

### Example
```java
// Import classes:
//import io.formapi.ApiClient;
//import io.formapi.ApiException;
//import io.formapi.Configuration;
//import io.formapi.auth.*;
//import io.formapi.PdfApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: api_token_basic
HttpBasicAuth api_token_basic = (HttpBasicAuth) defaultClient.getAuthentication("api_token_basic");
api_token_basic.setUsername("YOUR USERNAME");
api_token_basic.setPassword("YOUR PASSWORD");

PdfApi apiInstance = new PdfApi();
String dataRequestId = drq_000000000000000001; // String | 
try {
    SubmissionDataRequest result = apiInstance.getDataRequest(dataRequestId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PdfApi#getDataRequest");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataRequestId** | **String**|  |

### Return type

[**SubmissionDataRequest**](SubmissionDataRequest.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getSubmission"></a>
# **getSubmission**
> Submission getSubmission(submissionId)

Check the status of a PDF

### Example
```java
// Import classes:
//import io.formapi.ApiClient;
//import io.formapi.ApiException;
//import io.formapi.Configuration;
//import io.formapi.auth.*;
//import io.formapi.PdfApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: api_token_basic
HttpBasicAuth api_token_basic = (HttpBasicAuth) defaultClient.getAuthentication("api_token_basic");
api_token_basic.setUsername("YOUR USERNAME");
api_token_basic.setPassword("YOUR PASSWORD");

PdfApi apiInstance = new PdfApi();
String submissionId = sub_000000000000000001; // String | 
try {
    Submission result = apiInstance.getSubmission(submissionId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PdfApi#getSubmission");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submissionId** | **String**|  |

### Return type

[**Submission**](Submission.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getSubmissionBatch"></a>
# **getSubmissionBatch**
> SubmissionBatch getSubmissionBatch(submissionBatchId, includeSubmissions)

Check the status of a submission batch job

### Example
```java
// Import classes:
//import io.formapi.ApiClient;
//import io.formapi.ApiException;
//import io.formapi.Configuration;
//import io.formapi.auth.*;
//import io.formapi.PdfApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: api_token_basic
HttpBasicAuth api_token_basic = (HttpBasicAuth) defaultClient.getAuthentication("api_token_basic");
api_token_basic.setUsername("YOUR USERNAME");
api_token_basic.setPassword("YOUR PASSWORD");

PdfApi apiInstance = new PdfApi();
String submissionBatchId = sba_000000000000000001; // String | 
Boolean includeSubmissions = true; // Boolean | 
try {
    SubmissionBatch result = apiInstance.getSubmissionBatch(submissionBatchId, includeSubmissions);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PdfApi#getSubmissionBatch");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submissionBatchId** | **String**|  |
 **includeSubmissions** | **Boolean**|  | [optional]

### Return type

[**SubmissionBatch**](SubmissionBatch.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getTemplates"></a>
# **getTemplates**
> List&lt;Template&gt; getTemplates(page, perPage)

Get a list of all templates

### Example
```java
// Import classes:
//import io.formapi.ApiClient;
//import io.formapi.ApiException;
//import io.formapi.Configuration;
//import io.formapi.auth.*;
//import io.formapi.PdfApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: api_token_basic
HttpBasicAuth api_token_basic = (HttpBasicAuth) defaultClient.getAuthentication("api_token_basic");
api_token_basic.setUsername("YOUR USERNAME");
api_token_basic.setPassword("YOUR PASSWORD");

PdfApi apiInstance = new PdfApi();
Integer page = 2; // Integer | Default: 1
Integer perPage = 1; // Integer | Default: 50
try {
    List<Template> result = apiInstance.getTemplates(page, perPage);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PdfApi#getTemplates");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Default: 1 | [optional]
 **perPage** | **Integer**| Default: 50 | [optional]

### Return type

[**List&lt;Template&gt;**](Template.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="testAuthentication"></a>
# **testAuthentication**
> AuthenticationSuccessResponse testAuthentication()

Test Authentication

### Example
```java
// Import classes:
//import io.formapi.ApiClient;
//import io.formapi.ApiException;
//import io.formapi.Configuration;
//import io.formapi.auth.*;
//import io.formapi.PdfApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: api_token_basic
HttpBasicAuth api_token_basic = (HttpBasicAuth) defaultClient.getAuthentication("api_token_basic");
api_token_basic.setUsername("YOUR USERNAME");
api_token_basic.setPassword("YOUR PASSWORD");

PdfApi apiInstance = new PdfApi();
try {
    AuthenticationSuccessResponse result = apiInstance.testAuthentication();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PdfApi#testAuthentication");
    e.printStackTrace();
}
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

<a name="updateDataRequest"></a>
# **updateDataRequest**
> UpdateDataRequestResponse updateDataRequest(dataRequestId, updateSubmissionDataRequestData)

Update a submission data request

### Example
```java
// Import classes:
//import io.formapi.ApiClient;
//import io.formapi.ApiException;
//import io.formapi.Configuration;
//import io.formapi.auth.*;
//import io.formapi.PdfApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: api_token_basic
HttpBasicAuth api_token_basic = (HttpBasicAuth) defaultClient.getAuthentication("api_token_basic");
api_token_basic.setUsername("YOUR USERNAME");
api_token_basic.setPassword("YOUR PASSWORD");

PdfApi apiInstance = new PdfApi();
String dataRequestId = drq_000000000000000001; // String | 
UpdateSubmissionDataRequestData updateSubmissionDataRequestData = new UpdateSubmissionDataRequestData(); // UpdateSubmissionDataRequestData | 
try {
    UpdateDataRequestResponse result = apiInstance.updateDataRequest(dataRequestId, updateSubmissionDataRequestData);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PdfApi#updateDataRequest");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataRequestId** | **String**|  |
 **updateSubmissionDataRequestData** | [**UpdateSubmissionDataRequestData**](UpdateSubmissionDataRequestData.md)|  |

### Return type

[**UpdateDataRequestResponse**](UpdateDataRequestResponse.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

