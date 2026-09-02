# UserApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**changePassword**](UserApi.md#changePassword) | **POST** /user/change-password | Change the current user&#39;s password (requires the current password).
[**createTeam**](UserApi.md#createTeam) | **POST** /user/teams | Create a new team within the current tenant
[**generateApiKey**](UserApi.md#generateApiKey) | **POST** /user/api-key | Generate a new API key for the current user
[**inviteUser**](UserApi.md#inviteUser) | **POST** /user/invite | Invite a user to the current tenant/organization
[**listTeams**](UserApi.md#listTeams) | **GET** /user/teams | List all teams in the current tenant
[**removeUserFromOrg**](UserApi.md#removeUserFromOrg) | **DELETE** /user/remove | Remove a user from the current organization
[**updateProfile**](UserApi.md#updateProfile) | **PUT** /user/profile | Update the current user&#39;s profile
[**userProfile**](UserApi.md#userProfile) | **GET** /user/profile | Get the current user&#39;s profile
[**userTenants**](UserApi.md#userTenants) | **GET** /user/tenants | List all tenants (organizations) the current user belongs to



## changePassword

Change the current user's password (requires the current password).

### Example

```bash
 changePassword
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **changePasswordRequest** | [**ChangePasswordRequest**](ChangePasswordRequest.md) |  |

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createTeam

Create a new team within the current tenant

### Example

```bash
 createTeam
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamCreate** | [**TeamCreate**](TeamCreate.md) |  |

### Return type

[**ApiResponseTeam**](ApiResponseTeam.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## generateApiKey

Generate a new API key for the current user

### Example

```bash
 generateApiKey
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ApiResponseString**](ApiResponseString.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## inviteUser

Invite a user to the current tenant/organization

### Example

```bash
 inviteUser
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inviteRequest** | [**InviteRequest**](InviteRequest.md) |  |

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listTeams

List all teams in the current tenant

### Example

```bash
 listTeams
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ApiResponseVecTeam**](ApiResponseVecTeam.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## removeUserFromOrg

Remove a user from the current organization

### Example

```bash
 removeUserFromOrg
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **removeUserRequest** | [**RemoveUserRequest**](RemoveUserRequest.md) |  |

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateProfile

Update the current user's profile

### Example

```bash
 updateProfile
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateProfileRequest** | [**UpdateProfileRequest**](UpdateProfileRequest.md) |  |

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## userProfile

Get the current user's profile

### Example

```bash
 userProfile
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ApiResponseUserProfile**](ApiResponseUserProfile.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## userTenants

List all tenants (organizations) the current user belongs to

### Example

```bash
 userTenants
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ApiResponseVecUserTenantInfo**](ApiResponseVecUserTenantInfo.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

