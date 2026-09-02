# DeliveryAppointmentApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDeliveryAppointment**](DeliveryAppointmentApi.md#createDeliveryAppointment) | **POST** /api/v1/delivery-appointments | 
[**deleteDeliveryAppointment**](DeliveryAppointmentApi.md#deleteDeliveryAppointment) | **DELETE** /api/v1/delivery-appointments/{appointment_id} | 
[**getDeliveryAppointment**](DeliveryAppointmentApi.md#getDeliveryAppointment) | **GET** /api/v1/delivery-appointments/{appointment_id} | 
[**getPublicDeliveryAppointmentStatus**](DeliveryAppointmentApi.md#getPublicDeliveryAppointmentStatus) | **GET** /api/v1/public/delivery-appointments/status | Supplier/carrier checks appointment status (public, no auth). The
appointment is only revealed when email AND token match.
[**listDeliveryAppointments**](DeliveryAppointmentApi.md#listDeliveryAppointments) | **GET** /api/v1/delivery-appointments | 
[**requestPublicDeliveryAppointment**](DeliveryAppointmentApi.md#requestPublicDeliveryAppointment) | **POST** /api/v1/public/delivery-appointments/request | Supplier/carrier requests an inbound delivery slot (public, no auth).
The tenant is derived from the warehouse found by &#39;code&#39; — never from
the request.
[**updateDeliveryAppointment**](DeliveryAppointmentApi.md#updateDeliveryAppointment) | **PUT** /api/v1/delivery-appointments/{appointment_id} | 
[**updateDeliveryAppointmentStatus**](DeliveryAppointmentApi.md#updateDeliveryAppointmentStatus) | **PUT** /api/v1/delivery-appointments/{appointment_id}/status | 



## createDeliveryAppointment



### Example

```bash
 createDeliveryAppointment
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deliveryAppointmentCreate** | [**DeliveryAppointmentCreate**](DeliveryAppointmentCreate.md) |  |

### Return type

[**DeliveryAppointment**](DeliveryAppointment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteDeliveryAppointment



### Example

```bash
 deleteDeliveryAppointment appointment_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appointmentId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getDeliveryAppointment



### Example

```bash
 getDeliveryAppointment appointment_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appointmentId** | **string** |  | [default to null]

### Return type

[**DeliveryAppointment**](DeliveryAppointment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getPublicDeliveryAppointmentStatus

Supplier/carrier checks appointment status (public, no auth). The
appointment is only revealed when email AND token match.

### Example

```bash
 getPublicDeliveryAppointmentStatus  appointmentId=value  email=value  token=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appointmentId** | **string** |  | [default to null]
 **email** | **string** |  | [default to null]
 **token** | **string** |  | [default to null]

### Return type

[**PublicDeliveryAppointmentStatusResponse**](PublicDeliveryAppointmentStatusResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listDeliveryAppointments



### Example

```bash
 listDeliveryAppointments  page=value  page_size=value  status=value  warehouse_id=value  from=value  to=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **status** | **string** |  | [optional] [default to null]
 **warehouseId** | **string** |  | [optional] [default to null]
 **from** | **string** |  | [optional] [default to null]
 **to** | **string** |  | [optional] [default to null]

### Return type

[**array[DeliveryAppointment]**](DeliveryAppointment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## requestPublicDeliveryAppointment

Supplier/carrier requests an inbound delivery slot (public, no auth).
The tenant is derived from the warehouse found by 'code' — never from
the request.

### Example

```bash
 requestPublicDeliveryAppointment
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **publicDeliveryAppointmentRequest** | [**PublicDeliveryAppointmentRequest**](PublicDeliveryAppointmentRequest.md) |  |

### Return type

[**PublicDeliveryAppointmentResponse**](PublicDeliveryAppointmentResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateDeliveryAppointment



### Example

```bash
 updateDeliveryAppointment appointment_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appointmentId** | **string** |  | [default to null]
 **body** | **AnyType** |  |

### Return type

[**DeliveryAppointment**](DeliveryAppointment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateDeliveryAppointmentStatus



### Example

```bash
 updateDeliveryAppointmentStatus appointment_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appointmentId** | **string** |  | [default to null]
 **appointmentStatusUpdate** | [**AppointmentStatusUpdate**](AppointmentStatusUpdate.md) |  |

### Return type

[**DeliveryAppointment**](DeliveryAppointment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

