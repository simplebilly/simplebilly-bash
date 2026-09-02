# InventoryCountApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createInventoryCount**](InventoryCountApi.md#createInventoryCount) | **POST** /api/v1/inventory-counts | 
[**deleteInventoryCount**](InventoryCountApi.md#deleteInventoryCount) | **DELETE** /api/v1/inventory-counts/{inventory_count_id} | 
[**generateInventoryCount**](InventoryCountApi.md#generateInventoryCount) | **POST** /api/v1/inventory-counts/generate | 
[**getInventoryCount**](InventoryCountApi.md#getInventoryCount) | **GET** /api/v1/inventory-counts/{inventory_count_id} | 
[**listInventoryCounts**](InventoryCountApi.md#listInventoryCounts) | **GET** /api/v1/inventory-counts/ | 
[**updateInventoryCount**](InventoryCountApi.md#updateInventoryCount) | **PUT** /api/v1/inventory-counts/{inventory_count_id} | 
[**updateInventoryCountStatus**](InventoryCountApi.md#updateInventoryCountStatus) | **PUT** /api/v1/inventory-counts/{inventory_count_id}/status | 



## createInventoryCount



### Example

```bash
 createInventoryCount
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inventoryCount** | [**InventoryCount**](InventoryCount.md) |  |

### Return type

[**InventoryCount**](InventoryCount.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteInventoryCount



### Example

```bash
 deleteInventoryCount inventory_count_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inventoryCountId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## generateInventoryCount



### Example

```bash
 generateInventoryCount
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generateCountRequest** | [**GenerateCountRequest**](GenerateCountRequest.md) |  |

### Return type

[**InventoryCount**](InventoryCount.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getInventoryCount



### Example

```bash
 getInventoryCount inventory_count_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inventoryCountId** | **string** |  | [default to null]

### Return type

[**InventoryCount**](InventoryCount.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listInventoryCounts



### Example

```bash
 listInventoryCounts  page=value  page_size=value  status=value  warehouse_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **status** | **string** |  | [optional] [default to null]
 **warehouseId** | **string** |  | [optional] [default to null]

### Return type

[**array[InventoryCount]**](InventoryCount.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateInventoryCount



### Example

```bash
 updateInventoryCount inventory_count_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inventoryCountId** | **string** |  | [default to null]
 **body** | **AnyType** |  |

### Return type

[**InventoryCount**](InventoryCount.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateInventoryCountStatus



### Example

```bash
 updateInventoryCountStatus inventory_count_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inventoryCountId** | **string** |  | [default to null]
 **inventoryCountStatusUpdate** | [**InventoryCountStatusUpdate**](InventoryCountStatusUpdate.md) |  |

### Return type

[**InventoryCount**](InventoryCount.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

