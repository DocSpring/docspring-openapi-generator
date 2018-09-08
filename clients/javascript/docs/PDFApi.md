# FormAPI.PDFApi

All URIs are relative to *https://app.formapi.io/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**batchGeneratePDF**](PDFApi.md#batchGeneratePDF) | **POST** /templates/{template_id}/submissions/batch | Generates multiple PDFs
[**combineSubmissions**](PDFApi.md#combineSubmissions) | **POST** /combined_submissions | Merge generated PDFs together
[**expireCombinedSubmission**](PDFApi.md#expireCombinedSubmission) | **DELETE** /combined_submissions/{combined_submission_id} | Expire a combined submission
[**expireSubmission**](PDFApi.md#expireSubmission) | **DELETE** /submissions/{submission_id} | Expire a PDF submission
[**generatePDF**](PDFApi.md#generatePDF) | **POST** /templates/{template_id}/submissions | Generates a new PDF
[**getCombinedSubmission**](PDFApi.md#getCombinedSubmission) | **GET** /combined_submissions/{combined_submission_id} | Check the status of a combined submission (merged PDFs)
[**getSubmission**](PDFApi.md#getSubmission) | **GET** /submissions/{submission_id} | Check the status of a PDF
[**getTemplates**](PDFApi.md#getTemplates) | **GET** /templates | Get a list of all templates
[**testAuthentication**](PDFApi.md#testAuthentication) | **GET** /authentication | Test Authentication


<a name="batchGeneratePDF"></a>
# **batchGeneratePDF**
> [CreateSubmissionResponse] batchGeneratePDF(templateId, createSubmissionData)

Generates multiple PDFs

### Example
```javascript
var FormAPI = require('@formapi/formapi');
var defaultClient = FormAPI.ApiClient.instance;

// Configure HTTP basic authorization: api_token_basic
var api_token_basic = defaultClient.authentications['api_token_basic'];
api_token_basic.username = 'YOUR USERNAME';
api_token_basic.password = 'YOUR PASSWORD';

var apiInstance = new FormAPI.PDFApi();
var templateId = tpl_000000000000000001; // String | 
var createSubmissionData = [new FormAPI.CreateSubmissionData()]; // [CreateSubmissionData] | 
var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.batchGeneratePDF(templateId, createSubmissionData, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateId** | **String**|  | 
 **createSubmissionData** | [**[CreateSubmissionData]**](Array.md)|  | 

### Return type

[**[CreateSubmissionResponse]**](CreateSubmissionResponse.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="combineSubmissions"></a>
# **combineSubmissions**
> CreateCombinedSubmissionResponse combineSubmissions(opts)

Merge generated PDFs together

### Example
```javascript
var FormAPI = require('@formapi/formapi');
var defaultClient = FormAPI.ApiClient.instance;

// Configure HTTP basic authorization: api_token_basic
var api_token_basic = defaultClient.authentications['api_token_basic'];
api_token_basic.username = 'YOUR USERNAME';
api_token_basic.password = 'YOUR PASSWORD';

var apiInstance = new FormAPI.PDFApi();
var opts = {
  'combinedSubmissionData': new FormAPI.CombinedSubmissionData() // CombinedSubmissionData | 
};
var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.combineSubmissions(opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **combinedSubmissionData** | [**CombinedSubmissionData**](CombinedSubmissionData.md)|  | [optional] 

### Return type

[**CreateCombinedSubmissionResponse**](CreateCombinedSubmissionResponse.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="expireCombinedSubmission"></a>
# **expireCombinedSubmission**
> CombinedSubmission expireCombinedSubmission(combinedSubmissionId)

Expire a combined submission

### Example
```javascript
var FormAPI = require('@formapi/formapi');
var defaultClient = FormAPI.ApiClient.instance;

// Configure HTTP basic authorization: api_token_basic
var api_token_basic = defaultClient.authentications['api_token_basic'];
api_token_basic.username = 'YOUR USERNAME';
api_token_basic.password = 'YOUR PASSWORD';

var apiInstance = new FormAPI.PDFApi();
var combinedSubmissionId = com_000000000000000001; // String | 
var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.expireCombinedSubmission(combinedSubmissionId, callback);
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
```javascript
var FormAPI = require('@formapi/formapi');
var defaultClient = FormAPI.ApiClient.instance;

// Configure HTTP basic authorization: api_token_basic
var api_token_basic = defaultClient.authentications['api_token_basic'];
api_token_basic.username = 'YOUR USERNAME';
api_token_basic.password = 'YOUR PASSWORD';

var apiInstance = new FormAPI.PDFApi();
var submissionId = sub_000000000000000001; // String | 
var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.expireSubmission(submissionId, callback);
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
```javascript
var FormAPI = require('@formapi/formapi');
var defaultClient = FormAPI.ApiClient.instance;

// Configure HTTP basic authorization: api_token_basic
var api_token_basic = defaultClient.authentications['api_token_basic'];
api_token_basic.username = 'YOUR USERNAME';
api_token_basic.password = 'YOUR PASSWORD';

var apiInstance = new FormAPI.PDFApi();
var templateId = tpl_000000000000000001; // String | 
var createSubmissionData = new FormAPI.CreateSubmissionData(); // CreateSubmissionData | 
var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.generatePDF(templateId, createSubmissionData, callback);
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
```javascript
var FormAPI = require('@formapi/formapi');
var defaultClient = FormAPI.ApiClient.instance;

// Configure HTTP basic authorization: api_token_basic
var api_token_basic = defaultClient.authentications['api_token_basic'];
api_token_basic.username = 'YOUR USERNAME';
api_token_basic.password = 'YOUR PASSWORD';

var apiInstance = new FormAPI.PDFApi();
var combinedSubmissionId = com_000000000000000001; // String | 
var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getCombinedSubmission(combinedSubmissionId, callback);
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

<a name="getSubmission"></a>
# **getSubmission**
> Submission getSubmission(submissionId)

Check the status of a PDF

### Example
```javascript
var FormAPI = require('@formapi/formapi');
var defaultClient = FormAPI.ApiClient.instance;

// Configure HTTP basic authorization: api_token_basic
var api_token_basic = defaultClient.authentications['api_token_basic'];
api_token_basic.username = 'YOUR USERNAME';
api_token_basic.password = 'YOUR PASSWORD';

var apiInstance = new FormAPI.PDFApi();
var submissionId = sub_000000000000000001; // String | 
var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getSubmission(submissionId, callback);
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

<a name="getTemplates"></a>
# **getTemplates**
> [Template] getTemplates(opts)

Get a list of all templates

### Example
```javascript
var FormAPI = require('@formapi/formapi');
var defaultClient = FormAPI.ApiClient.instance;

// Configure HTTP basic authorization: api_token_basic
var api_token_basic = defaultClient.authentications['api_token_basic'];
api_token_basic.username = 'YOUR USERNAME';
api_token_basic.password = 'YOUR PASSWORD';

var apiInstance = new FormAPI.PDFApi();
var opts = {
  'page': 2, // Number | Default: 1
  'perPage': 1 // Number | Default: 50
};
var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getTemplates(opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Number**| Default: 1 | [optional] 
 **perPage** | **Number**| Default: 50 | [optional] 

### Return type

[**[Template]**](Template.md)

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
```javascript
var FormAPI = require('@formapi/formapi');
var defaultClient = FormAPI.ApiClient.instance;

// Configure HTTP basic authorization: api_token_basic
var api_token_basic = defaultClient.authentications['api_token_basic'];
api_token_basic.username = 'YOUR USERNAME';
api_token_basic.password = 'YOUR PASSWORD';

var apiInstance = new FormAPI.PDFApi();
var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.testAuthentication(callback);
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

