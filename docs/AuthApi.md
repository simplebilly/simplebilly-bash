# AuthApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**acceptInvite**](AuthApi.md#acceptInvite) | **POST** /auth/accept-invite | Accept an invite: create the account (or reuse an existing one) and join
the inviting tenant. The invite token proves control of the mailbox.
[**forgotPassword**](AuthApi.md#forgotPassword) | **POST** /auth/forgot-password | Send a password reset email to the user
[**login**](AuthApi.md#login) | **POST** /auth/login | Authenticate a user with email + password (optional TOTP)
[**logout**](AuthApi.md#logout) | **POST** /auth/logout | Log out the current user (kills the assay session)
[**magicLinkLogin**](AuthApi.md#magicLinkLogin) | **POST** /auth/magic-link | Request a magic link login (sends an email with a one-time link)
[**magicLinkVerify**](AuthApi.md#magicLinkVerify) | **POST** /auth/magic-link/verify | Verify a magic link token and log the user in
[**register**](AuthApi.md#register) | **POST** /auth/register | Register a new user account
[**resetPassword**](AuthApi.md#resetPassword) | **POST** /auth/reset-password | Reset the user&#39;s password using a reset token
[**totpEnable**](AuthApi.md#totpEnable) | **POST** /auth/totp/enable | Enable TOTP two-factor authentication by verifying a code
[**totpSetup**](AuthApi.md#totpSetup) | **GET** /auth/totp/setup | Set up TOTP two-factor authentication (generates secret + backup codes)
[**verifyEmail**](AuthApi.md#verifyEmail) | **POST** /auth/verify-email | Verify a user&#39;s email address using a verification token



## acceptInvite

Accept an invite: create the account (or reuse an existing one) and join
the inviting tenant. The invite token proves control of the mailbox.

### Example

```bash
 acceptInvite
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **acceptInviteRequest** | [**AcceptInviteRequest**](AcceptInviteRequest.md) |  |

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## forgotPassword

Send a password reset email to the user

### Example

```bash
 forgotPassword
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **forgotPasswordRequest** | [**ForgotPasswordRequest**](ForgotPasswordRequest.md) |  |

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## login

Authenticate a user with email + password (optional TOTP)

### Example

```bash
 login
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loginRequest** | [**LoginRequest**](LoginRequest.md) |  |

### Return type

[**AuthResponse**](AuthResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## logout

Log out the current user (kills the assay session)

### Example

```bash
 logout
```

### Parameters

This endpoint does not need any parameter.

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## magicLinkLogin

Request a magic link login (sends an email with a one-time link)

### Example

```bash
 magicLinkLogin
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **magicLinkRequest** | [**MagicLinkRequest**](MagicLinkRequest.md) |  |

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## magicLinkVerify

Verify a magic link token and log the user in

### Example

```bash
 magicLinkVerify
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **magicLinkVerifyRequest** | [**MagicLinkVerifyRequest**](MagicLinkVerifyRequest.md) |  |

### Return type

[**AuthResponse**](AuthResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## register

Register a new user account

### Example

```bash
 register
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registerRequest** | [**RegisterRequest**](RegisterRequest.md) |  |

### Return type

[**AuthResponse**](AuthResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## resetPassword

Reset the user's password using a reset token

### Example

```bash
 resetPassword
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resetPasswordRequest** | [**ResetPasswordRequest**](ResetPasswordRequest.md) |  |

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## totpEnable

Enable TOTP two-factor authentication by verifying a code

### Example

```bash
 totpEnable
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **totpEnableRequest** | [**TotpEnableRequest**](TotpEnableRequest.md) |  |

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## totpSetup

Set up TOTP two-factor authentication (generates secret + backup codes)

### Example

```bash
 totpSetup
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**TotpSetupResponse**](TotpSetupResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## verifyEmail

Verify a user's email address using a verification token

### Example

```bash
 verifyEmail
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **verifyEmailRequest** | [**VerifyEmailRequest**](VerifyEmailRequest.md) |  |

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

