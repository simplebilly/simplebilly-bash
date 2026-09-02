# DeclarationApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDeclaration**](DeclarationApi.md#createDeclaration) | **POST** /api/v1/declarations | 
[**declarationRestore**](DeclarationApi.md#declarationRestore) | **POST** /api/v1/declarations/{id}/restore | 
[**deleteDeclaration**](DeclarationApi.md#deleteDeclaration) | **DELETE** /api/v1/declarations/{id} | 
[**getDeclaration**](DeclarationApi.md#getDeclaration) | **GET** /api/v1/declarations/{id} | 
[**getDeclarations**](DeclarationApi.md#getDeclarations) | **GET** /api/v1/declarations/ | 
[**updateDeclaration**](DeclarationApi.md#updateDeclaration) | **PUT** /api/v1/declarations/{id} | 



## createDeclaration



### Example

```bash
 createDeclaration
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **declarationCreate** | [**DeclarationCreate**](DeclarationCreate.md) |  |

### Return type

[**Declaration**](Declaration.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## declarationRestore



### Example

```bash
 declarationRestore id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]

### Return type

[**Declaration**](Declaration.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteDeclaration



### Example

```bash
 deleteDeclaration id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getDeclaration



### Example

```bash
 getDeclaration id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]

### Return type

[**Declaration**](Declaration.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getDeclarations



### Example

```bash
 getDeclarations  page=value  page_size=value  search=value  include_deleted=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **search** | **string** |  | [optional] [default to null]
 **includeDeleted** | **boolean** | Soft-delete entities: set true to include rows with 'deleted_at' set. | [optional] [default to null]

### Return type

[**array[Declaration]**](Declaration.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateDeclaration



### Example

```bash
 updateDeclaration id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]
 **declarationUpdate** | [**DeclarationUpdate**](DeclarationUpdate.md) |  |

### Return type

[**Declaration**](Declaration.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

