# PDFApi

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


<a name="combineSubmissions"></a>
# **combineSubmissions**
> InlineResponse201 combineSubmissions(data)

Merge generated PDFs together

### Example
```java
// Import classes:
//import io.formapi.ApiClient;
//import io.formapi.ApiException;
//import io.formapi.Configuration;
//import io.formapi.auth.*;
//import io.formapi.PDFApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: basic
HttpBasicAuth basic = (HttpBasicAuth) defaultClient.getAuthentication("basic");
basic.setUsername("YOUR USERNAME");
basic.setPassword("YOUR PASSWORD");

PDFApi apiInstance = new PDFApi();
Data data = new Data(); // Data | 
try {
    InlineResponse201 result = apiInstance.combineSubmissions(data);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PDFApi#combineSubmissions");
    e.printStackTrace();
}
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

<a name="expireCombinedSubmission"></a>
# **expireCombinedSubmission**
> InlineResponse201CombinedSubmission expireCombinedSubmission(combinedSubmissionId)

Expire a combined submission

### Example
```java
// Import classes:
//import io.formapi.ApiClient;
//import io.formapi.ApiException;
//import io.formapi.Configuration;
//import io.formapi.auth.*;
//import io.formapi.PDFApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: basic
HttpBasicAuth basic = (HttpBasicAuth) defaultClient.getAuthentication("basic");
basic.setUsername("YOUR USERNAME");
basic.setPassword("YOUR PASSWORD");

PDFApi apiInstance = new PDFApi();
String combinedSubmissionId = "combinedSubmissionId_example"; // String | 
try {
    InlineResponse201CombinedSubmission result = apiInstance.expireCombinedSubmission(combinedSubmissionId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PDFApi#expireCombinedSubmission");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **combinedSubmissionId** | **String**|  |

### Return type

[**InlineResponse201CombinedSubmission**](InlineResponse201CombinedSubmission.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="expireSubmission"></a>
# **expireSubmission**
> InlineResponse2011Submission expireSubmission(submissionId)

Expire a PDF submission

### Example
```java
// Import classes:
//import io.formapi.ApiClient;
//import io.formapi.ApiException;
//import io.formapi.Configuration;
//import io.formapi.auth.*;
//import io.formapi.PDFApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: basic
HttpBasicAuth basic = (HttpBasicAuth) defaultClient.getAuthentication("basic");
basic.setUsername("YOUR USERNAME");
basic.setPassword("YOUR PASSWORD");

PDFApi apiInstance = new PDFApi();
String submissionId = "submissionId_example"; // String | 
try {
    InlineResponse2011Submission result = apiInstance.expireSubmission(submissionId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PDFApi#expireSubmission");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submissionId** | **String**|  |

### Return type

[**InlineResponse2011Submission**](InlineResponse2011Submission.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="generatePDF"></a>
# **generatePDF**
> InlineResponse2011 generatePDF(templateId, data)

Generates a new PDF

### Example
```java
// Import classes:
//import io.formapi.ApiClient;
//import io.formapi.ApiException;
//import io.formapi.Configuration;
//import io.formapi.auth.*;
//import io.formapi.PDFApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: basic
HttpBasicAuth basic = (HttpBasicAuth) defaultClient.getAuthentication("basic");
basic.setUsername("YOUR USERNAME");
basic.setPassword("YOUR PASSWORD");

PDFApi apiInstance = new PDFApi();
String templateId = "templateId_example"; // String | 
Data1 data = new Data1(); // Data1 | 
try {
    InlineResponse2011 result = apiInstance.generatePDF(templateId, data);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PDFApi#generatePDF");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateId** | **String**|  |
 **data** | [**Data1**](Data1.md)|  | [optional]

### Return type

[**InlineResponse2011**](InlineResponse2011.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getCombinedSubmission"></a>
# **getCombinedSubmission**
> InlineResponse201CombinedSubmission getCombinedSubmission(combinedSubmissionId)

Check the status of a combined submission (merged PDFs)

### Example
```java
// Import classes:
//import io.formapi.ApiClient;
//import io.formapi.ApiException;
//import io.formapi.Configuration;
//import io.formapi.auth.*;
//import io.formapi.PDFApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: basic
HttpBasicAuth basic = (HttpBasicAuth) defaultClient.getAuthentication("basic");
basic.setUsername("YOUR USERNAME");
basic.setPassword("YOUR PASSWORD");

PDFApi apiInstance = new PDFApi();
String combinedSubmissionId = "combinedSubmissionId_example"; // String | 
try {
    InlineResponse201CombinedSubmission result = apiInstance.getCombinedSubmission(combinedSubmissionId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PDFApi#getCombinedSubmission");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **combinedSubmissionId** | **String**|  |

### Return type

[**InlineResponse201CombinedSubmission**](InlineResponse201CombinedSubmission.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getSubmission"></a>
# **getSubmission**
> InlineResponse2011Submission getSubmission(submissionId)

Check the status of a PDF

### Example
```java
// Import classes:
//import io.formapi.ApiClient;
//import io.formapi.ApiException;
//import io.formapi.Configuration;
//import io.formapi.auth.*;
//import io.formapi.PDFApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: basic
HttpBasicAuth basic = (HttpBasicAuth) defaultClient.getAuthentication("basic");
basic.setUsername("YOUR USERNAME");
basic.setPassword("YOUR PASSWORD");

PDFApi apiInstance = new PDFApi();
String submissionId = "submissionId_example"; // String | 
try {
    InlineResponse2011Submission result = apiInstance.getSubmission(submissionId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PDFApi#getSubmission");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submissionId** | **String**|  |

### Return type

[**InlineResponse2011Submission**](InlineResponse2011Submission.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="testAuthentication"></a>
# **testAuthentication**
> InlineResponse200 testAuthentication()

Test Authentication

### Example
```java
// Import classes:
//import io.formapi.ApiClient;
//import io.formapi.ApiException;
//import io.formapi.Configuration;
//import io.formapi.auth.*;
//import io.formapi.PDFApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: basic
HttpBasicAuth basic = (HttpBasicAuth) defaultClient.getAuthentication("basic");
basic.setUsername("YOUR USERNAME");
basic.setPassword("YOUR PASSWORD");

PDFApi apiInstance = new PDFApi();
try {
    InlineResponse200 result = apiInstance.testAuthentication();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PDFApi#testAuthentication");
    e.printStackTrace();
}
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

