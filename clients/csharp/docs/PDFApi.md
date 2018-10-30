# FormApi.Client.Api.PDFApi

All URIs are relative to *https://app.formapi.io/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**BatchGeneratePdfV1**](PDFApi.md#batchgeneratepdfv1) | **POST** /templates/{template_id}/submissions/batch | Generates multiple PDFs
[**BatchGeneratePdfs**](PDFApi.md#batchgeneratepdfs) | **POST** /submissions/batches | Generates multiple PDFs
[**CombineSubmissions**](PDFApi.md#combinesubmissions) | **POST** /combined_submissions | Merge generated PDFs together
[**CreateDataRequestToken**](PDFApi.md#createdatarequesttoken) | **POST** /data_requests/{data_request_id}/tokens | Creates a new data request token for form authentication
[**ExpireCombinedSubmission**](PDFApi.md#expirecombinedsubmission) | **DELETE** /combined_submissions/{combined_submission_id} | Expire a combined submission
[**ExpireSubmission**](PDFApi.md#expiresubmission) | **DELETE** /submissions/{submission_id} | Expire a PDF submission
[**GeneratePDF**](PDFApi.md#generatepdf) | **POST** /templates/{template_id}/submissions | Generates a new PDF
[**GetCombinedSubmission**](PDFApi.md#getcombinedsubmission) | **GET** /combined_submissions/{combined_submission_id} | Check the status of a combined submission (merged PDFs)
[**GetDataRequest**](PDFApi.md#getdatarequest) | **GET** /data_requests/{data_request_id} | Look up a submission data request
[**GetSubmission**](PDFApi.md#getsubmission) | **GET** /submissions/{submission_id} | Check the status of a PDF
[**GetSubmissionBatch**](PDFApi.md#getsubmissionbatch) | **GET** /submissions/batches/{submission_batch_id} | Check the status of a submission batch job
[**GetTemplates**](PDFApi.md#gettemplates) | **GET** /templates | Get a list of all templates
[**TestAuthentication**](PDFApi.md#testauthentication) | **GET** /authentication | Test Authentication
[**UpdateDataRequest**](PDFApi.md#updatedatarequest) | **PUT** /data_requests/{data_request_id} | Update a submission data request


<a name="batchgeneratepdfv1"></a>
# **BatchGeneratePdfV1**
> List<CreateSubmissionResponse> BatchGeneratePdfV1 (string templateId, List<CreateSubmissionDataBatchV1> createSubmissionDataBatchV1)

Generates multiple PDFs

### Example
```csharp
using System;
using System.Diagnostics;
using FormApi.Client.Api;
using FormApi.Client.Client;
using FormApi.Client.Model;

namespace Example
{
    public class BatchGeneratePdfV1Example
    {
        public void main()
        {
            // Configure HTTP basic authorization: api_token_basic
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new PDFApi();
            var templateId = tpl_000000000000000001;  // string | 
            var createSubmissionDataBatchV1 = new List<CreateSubmissionDataBatchV1>(); // List<CreateSubmissionDataBatchV1> | 

            try
            {
                // Generates multiple PDFs
                List&lt;CreateSubmissionResponse&gt; result = apiInstance.BatchGeneratePdfV1(templateId, createSubmissionDataBatchV1);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling PDFApi.BatchGeneratePdfV1: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateId** | **string**|  | 
 **createSubmissionDataBatchV1** | [**List&lt;CreateSubmissionDataBatchV1&gt;**](List.md)|  | 

### Return type

[**List<CreateSubmissionResponse>**](CreateSubmissionResponse.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="batchgeneratepdfs"></a>
# **BatchGeneratePdfs**
> CreateSubmissionBatchResponse BatchGeneratePdfs (SubmissionBatchData submissionBatchData)

Generates multiple PDFs

### Example
```csharp
using System;
using System.Diagnostics;
using FormApi.Client.Api;
using FormApi.Client.Client;
using FormApi.Client.Model;

namespace Example
{
    public class BatchGeneratePdfsExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: api_token_basic
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new PDFApi();
            var submissionBatchData = new SubmissionBatchData(); // SubmissionBatchData | 

            try
            {
                // Generates multiple PDFs
                CreateSubmissionBatchResponse result = apiInstance.BatchGeneratePdfs(submissionBatchData);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling PDFApi.BatchGeneratePdfs: " + e.Message );
            }
        }
    }
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="combinesubmissions"></a>
# **CombineSubmissions**
> CreateCombinedSubmissionResponse CombineSubmissions (CombinedSubmissionData combinedSubmissionData)

Merge generated PDFs together

### Example
```csharp
using System;
using System.Diagnostics;
using FormApi.Client.Api;
using FormApi.Client.Client;
using FormApi.Client.Model;

namespace Example
{
    public class CombineSubmissionsExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: api_token_basic
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new PDFApi();
            var combinedSubmissionData = new CombinedSubmissionData(); // CombinedSubmissionData | 

            try
            {
                // Merge generated PDFs together
                CreateCombinedSubmissionResponse result = apiInstance.CombineSubmissions(combinedSubmissionData);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling PDFApi.CombineSubmissions: " + e.Message );
            }
        }
    }
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="createdatarequesttoken"></a>
# **CreateDataRequestToken**
> CreateSubmissionDataRequestTokenResponse CreateDataRequestToken (string dataRequestId)

Creates a new data request token for form authentication

### Example
```csharp
using System;
using System.Diagnostics;
using FormApi.Client.Api;
using FormApi.Client.Client;
using FormApi.Client.Model;

namespace Example
{
    public class CreateDataRequestTokenExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: api_token_basic
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new PDFApi();
            var dataRequestId = drq_000000000000000001;  // string | 

            try
            {
                // Creates a new data request token for form authentication
                CreateSubmissionDataRequestTokenResponse result = apiInstance.CreateDataRequestToken(dataRequestId);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling PDFApi.CreateDataRequestToken: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataRequestId** | **string**|  | 

### Return type

[**CreateSubmissionDataRequestTokenResponse**](CreateSubmissionDataRequestTokenResponse.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="expirecombinedsubmission"></a>
# **ExpireCombinedSubmission**
> CombinedSubmission ExpireCombinedSubmission (string combinedSubmissionId)

Expire a combined submission

### Example
```csharp
using System;
using System.Diagnostics;
using FormApi.Client.Api;
using FormApi.Client.Client;
using FormApi.Client.Model;

namespace Example
{
    public class ExpireCombinedSubmissionExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: api_token_basic
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new PDFApi();
            var combinedSubmissionId = com_000000000000000001;  // string | 

            try
            {
                // Expire a combined submission
                CombinedSubmission result = apiInstance.ExpireCombinedSubmission(combinedSubmissionId);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling PDFApi.ExpireCombinedSubmission: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **combinedSubmissionId** | **string**|  | 

### Return type

[**CombinedSubmission**](CombinedSubmission.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="expiresubmission"></a>
# **ExpireSubmission**
> Submission ExpireSubmission (string submissionId)

Expire a PDF submission

### Example
```csharp
using System;
using System.Diagnostics;
using FormApi.Client.Api;
using FormApi.Client.Client;
using FormApi.Client.Model;

namespace Example
{
    public class ExpireSubmissionExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: api_token_basic
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new PDFApi();
            var submissionId = sub_000000000000000001;  // string | 

            try
            {
                // Expire a PDF submission
                Submission result = apiInstance.ExpireSubmission(submissionId);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling PDFApi.ExpireSubmission: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submissionId** | **string**|  | 

### Return type

[**Submission**](Submission.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="generatepdf"></a>
# **GeneratePDF**
> CreateSubmissionResponse GeneratePDF (string templateId, CreateSubmissionData createSubmissionData)

Generates a new PDF

### Example
```csharp
using System;
using System.Diagnostics;
using FormApi.Client.Api;
using FormApi.Client.Client;
using FormApi.Client.Model;

namespace Example
{
    public class GeneratePDFExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: api_token_basic
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new PDFApi();
            var templateId = tpl_000000000000000001;  // string | 
            var createSubmissionData = new CreateSubmissionData(); // CreateSubmissionData | 

            try
            {
                // Generates a new PDF
                CreateSubmissionResponse result = apiInstance.GeneratePDF(templateId, createSubmissionData);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling PDFApi.GeneratePDF: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateId** | **string**|  | 
 **createSubmissionData** | [**CreateSubmissionData**](CreateSubmissionData.md)|  | 

### Return type

[**CreateSubmissionResponse**](CreateSubmissionResponse.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getcombinedsubmission"></a>
# **GetCombinedSubmission**
> CombinedSubmission GetCombinedSubmission (string combinedSubmissionId)

Check the status of a combined submission (merged PDFs)

### Example
```csharp
using System;
using System.Diagnostics;
using FormApi.Client.Api;
using FormApi.Client.Client;
using FormApi.Client.Model;

namespace Example
{
    public class GetCombinedSubmissionExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: api_token_basic
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new PDFApi();
            var combinedSubmissionId = com_000000000000000001;  // string | 

            try
            {
                // Check the status of a combined submission (merged PDFs)
                CombinedSubmission result = apiInstance.GetCombinedSubmission(combinedSubmissionId);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling PDFApi.GetCombinedSubmission: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **combinedSubmissionId** | **string**|  | 

### Return type

[**CombinedSubmission**](CombinedSubmission.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getdatarequest"></a>
# **GetDataRequest**
> SubmissionDataRequest GetDataRequest (string dataRequestId)

Look up a submission data request

### Example
```csharp
using System;
using System.Diagnostics;
using FormApi.Client.Api;
using FormApi.Client.Client;
using FormApi.Client.Model;

namespace Example
{
    public class GetDataRequestExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: api_token_basic
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new PDFApi();
            var dataRequestId = drq_000000000000000001;  // string | 

            try
            {
                // Look up a submission data request
                SubmissionDataRequest result = apiInstance.GetDataRequest(dataRequestId);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling PDFApi.GetDataRequest: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataRequestId** | **string**|  | 

### Return type

[**SubmissionDataRequest**](SubmissionDataRequest.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getsubmission"></a>
# **GetSubmission**
> Submission GetSubmission (string submissionId)

Check the status of a PDF

### Example
```csharp
using System;
using System.Diagnostics;
using FormApi.Client.Api;
using FormApi.Client.Client;
using FormApi.Client.Model;

namespace Example
{
    public class GetSubmissionExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: api_token_basic
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new PDFApi();
            var submissionId = sub_000000000000000001;  // string | 

            try
            {
                // Check the status of a PDF
                Submission result = apiInstance.GetSubmission(submissionId);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling PDFApi.GetSubmission: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submissionId** | **string**|  | 

### Return type

[**Submission**](Submission.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getsubmissionbatch"></a>
# **GetSubmissionBatch**
> SubmissionBatch GetSubmissionBatch (string submissionBatchId, bool? includeSubmissions = null)

Check the status of a submission batch job

### Example
```csharp
using System;
using System.Diagnostics;
using FormApi.Client.Api;
using FormApi.Client.Client;
using FormApi.Client.Model;

namespace Example
{
    public class GetSubmissionBatchExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: api_token_basic
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new PDFApi();
            var submissionBatchId = sba_000000000000000001;  // string | 
            var includeSubmissions = true;  // bool? |  (optional) 

            try
            {
                // Check the status of a submission batch job
                SubmissionBatch result = apiInstance.GetSubmissionBatch(submissionBatchId, includeSubmissions);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling PDFApi.GetSubmissionBatch: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submissionBatchId** | **string**|  | 
 **includeSubmissions** | **bool?**|  | [optional] 

### Return type

[**SubmissionBatch**](SubmissionBatch.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="gettemplates"></a>
# **GetTemplates**
> List<Template> GetTemplates (int? page = null, int? perPage = null)

Get a list of all templates

### Example
```csharp
using System;
using System.Diagnostics;
using FormApi.Client.Api;
using FormApi.Client.Client;
using FormApi.Client.Model;

namespace Example
{
    public class GetTemplatesExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: api_token_basic
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new PDFApi();
            var page = 2;  // int? | Default: 1 (optional) 
            var perPage = 1;  // int? | Default: 50 (optional) 

            try
            {
                // Get a list of all templates
                List&lt;Template&gt; result = apiInstance.GetTemplates(page, perPage);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling PDFApi.GetTemplates: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int?**| Default: 1 | [optional] 
 **perPage** | **int?**| Default: 50 | [optional] 

### Return type

[**List<Template>**](Template.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="testauthentication"></a>
# **TestAuthentication**
> AuthenticationSuccessResponse TestAuthentication ()

Test Authentication

### Example
```csharp
using System;
using System.Diagnostics;
using FormApi.Client.Api;
using FormApi.Client.Client;
using FormApi.Client.Model;

namespace Example
{
    public class TestAuthenticationExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: api_token_basic
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new PDFApi();

            try
            {
                // Test Authentication
                AuthenticationSuccessResponse result = apiInstance.TestAuthentication();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling PDFApi.TestAuthentication: " + e.Message );
            }
        }
    }
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="updatedatarequest"></a>
# **UpdateDataRequest**
> UpdateDataRequestResponse UpdateDataRequest (string dataRequestId, UpdateSubmissionDataRequestData updateSubmissionDataRequestData)

Update a submission data request

### Example
```csharp
using System;
using System.Diagnostics;
using FormApi.Client.Api;
using FormApi.Client.Client;
using FormApi.Client.Model;

namespace Example
{
    public class UpdateDataRequestExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: api_token_basic
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new PDFApi();
            var dataRequestId = drq_000000000000000001;  // string | 
            var updateSubmissionDataRequestData = new UpdateSubmissionDataRequestData(); // UpdateSubmissionDataRequestData | 

            try
            {
                // Update a submission data request
                UpdateDataRequestResponse result = apiInstance.UpdateDataRequest(dataRequestId, updateSubmissionDataRequestData);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling PDFApi.UpdateDataRequest: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataRequestId** | **string**|  | 
 **updateSubmissionDataRequestData** | [**UpdateSubmissionDataRequestData**](UpdateSubmissionDataRequestData.md)|  | 

### Return type

[**UpdateDataRequestResponse**](UpdateDataRequestResponse.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

