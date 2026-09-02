# ServiceAssignmentApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createServiceAssignment**](ServiceAssignmentApi.md#createServiceAssignment) | **POST** /api/v1/service-assignments | 
[**deleteServiceAssignment**](ServiceAssignmentApi.md#deleteServiceAssignment) | **DELETE** /api/v1/service-assignments/{id} | 
[**getServiceAssignment**](ServiceAssignmentApi.md#getServiceAssignment) | **GET** /api/v1/service-assignments/{id} | 
[**getServiceAssignments**](ServiceAssignmentApi.md#getServiceAssignments) | **GET** /api/v1/service-assignments/ | 
[**updateServiceAssignment**](ServiceAssignmentApi.md#updateServiceAssignment) | **PUT** /api/v1/service-assignments/{id} | 



## createServiceAssignment



### Example

```bash
 createServiceAssignment
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **serviceAssignmentCreate** | [**ServiceAssignmentCreate**](ServiceAssignmentCreate.md) |  |

### Return type

[**ServiceAssignment**](ServiceAssignment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteServiceAssignment



### Example

```bash
 deleteServiceAssignment id=value
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


## getServiceAssignment



### Example

```bash
 getServiceAssignment id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]

### Return type

[**ServiceAssignment**](ServiceAssignment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getServiceAssignments



### Example

```bash
 getServiceAssignments  page=value  page_size=value  search=value  include_deleted=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **search** | **string** |  | [optional] [default to null]
 **includeDeleted** | **boolean** | Soft-delete entities: set true to include rows with 'deleted_at' set. | [optional] [default to null]

### Return type

[**array[ServiceAssignment]**](ServiceAssignment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateServiceAssignment



### Example

```bash
 updateServiceAssignment id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]
 **serviceAssignmentUpdate** | [**ServiceAssignmentUpdate**](ServiceAssignmentUpdate.md) |  |

### Return type

[**ServiceAssignment**](ServiceAssignment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

