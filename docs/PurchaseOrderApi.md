# PurchaseOrderApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPurchaseOrder**](PurchaseOrderApi.md#createPurchaseOrder) | **POST** /api/v1/purchase-orders | 
[**deletePurchaseOrder**](PurchaseOrderApi.md#deletePurchaseOrder) | **DELETE** /api/v1/purchase-orders/{purchase_order_id} | 
[**getPurchaseOrder**](PurchaseOrderApi.md#getPurchaseOrder) | **GET** /api/v1/purchase-orders/{purchase_order_id} | 
[**listPurchaseOrders**](PurchaseOrderApi.md#listPurchaseOrders) | **GET** /api/v1/purchase-orders/ | 
[**matchInvoice**](PurchaseOrderApi.md#matchInvoice) | **POST** /api/v1/purchase-orders/{purchase_order_id}/match-invoice | 3-way invoice check (Rechnungsprüfung): compares the purchase order line
items, the quantities received via goods receipts, and the supplier
invoice line items, reporting quantity and price variances per product.
[**updatePurchaseOrder**](PurchaseOrderApi.md#updatePurchaseOrder) | **PUT** /api/v1/purchase-orders/{purchase_order_id} | 
[**updatePurchaseOrderStatus**](PurchaseOrderApi.md#updatePurchaseOrderStatus) | **PUT** /api/v1/purchase-orders/{purchase_order_id}/status | 



## createPurchaseOrder



### Example

```bash
 createPurchaseOrder
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **purchaseOrder** | [**PurchaseOrder**](PurchaseOrder.md) |  |

### Return type

[**PurchaseOrder**](PurchaseOrder.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deletePurchaseOrder



### Example

```bash
 deletePurchaseOrder purchase_order_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **purchaseOrderId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getPurchaseOrder



### Example

```bash
 getPurchaseOrder purchase_order_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **purchaseOrderId** | **string** |  | [default to null]

### Return type

[**PurchaseOrder**](PurchaseOrder.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listPurchaseOrders



### Example

```bash
 listPurchaseOrders  page=value  page_size=value  status=value  supplier_name=value  search=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **status** | **string** |  | [optional] [default to null]
 **supplierName** | **string** |  | [optional] [default to null]
 **search** | **string** |  | [optional] [default to null]

### Return type

[**array[PurchaseOrder]**](PurchaseOrder.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## matchInvoice

3-way invoice check (Rechnungsprüfung): compares the purchase order line
items, the quantities received via goods receipts, and the supplier
invoice line items, reporting quantity and price variances per product.

### Example

```bash
 matchInvoice purchase_order_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **purchaseOrderId** | **string** |  | [default to null]
 **invoiceMatchRequest** | [**InvoiceMatchRequest**](InvoiceMatchRequest.md) |  |

### Return type

[**AnyType**](AnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updatePurchaseOrder



### Example

```bash
 updatePurchaseOrder purchase_order_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **purchaseOrderId** | **string** |  | [default to null]
 **body** | **AnyType** |  |

### Return type

[**PurchaseOrder**](PurchaseOrder.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updatePurchaseOrderStatus



### Example

```bash
 updatePurchaseOrderStatus purchase_order_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **purchaseOrderId** | **string** |  | [default to null]
 **purchaseOrderStatusUpdate** | [**PurchaseOrderStatusUpdate**](PurchaseOrderStatusUpdate.md) |  |

### Return type

[**PurchaseOrder**](PurchaseOrder.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

