# ProductionOrderApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createProductionOrder**](ProductionOrderApi.md#createProductionOrder) | **POST** /api/v1/production-orders | 
[**deleteProductionOrder**](ProductionOrderApi.md#deleteProductionOrder) | **DELETE** /api/v1/production-orders/{production_order_id} | 
[**getProductionOrder**](ProductionOrderApi.md#getProductionOrder) | **GET** /api/v1/production-orders/{production_order_id} | 
[**listProductionOrders**](ProductionOrderApi.md#listProductionOrders) | **GET** /api/v1/production-orders/ | 
[**productionOrderCosting**](ProductionOrderApi.md#productionOrderCosting) | **GET** /api/v1/production-orders/{production_order_id}/costing | Actual-costing report (Nachkalkulation) — material costs from BOM
components at their purchase price plus the resulting per-unit cost and
margin against the finished product&#39;s sale price.
[**updateProductionOrder**](ProductionOrderApi.md#updateProductionOrder) | **PUT** /api/v1/production-orders/{production_order_id} | 
[**updateProductionOrderStatus**](ProductionOrderApi.md#updateProductionOrderStatus) | **PUT** /api/v1/production-orders/{production_order_id}/status | 



## createProductionOrder



### Example

```bash
 createProductionOrder
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productionOrder** | [**ProductionOrder**](ProductionOrder.md) |  |

### Return type

[**ProductionOrder**](ProductionOrder.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteProductionOrder



### Example

```bash
 deleteProductionOrder production_order_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productionOrderId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getProductionOrder



### Example

```bash
 getProductionOrder production_order_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productionOrderId** | **string** |  | [default to null]

### Return type

[**ProductionOrder**](ProductionOrder.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listProductionOrders



### Example

```bash
 listProductionOrders  page=value  pageSize=value  search=value  status=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **search** | **string** |  | [optional] [default to null]
 **status** | **string** | Filter by status. | [optional] [default to null]

### Return type

[**array[ProductionOrder]**](ProductionOrder.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## productionOrderCosting

Actual-costing report (Nachkalkulation) — material costs from BOM
components at their purchase price plus the resulting per-unit cost and
margin against the finished product's sale price.

### Example

```bash
 productionOrderCosting production_order_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productionOrderId** | **string** |  | [default to null]

### Return type

[**ProductionOrderCosting**](ProductionOrderCosting.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateProductionOrder



### Example

```bash
 updateProductionOrder production_order_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productionOrderId** | **string** |  | [default to null]
 **productionOrder** | [**ProductionOrder**](ProductionOrder.md) |  |

### Return type

[**ProductionOrder**](ProductionOrder.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateProductionOrderStatus



### Example

```bash
 updateProductionOrderStatus production_order_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productionOrderId** | **string** |  | [default to null]
 **productionOrderStatusUpdate** | [**ProductionOrderStatusUpdate**](ProductionOrderStatusUpdate.md) |  |

### Return type

[**ProductionOrder**](ProductionOrder.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

