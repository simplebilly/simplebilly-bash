# ReturnOrderApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createReturnOrder**](ReturnOrderApi.md#createReturnOrder) | **POST** /api/v1/returns | 
[**deleteReturnOrder**](ReturnOrderApi.md#deleteReturnOrder) | **DELETE** /api/v1/returns/{return_order_id} | 
[**getReturnOrder**](ReturnOrderApi.md#getReturnOrder) | **GET** /api/v1/returns/{return_order_id} | 
[**listReturnOrders**](ReturnOrderApi.md#listReturnOrders) | **GET** /api/v1/returns/ | 
[**returnLogisticsQueue**](ReturnOrderApi.md#returnLogisticsQueue) | **GET** /api/v1/returns/logistics-queue | 
[**returnLogisticsSummary**](ReturnOrderApi.md#returnLogisticsSummary) | **GET** /api/v1/returns/logistics-summary | Returns-logistics aggregation for the dashboard: quantities received,
restocked and scrapped per warehouse.
[**updateReturnOrder**](ReturnOrderApi.md#updateReturnOrder) | **PUT** /api/v1/returns/{return_order_id} | 
[**updateReturnOrderStatus**](ReturnOrderApi.md#updateReturnOrderStatus) | **PUT** /api/v1/returns/{return_order_id}/status | 



## createReturnOrder



### Example

```bash
 createReturnOrder
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **returnOrder** | [**ReturnOrder**](ReturnOrder.md) |  |

### Return type

[**ReturnOrder**](ReturnOrder.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteReturnOrder



### Example

```bash
 deleteReturnOrder return_order_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **returnOrderId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getReturnOrder



### Example

```bash
 getReturnOrder return_order_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **returnOrderId** | **string** |  | [default to null]

### Return type

[**ReturnOrder**](ReturnOrder.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listReturnOrders



### Example

```bash
 listReturnOrders  page=value  page_size=value  status=value  customer_name=value  order_number=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **status** | **string** |  | [optional] [default to null]
 **customerName** | **string** |  | [optional] [default to null]
 **orderNumber** | **string** |  | [optional] [default to null]

### Return type

[**array[ReturnOrder]**](ReturnOrder.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## returnLogisticsQueue



### Example

```bash
 returnLogisticsQueue
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[ReturnLogisticsQueueItem]**](ReturnLogisticsQueueItem.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## returnLogisticsSummary

Returns-logistics aggregation for the dashboard: quantities received,
restocked and scrapped per warehouse.

### Example

```bash
 returnLogisticsSummary
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ReturnLogisticsSummary**](ReturnLogisticsSummary.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateReturnOrder



### Example

```bash
 updateReturnOrder return_order_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **returnOrderId** | **string** |  | [default to null]
 **body** | **AnyType** |  |

### Return type

[**ReturnOrder**](ReturnOrder.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateReturnOrderStatus



### Example

```bash
 updateReturnOrderStatus return_order_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **returnOrderId** | **string** |  | [default to null]
 **returnOrderStatusUpdate** | [**ReturnOrderStatusUpdate**](ReturnOrderStatusUpdate.md) |  |

### Return type

[**ReturnOrder**](ReturnOrder.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

