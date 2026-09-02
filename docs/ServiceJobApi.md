# ServiceJobApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createServiceJob**](ServiceJobApi.md#createServiceJob) | **POST** /api/v1/service-jobs | 
[**deleteServiceJob**](ServiceJobApi.md#deleteServiceJob) | **DELETE** /api/v1/service-jobs/{id} | 
[**getServiceJob**](ServiceJobApi.md#getServiceJob) | **GET** /api/v1/service-jobs/{id} | 
[**getServiceJobs**](ServiceJobApi.md#getServiceJobs) | **GET** /api/v1/service-jobs/ | 
[**updateServiceJob**](ServiceJobApi.md#updateServiceJob) | **PUT** /api/v1/service-jobs/{id} | 



## createServiceJob



### Example

```bash
 createServiceJob
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **serviceJobCreate** | [**ServiceJobCreate**](ServiceJobCreate.md) |  |

### Return type

[**ServiceJob**](ServiceJob.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteServiceJob



### Example

```bash
 deleteServiceJob id=value
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


## getServiceJob



### Example

```bash
 getServiceJob id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]

### Return type

[**ServiceJob**](ServiceJob.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getServiceJobs



### Example

```bash
 getServiceJobs  page=value  page_size=value  search=value  include_deleted=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **search** | **string** |  | [optional] [default to null]
 **includeDeleted** | **boolean** | Soft-delete entities: set true to include rows with 'deleted_at' set. | [optional] [default to null]

### Return type

[**array[ServiceJob]**](ServiceJob.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateServiceJob



### Example

```bash
 updateServiceJob id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]
 **serviceJobUpdate** | [**ServiceJobUpdate**](ServiceJobUpdate.md) |  |

### Return type

[**ServiceJob**](ServiceJob.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

