# StockMovementApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**getStockMovement**](StockMovementApi.md#getStockMovement) | **GET** /api/v1/stock-movements/{movement_id} | 
[**listStockMovements**](StockMovementApi.md#listStockMovements) | **GET** /api/v1/stock-movements/ | 



## getStockMovement



### Example

```bash
 getStockMovement movement_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **movementId** | **string** |  | [default to null]

### Return type

[**StockMovement**](StockMovement.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listStockMovements



### Example

```bash
 listStockMovements  page=value  pageSize=value  productId=value  warehouseId=value  movementType=value  from=value  to=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **productId** | **string** |  | [optional] [default to null]
 **warehouseId** | **string** |  | [optional] [default to null]
 **movementType** | **string** |  | [optional] [default to null]
 **from** | **string** | Only movements on or after this date (inclusive). | [optional] [default to null]
 **to** | **string** | Only movements on or before this date (inclusive). | [optional] [default to null]

### Return type

[**array[StockMovement]**](StockMovement.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

