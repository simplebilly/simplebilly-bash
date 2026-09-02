# WarehouseStockApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWarehouseStock**](WarehouseStockApi.md#createWarehouseStock) | **POST** /api/v1/warehouses/{warehouse_id}/stock | 
[**deleteWarehouseStock**](WarehouseStockApi.md#deleteWarehouseStock) | **DELETE** /api/v1/warehouses/{warehouse_id}/stock/{product_id} | 
[**listWarehouseStock**](WarehouseStockApi.md#listWarehouseStock) | **GET** /api/v1/warehouses/{warehouse_id}/stock | 
[**updateWarehouseStock**](WarehouseStockApi.md#updateWarehouseStock) | **PUT** /api/v1/warehouses/{warehouse_id}/stock/{product_id} | 



## createWarehouseStock



### Example

```bash
 createWarehouseStock warehouse_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warehouseId** | **string** |  | [default to null]
 **stockAdjustment** | [**StockAdjustment**](StockAdjustment.md) |  |

### Return type

[**WarehouseStock**](WarehouseStock.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteWarehouseStock



### Example

```bash
 deleteWarehouseStock warehouse_id=value product_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warehouseId** | **string** |  | [default to null]
 **productId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listWarehouseStock



### Example

```bash
 listWarehouseStock warehouse_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warehouseId** | **string** |  | [default to null]

### Return type

[**array[WarehouseStock]**](WarehouseStock.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateWarehouseStock



### Example

```bash
 updateWarehouseStock warehouse_id=value product_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warehouseId** | **string** |  | [default to null]
 **productId** | **string** |  | [default to null]
 **stockAdjustment** | [**StockAdjustment**](StockAdjustment.md) |  |

### Return type

[**WarehouseStock**](WarehouseStock.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

