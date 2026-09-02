# StockTransferApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createStockTransfer**](StockTransferApi.md#createStockTransfer) | **POST** /api/v1/stock-transfers | 
[**deleteStockTransfer**](StockTransferApi.md#deleteStockTransfer) | **DELETE** /api/v1/stock-transfers/{stock_transfer_id} | 
[**getStockTransfer**](StockTransferApi.md#getStockTransfer) | **GET** /api/v1/stock-transfers/{stock_transfer_id} | 
[**listStockTransfers**](StockTransferApi.md#listStockTransfers) | **GET** /api/v1/stock-transfers/ | 
[**updateStockTransferStatus**](StockTransferApi.md#updateStockTransferStatus) | **PUT** /api/v1/stock-transfers/{stock_transfer_id}/status | 



## createStockTransfer



### Example

```bash
 createStockTransfer
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stockTransfer** | [**StockTransfer**](StockTransfer.md) |  |

### Return type

[**StockTransfer**](StockTransfer.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteStockTransfer



### Example

```bash
 deleteStockTransfer stock_transfer_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stockTransferId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getStockTransfer



### Example

```bash
 getStockTransfer stock_transfer_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stockTransferId** | **string** |  | [default to null]

### Return type

[**StockTransfer**](StockTransfer.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listStockTransfers



### Example

```bash
 listStockTransfers  page=value  page_size=value  status=value  warehouse_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **status** | **string** |  | [optional] [default to null]
 **warehouseId** | **string** |  | [optional] [default to null]

### Return type

[**array[StockTransfer]**](StockTransfer.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateStockTransferStatus



### Example

```bash
 updateStockTransferStatus stock_transfer_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stockTransferId** | **string** |  | [default to null]
 **stockTransferStatusUpdate** | [**StockTransferStatusUpdate**](StockTransferStatusUpdate.md) |  |

### Return type

[**StockTransfer**](StockTransfer.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

