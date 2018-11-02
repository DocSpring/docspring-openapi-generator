
# CreateSubmissionDataRequestData

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**metadata** | **Object** |  |  [optional]
**authType** | [**AuthTypeEnum**](#AuthTypeEnum) |  |  [optional]
**authSecondFactorType** | [**AuthSecondFactorTypeEnum**](#AuthSecondFactorTypeEnum) |  |  [optional]
**authPhoneNumberHash** | **String** |  |  [optional]
**authSessionStartedAt** | **String** |  |  [optional]
**authUserIdHash** | **String** |  |  [optional]
**authSessionIdHash** | **String** |  |  [optional]
**authUsernameHash** | **String** |  |  [optional]
**name** | **String** |  |  [optional]
**fields** | **List&lt;String&gt;** |  |  [optional]
**email** | **String** |  |  [optional]
**authProvider** | **String** |  |  [optional]
**order** | **Integer** |  |  [optional]


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



