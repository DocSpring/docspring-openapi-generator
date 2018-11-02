
# UpdateSubmissionDataRequestData

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  |  [optional]
**email** | **String** |  |  [optional]
**order** | **Integer** |  |  [optional]
**fields** | **List&lt;String&gt;** |  |  [optional]
**metadata** | **Object** |  |  [optional]
**authType** | [**AuthTypeEnum**](#AuthTypeEnum) |  |  [optional]
**authSecondFactorType** | [**AuthSecondFactorTypeEnum**](#AuthSecondFactorTypeEnum) |  |  [optional]
**authProvider** | **String** |  |  [optional]
**authSessionStartedAt** | **String** |  |  [optional]
**authSessionIdHash** | **String** |  |  [optional]
**authUserIdHash** | **String** |  |  [optional]
**authUsernameHash** | **String** |  |  [optional]
**authPhoneNumberHash** | **String** |  |  [optional]


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



