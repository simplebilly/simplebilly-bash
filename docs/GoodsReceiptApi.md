# GoodsReceiptApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGoodsReceipt**](GoodsReceiptApi.md#createGoodsReceipt) | **POST** /api/v1/goods-receipts | 
[**deleteGoodsReceipt**](GoodsReceiptApi.md#deleteGoodsReceipt) | **DELETE** /api/v1/goods-receipts/{goods_receipt_id} | 
[**getGoodsReceipt**](GoodsReceiptApi.md#getGoodsReceipt) | **GET** /api/v1/goods-receipts/{goods_receipt_id} | 
[**listGoodsReceipts**](GoodsReceiptApi.md#listGoodsReceipts) | **GET** /api/v1/goods-receipts/ | 



## createGoodsReceipt



### Example

```bash
 createGoodsReceipt
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **goodsReceipt** | [**GoodsReceipt**](GoodsReceipt.md) |  |

### Return type

[**GoodsReceipt**](GoodsReceipt.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteGoodsReceipt



### Example

```bash
 deleteGoodsReceipt goods_receipt_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **goodsReceiptId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getGoodsReceipt



### Example

```bash
 getGoodsReceipt goods_receipt_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **goodsReceiptId** | **string** |  | [default to null]

### Return type

[**GoodsReceipt**](GoodsReceipt.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listGoodsReceipts



### Example

```bash
 listGoodsReceipts  page=value  page_size=value  purchase_order_id=value  supplier_name=value  warehouse_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **purchaseOrderId** | **string** |  | [optional] [default to null]
 **supplierName** | **string** |  | [optional] [default to null]
 **warehouseId** | **string** |  | [optional] [default to null]

### Return type

[**array[GoodsReceipt]**](GoodsReceipt.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

