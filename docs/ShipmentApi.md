# ShipmentApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createShipment**](ShipmentApi.md#createShipment) | **POST** /api/v1/shipments | 
[**createShipmentFromOrder**](ShipmentApi.md#createShipmentFromOrder) | **POST** /api/v1/orders/{order_number}/shipments | Create a real shipment for an order: calls the configured carrier&#39;s label
API, stores the returned tracking/label on a new shipment row, and marks
the order as shipped.
[**deleteShipment**](ShipmentApi.md#deleteShipment) | **DELETE** /api/v1/shipments/{shipment_id} | 
[**getShipment**](ShipmentApi.md#getShipment) | **GET** /api/v1/shipments/{shipment_id} | 
[**listShipments**](ShipmentApi.md#listShipments) | **GET** /api/v1/shipments | 
[**trackOrderPublic**](ShipmentApi.md#trackOrderPublic) | **POST** /api/v1/public/track | Customer-facing tracking lookup: order number + email → shipment status and
live carrier events. No auth (public storefront API).
[**trackShipmentApi**](ShipmentApi.md#trackShipmentApi) | **GET** /api/v1/shipments/{shipment_id}/tracking | 
[**updateShipmentStatus**](ShipmentApi.md#updateShipmentStatus) | **PUT** /api/v1/shipments/{shipment_id}/status | 



## createShipment



### Example

```bash
 createShipment
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment** | [**Shipment**](Shipment.md) |  |

### Return type

[**Shipment**](Shipment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createShipmentFromOrder

Create a real shipment for an order: calls the configured carrier's label
API, stores the returned tracking/label on a new shipment row, and marks
the order as shipped.

### Example

```bash
 createShipmentFromOrder order_number=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderNumber** | **string** |  | [default to null]
 **createShipmentRequest** | [**CreateShipmentRequest**](CreateShipmentRequest.md) |  |

### Return type

[**Shipment**](Shipment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteShipment



### Example

```bash
 deleteShipment shipment_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipmentId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getShipment



### Example

```bash
 getShipment shipment_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipmentId** | **string** |  | [default to null]

### Return type

[**Shipment**](Shipment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listShipments



### Example

```bash
 listShipments  page=value  page_size=value  search=value  include_deleted=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **search** | **string** |  | [optional] [default to null]
 **includeDeleted** | **boolean** | Soft-delete entities: set true to include rows with 'deleted_at' set. | [optional] [default to null]

### Return type

[**array[Shipment]**](Shipment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## trackOrderPublic

Customer-facing tracking lookup: order number + email → shipment status and
live carrier events. No auth (public storefront API).

### Example

```bash
 trackOrderPublic
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **trackOrderRequest** | [**TrackOrderRequest**](TrackOrderRequest.md) |  |

### Return type

[**TrackOrderResponse**](TrackOrderResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## trackShipmentApi



### Example

```bash
 trackShipmentApi shipment_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipmentId** | **string** |  | [default to null]

### Return type

[**TrackingInfo**](TrackingInfo.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateShipmentStatus



### Example

```bash
 updateShipmentStatus shipment_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipmentId** | **string** |  | [default to null]
 **shipmentStatusUpdate** | [**ShipmentStatusUpdate**](ShipmentStatusUpdate.md) |  |

### Return type

[**Shipment**](Shipment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

