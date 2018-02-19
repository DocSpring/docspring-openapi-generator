# formapi.PDFApi

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
> InlineResponse201 combineSubmissions(opts)

Merge generated PDFs together

### Example
```javascript
import formapi from 'formapi';
let defaultClient = formapi.ApiClient.instance;

// Configure HTTP basic authorization: basic
let basic = defaultClient.authentications['basic'];
basic.username = 'YOUR USERNAME';
basic.password = 'YOUR PASSWORD';

let apiInstance = new formapi.PDFApi();

let opts = { 
  'data': new formapi.Data() // Data | 
};

apiInstance.combineSubmissions(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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
```javascript
import formapi from 'formapi';
let defaultClient = formapi.ApiClient.instance;

// Configure HTTP basic authorization: basic
let basic = defaultClient.authentications['basic'];
basic.username = 'YOUR USERNAME';
basic.password = 'YOUR PASSWORD';

let apiInstance = new formapi.PDFApi();

let combinedSubmissionId = "combinedSubmissionId_example"; // String | 


apiInstance.expireCombinedSubmission(combinedSubmissionId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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
```javascript
import formapi from 'formapi';
let defaultClient = formapi.ApiClient.instance;

// Configure HTTP basic authorization: basic
let basic = defaultClient.authentications['basic'];
basic.username = 'YOUR USERNAME';
basic.password = 'YOUR PASSWORD';

let apiInstance = new formapi.PDFApi();

let submissionId = "submissionId_example"; // String | 


apiInstance.expireSubmission(submissionId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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
> InlineResponse2011 generatePDF(templateId, opts)

Generates a new PDF

### Example
```javascript
import formapi from 'formapi';
let defaultClient = formapi.ApiClient.instance;

// Configure HTTP basic authorization: basic
let basic = defaultClient.authentications['basic'];
basic.username = 'YOUR USERNAME';
basic.password = 'YOUR PASSWORD';

let apiInstance = new formapi.PDFApi();

let templateId = "templateId_example"; // String | 

let opts = { 
  'data': new formapi.Data1() // Data1 | 
};

apiInstance.generatePDF(templateId, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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
```javascript
import formapi from 'formapi';
let defaultClient = formapi.ApiClient.instance;

// Configure HTTP basic authorization: basic
let basic = defaultClient.authentications['basic'];
basic.username = 'YOUR USERNAME';
basic.password = 'YOUR PASSWORD';

let apiInstance = new formapi.PDFApi();

let combinedSubmissionId = "combinedSubmissionId_example"; // String | 


apiInstance.getCombinedSubmission(combinedSubmissionId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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
```javascript
import formapi from 'formapi';
let defaultClient = formapi.ApiClient.instance;

// Configure HTTP basic authorization: basic
let basic = defaultClient.authentications['basic'];
basic.username = 'YOUR USERNAME';
basic.password = 'YOUR PASSWORD';

let apiInstance = new formapi.PDFApi();

let submissionId = "submissionId_example"; // String | 


apiInstance.getSubmission(submissionId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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
```javascript
import formapi from 'formapi';
let defaultClient = formapi.ApiClient.instance;

// Configure HTTP basic authorization: basic
let basic = defaultClient.authentications['basic'];
basic.username = 'YOUR USERNAME';
basic.password = 'YOUR PASSWORD';

let apiInstance = new formapi.PDFApi();

apiInstance.testAuthentication((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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

