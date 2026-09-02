# ShareholderApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createShareholder**](ShareholderApi.md#createShareholder) | **POST** /api/v1/shareholders | 
[**deleteShareholder**](ShareholderApi.md#deleteShareholder) | **DELETE** /api/v1/shareholders/{id} | 
[**getShareholder**](ShareholderApi.md#getShareholder) | **GET** /api/v1/shareholders/{id} | 
[**getShareholders**](ShareholderApi.md#getShareholders) | **GET** /api/v1/shareholders/ | 
[**updateShareholder**](ShareholderApi.md#updateShareholder) | **PUT** /api/v1/shareholders/{id} | 



## createShareholder



### Example

```bash
 createShareholder
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shareholderCreate** | [**ShareholderCreate**](ShareholderCreate.md) |  |

### Return type

[**Shareholder**](Shareholder.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteShareholder



### Example

```bash
 deleteShareholder id=value
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


## getShareholder



### Example

```bash
 getShareholder id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]

### Return type

[**Shareholder**](Shareholder.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getShareholders



### Example

```bash
 getShareholders  page=value  page_size=value  search=value  include_deleted=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **search** | **string** |  | [optional] [default to null]
 **includeDeleted** | **boolean** | Soft-delete entities: set true to include rows with 'deleted_at' set. | [optional] [default to null]

### Return type

[**array[Shareholder]**](Shareholder.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateShareholder



### Example

```bash
 updateShareholder id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]
 **shareholderUpdate** | [**ShareholderUpdate**](ShareholderUpdate.md) |  |

### Return type

[**Shareholder**](Shareholder.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

