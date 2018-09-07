# FormApi.Client.Api.PDFApi

All URIs are relative to *https://app.formapi.io/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**BatchGeneratePDF**](PDFApi.md#batchgeneratepdf) | **POST** /templates/{template_id}/submissions/batch | Generates multiple PDFs
[**CombineSubmissions**](PDFApi.md#combinesubmissions) | **POST** /combined_submissions | Merge generated PDFs together
[**ExpireCombinedSubmission**](PDFApi.md#expirecombinedsubmission) | **DELETE** /combined_submissions/{combined_submission_id} | Expire a combined submission
[**ExpireSubmission**](PDFApi.md#expiresubmission) | **DELETE** /submissions/{submission_id} | Expire a PDF submission
[**GeneratePDF**](PDFApi.md#generatepdf) | **POST** /templates/{template_id}/submissions | Generates a new PDF
[**GetCombinedSubmission**](PDFApi.md#getcombinedsubmission) | **GET** /combined_submissions/{combined_submission_id} | Check the status of a combined submission (merged PDFs)
[**GetSubmission**](PDFApi.md#getsubmission) | **GET** /submissions/{submission_id} | Check the status of a PDF
[**GetTemplates**](PDFApi.md#gettemplates) | **GET** /templates | Get a list of all templates
[**TestAuthentication**](PDFApi.md#testauthentication) | **GET** /authentication | Test Authentication


<a name="batchgeneratepdf"></a>
# **BatchGeneratePDF**
> List<CreateSubmissionResponse> BatchGeneratePDF (string templateId, List<CreateSubmissionData> createSubmissionData)

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
    public class BatchGeneratePDFExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: api_token_basic
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new PDFApi();
            var templateId = tpl_000000000000000001;  // string |
            var createSubmissionData = new List<CreateSubmissionData>(); // List<CreateSubmissionData> |

            try
            {
                // Generates multiple PDFs
                List&lt;CreateSubmissionResponse&gt; result = apiInstance.BatchGeneratePDF(templateId, createSubmissionData);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling PDFApi.BatchGeneratePDF: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateId** | **string**|  |
 **createSubmissionData** | [**List&lt;CreateSubmissionData&gt;**](List.md)|  |

### Return type

[**List<CreateSubmissionResponse>**](CreateSubmissionResponse.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="combinesubmissions"></a>
# **CombineSubmissions**
> CreateCombinedSubmissionResponse CombineSubmissions (CombinedSubmissionData combinedSubmissionData = null)

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
            var combinedSubmissionData = new CombinedSubmissionData(); // CombinedSubmissionData |  (optional)

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
 **combinedSubmissionData** | [**CombinedSubmissionData**](CombinedSubmissionData.md)|  | [optional]

### Return type

[**CreateCombinedSubmissionResponse**](CreateCombinedSubmissionResponse.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: application/json
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

