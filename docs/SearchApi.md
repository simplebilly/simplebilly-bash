# SearchApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**globalSearch**](SearchApi.md#globalSearch) | **GET** /api/v1/search | GET /api/v1/search?q&#x3D;...
[**myPermissions**](SearchApi.md#myPermissions) | **GET** /api/v1/me/permissions | GET /api/v1/me/permissions — resolved permissions from the auth token,
used by the frontend to show/hide admin navigation.



## globalSearch

GET /api/v1/search?q=...

### Example

```bash
 globalSearch  q=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **string** | Search text (min 2 chars) | [default to null]

### Return type

[**AnyType**](AnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## myPermissions

GET /api/v1/me/permissions — resolved permissions from the auth token,
used by the frontend to show/hide admin navigation.

### Example

```bash
 myPermissions
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AnyType**](AnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

