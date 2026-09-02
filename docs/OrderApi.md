# OrderApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**addOrderTags**](OrderApi.md#addOrderTags) | **POST** /api/v1/orders/{order_id}/tags | 
[**findOrderByExternalRef**](OrderApi.md#findOrderByExternalRef) | **GET** /api/v1/orders/by-ext-ref/{ext_ref} | 
[**getOrder**](OrderApi.md#getOrder) | **GET** /api/v1/order/{order_number} | 
[**getOrders**](OrderApi.md#getOrders) | **GET** /api/v1/orders | 
[**patchOrder**](OrderApi.md#patchOrder) | **PATCH** /api/v1/orders/{order_id} | 
[**replaceOrderTags**](OrderApi.md#replaceOrderTags) | **PUT** /api/v1/orders/{order_id}/tags | 
[**updateOrderState**](OrderApi.md#updateOrderState) | **PUT** /api/v1/orders/{order_id}/state | 



## addOrderTags



### Example

```bash
 addOrderTags order_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **string** |  | [default to null]
 **orderTagsRequest** | [**OrderTagsRequest**](OrderTagsRequest.md) |  |

### Return type

[**Order**](Order.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## findOrderByExternalRef



### Example

```bash
 findOrderByExternalRef ext_ref=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **extRef** | **string** |  | [default to null]

### Return type

[**Order**](Order.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getOrder



### Example

```bash
 getOrder order_number=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderNumber** | **string** |  | [default to null]

### Return type

[**Order**](Order.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getOrders



### Example

```bash
 getOrders  page=value  page_size=value  search=value  include_deleted=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **search** | **string** |  | [optional] [default to null]
 **includeDeleted** | **boolean** | Soft-delete entities: set true to include rows with 'deleted_at' set. | [optional] [default to null]

### Return type

[**array[Order]**](Order.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchOrder



### Example

```bash
 patchOrder order_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **string** |  | [default to null]
 **body** | **AnyType** |  |

### Return type

[**Order**](Order.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## replaceOrderTags



### Example

```bash
 replaceOrderTags order_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **string** |  | [default to null]
 **orderTagsRequest** | [**OrderTagsRequest**](OrderTagsRequest.md) |  |

### Return type

[**Order**](Order.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateOrderState



### Example

```bash
 updateOrderState order_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **string** |  | [default to null]
 **orderStateUpdate** | [**OrderStateUpdate**](OrderStateUpdate.md) |  |

### Return type

[**Order**](Order.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

