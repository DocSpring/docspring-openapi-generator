
# SubmissionDataRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**name** | **String** |  | 
**email** | **String** |  | 
**order** | **Integer** |  | 
**fields** | **List&lt;String&gt;** |  | 
**metadata** | **Object** |  | 
**state** | [**StateEnum**](#StateEnum) |  | 
**viewedAt** | **String** |  |  [optional]
**completedAt** | **String** |  |  [optional]
**authType** | [**AuthTypeEnum**](#AuthTypeEnum) |  |  [optional]
**authSecondFactorType** | [**AuthSecondFactorTypeEnum**](#AuthSecondFactorTypeEnum) |  |  [optional]
**authProvider** | **String** |  |  [optional]
**authSessionStartedAt** | **String** |  |  [optional]
**authSessionIdHash** | **String** |  |  [optional]
**authUserIdHash** | **String** |  |  [optional]
**authUsernameHash** | **String** |  |  [optional]
**authPhoneNumberHash** | **String** |  |  [optional]


<a name="StateEnum"></a>
## Enum: StateEnum
Name | Value
---- | -----
PENDING | &quot;pending&quot;
COMPLETED | &quot;completed&quot;


<a name="AuthTypeEnum"></a>
## Enum: AuthTypeEnum
Name | Value
---- | -----
NONE | &quot;none&quot;
PASSWORD | &quot;password&quot;
OAUTH | &quot;oauth&quot;
EMAIL_LINK | &quot;email_link&quot;
PHONE_NUMBER | &quot;phone_number&quot;
LDAP | &quot;ldap&quot;
SAML | &quot;saml&quot;


<a name="AuthSecondFactorTypeEnum"></a>
## Enum: AuthSecondFactorTypeEnum
Name | Value
---- | -----
NONE | &quot;none&quot;
PHONE_NUMBER | &quot;phone_number&quot;
TOTP | &quot;totp&quot;
MOBILE_PUSH | &quot;mobile_push&quot;
SECURITY_KEY | &quot;security_key&quot;
FINGERPRINT | &quot;fingerprint&quot;



