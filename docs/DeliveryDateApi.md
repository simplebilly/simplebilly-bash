# DeliveryDateApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDeliveryDate**](DeliveryDateApi.md#createDeliveryDate) | **POST** /api/v1/delivery-dates | 
[**deleteDeliveryDate**](DeliveryDateApi.md#deleteDeliveryDate) | **DELETE** /api/v1/delivery-dates/{delivery_date_id} | 
[**getDeliveryDate**](DeliveryDateApi.md#getDeliveryDate) | **GET** /api/v1/delivery-dates/{delivery_date_id} | 
[**getDeliveryPerformance**](DeliveryDateApi.md#getDeliveryPerformance) | **GET** /api/v1/delivery-dates/performance | On-time performance summary: how many promised delivery dates were met
within a period.
[**listDeliveryDates**](DeliveryDateApi.md#listDeliveryDates) | **GET** /api/v1/delivery-dates/ | 
[**updateDeliveryDate**](DeliveryDateApi.md#updateDeliveryDate) | **PUT** /api/v1/delivery-dates/{delivery_date_id} | 
[**updateDeliveryDateStatus**](DeliveryDateApi.md#updateDeliveryDateStatus) | **PUT** /api/v1/delivery-dates/{delivery_date_id}/status | 



## createDeliveryDate



### Example

```bash
 createDeliveryDate
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deliveryDateCreate** | [**DeliveryDateCreate**](DeliveryDateCreate.md) |  |

### Return type

[**DeliveryDate**](DeliveryDate.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteDeliveryDate



### Example

```bash
 deleteDeliveryDate delivery_date_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deliveryDateId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getDeliveryDate



### Example

```bash
 getDeliveryDate delivery_date_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deliveryDateId** | **string** |  | [default to null]

### Return type

[**DeliveryDate**](DeliveryDate.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getDeliveryPerformance

On-time performance summary: how many promised delivery dates were met
within a period.

### Example

```bash
 getDeliveryPerformance  page=value  pageSize=value  orderNumber=value  status=value  from=value  to=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **orderNumber** | **string** |  | [optional] [default to null]
 **status** | **string** |  | [optional] [default to null]
 **from** | **string** | Only dates on or after this date. | [optional] [default to null]
 **to** | **string** | Only dates on or before this date. | [optional] [default to null]

### Return type

[**AnyType**](AnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listDeliveryDates



### Example

```bash
 listDeliveryDates  page=value  pageSize=value  orderNumber=value  status=value  from=value  to=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **orderNumber** | **string** |  | [optional] [default to null]
 **status** | **string** |  | [optional] [default to null]
 **from** | **string** | Only dates on or after this date. | [optional] [default to null]
 **to** | **string** | Only dates on or before this date. | [optional] [default to null]

### Return type

[**array[DeliveryDate]**](DeliveryDate.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateDeliveryDate



### Example

```bash
 updateDeliveryDate delivery_date_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deliveryDateId** | **string** |  | [default to null]
 **body** | **AnyType** |  |

### Return type

[**DeliveryDate**](DeliveryDate.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateDeliveryDateStatus



### Example

```bash
 updateDeliveryDateStatus delivery_date_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deliveryDateId** | **string** |  | [default to null]
 **deliveryDateStatusUpdate** | [**DeliveryDateStatusUpdate**](DeliveryDateStatusUpdate.md) |  |

### Return type

[**DeliveryDate**](DeliveryDate.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

