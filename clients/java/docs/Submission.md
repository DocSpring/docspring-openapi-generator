
# Submission

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**test** | **Boolean** |  | 
**expired** | **Boolean** |  | 
**expiresAt** | **String** |  |  [optional]
**processedAt** | **String** |  |  [optional]
**state** | [**StateEnum**](#StateEnum) |  | 
**metadata** | **Object** |  |  [optional]
**downloadUrl** | **String** |  |  [optional]
**batchId** | **String** |  |  [optional]
**dataRequests** | [**List&lt;SubmissionDataRequest&gt;**](SubmissionDataRequest.md) |  |  [optional]


<a name="StateEnum"></a>
## Enum: StateEnum
Name | Value
---- | -----
PENDING | &quot;pending&quot;
PROCESSED | &quot;processed&quot;
INVALID_DATA | &quot;invalid_data&quot;
ERROR | &quot;error&quot;
IMAGE_DOWNLOAD_FAILED | &quot;image_download_failed&quot;
IMAGE_PROCESSING_FAILED | &quot;image_processing_failed&quot;
WAITING_FOR_DATA_REQUESTS | &quot;waiting_for_data_requests&quot;



