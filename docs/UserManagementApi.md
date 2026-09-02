# UserManagementApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**getUser**](UserManagementApi.md#getUser) | **GET** /api/v1/users/{user_id} | 
[**listUsers**](UserManagementApi.md#listUsers) | **GET** /api/v1/users | 
[**removeUser**](UserManagementApi.md#removeUser) | **DELETE** /api/v1/users/{user_id} | 
[**updateUserPermissions**](UserManagementApi.md#updateUserPermissions) | **PUT** /api/v1/users/{user_id}/permissions | 
[**updateUserRole**](UserManagementApi.md#updateUserRole) | **PUT** /api/v1/users/{user_id}/role | 



## getUser



### Example

```bash
 getUser user_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **string** |  | [default to null]

### Return type

[**TenantUser**](TenantUser.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listUsers



### Example

```bash
 listUsers
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[TenantUser]**](TenantUser.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## removeUser



### Example

```bash
 removeUser user_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateUserPermissions



### Example

```bash
 updateUserPermissions user_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **string** |  | [default to null]
 **updatePermissionsPayload** | [**UpdatePermissionsPayload**](UpdatePermissionsPayload.md) |  |

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateUserRole



### Example

```bash
 updateUserRole user_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **string** |  | [default to null]
 **updateRolePayload** | [**UpdateRolePayload**](UpdateRolePayload.md) |  |

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

