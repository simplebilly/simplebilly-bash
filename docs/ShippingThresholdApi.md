# ShippingThresholdApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createShippingThreshold**](ShippingThresholdApi.md#createShippingThreshold) | **POST** /api/v1/shipping-thresholds | 
[**deleteShippingThreshold**](ShippingThresholdApi.md#deleteShippingThreshold) | **DELETE** /api/v1/shipping-thresholds/{threshold_id} | 
[**getDeliverable**](ShippingThresholdApi.md#getDeliverable) | **GET** /api/v1/shipping-thresholds/deliverable | 
[**getShippingThreshold**](ShippingThresholdApi.md#getShippingThreshold) | **GET** /api/v1/shipping-thresholds/{threshold_id} | 
[**listShippingThresholds**](ShippingThresholdApi.md#listShippingThresholds) | **GET** /api/v1/shipping-thresholds/ | 
[**updateShippingThreshold**](ShippingThresholdApi.md#updateShippingThreshold) | **PUT** /api/v1/shipping-thresholds/{threshold_id} | 



## createShippingThreshold



### Example

```bash
 createShippingThreshold
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shippingThresholdCreate** | [**ShippingThresholdCreate**](ShippingThresholdCreate.md) |  |

### Return type

[**ShippingThreshold**](ShippingThreshold.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteShippingThreshold



### Example

```bash
 deleteShippingThreshold threshold_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **thresholdId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getDeliverable



### Example

```bash
 getDeliverable  productId=value  warehouseId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **string** |  | [default to null]
 **warehouseId** | **string** |  | [optional] [default to null]

### Return type

[**DeliverableResponse**](DeliverableResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getShippingThreshold



### Example

```bash
 getShippingThreshold threshold_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **thresholdId** | **string** |  | [default to null]

### Return type

[**ShippingThreshold**](ShippingThreshold.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listShippingThresholds



### Example

```bash
 listShippingThresholds  page=value  page_size=value  product_id=value  warehouse_id=value  is_active=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **productId** | **string** |  | [optional] [default to null]
 **warehouseId** | **string** |  | [optional] [default to null]
 **isActive** | **boolean** |  | [optional] [default to null]

### Return type

[**array[ShippingThreshold]**](ShippingThreshold.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateShippingThreshold



### Example

```bash
 updateShippingThreshold threshold_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **thresholdId** | **string** |  | [default to null]
 **shippingThresholdUpdate** | [**ShippingThresholdUpdate**](ShippingThresholdUpdate.md) |  |

### Return type

[**ShippingThreshold**](ShippingThreshold.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

