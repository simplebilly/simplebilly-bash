# OrderConfirmationApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createConfirmation**](OrderConfirmationApi.md#createConfirmation) | **POST** /api/v1/order-confirmations | 
[**deleteConfirmation**](OrderConfirmationApi.md#deleteConfirmation) | **DELETE** /api/v1/order-confirmations/{confirmation_id} | 
[**downloadConfirmationPdf**](OrderConfirmationApi.md#downloadConfirmationPdf) | **GET** /api/v1/order-confirmations/{confirmation_id}/pdf | 
[**getConfirmation**](OrderConfirmationApi.md#getConfirmation) | **GET** /api/v1/order-confirmations/{confirmation_id} | 
[**listConfirmations**](OrderConfirmationApi.md#listConfirmations) | **GET** /api/v1/order-confirmations/ | 
[**orderconfirmationRestore**](OrderConfirmationApi.md#orderconfirmationRestore) | **POST** /api/v1/order-confirmations/{confirmation_id}/restore | 
[**pursueConfirmation**](OrderConfirmationApi.md#pursueConfirmation) | **POST** /api/v1/order-confirmations/{confirmation_id}/pursue | 



## createConfirmation



### Example

```bash
 createConfirmation
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderConfirmationCreate** | [**OrderConfirmationCreate**](OrderConfirmationCreate.md) |  |

### Return type

[**OrderConfirmation**](OrderConfirmation.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteConfirmation



### Example

```bash
 deleteConfirmation confirmation_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **confirmationId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## downloadConfirmationPdf



### Example

```bash
 downloadConfirmationPdf confirmation_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **confirmationId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/pdf, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getConfirmation



### Example

```bash
 getConfirmation confirmation_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **confirmationId** | **string** |  | [default to null]

### Return type

[**OrderConfirmation**](OrderConfirmation.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listConfirmations



### Example

```bash
 listConfirmations  page=value  page_size=value  search=value  include_deleted=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **search** | **string** |  | [optional] [default to null]
 **includeDeleted** | **boolean** | Soft-delete entities: set true to include rows with 'deleted_at' set. | [optional] [default to null]

### Return type

[**array[OrderConfirmation]**](OrderConfirmation.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## orderconfirmationRestore



### Example

```bash
 orderconfirmationRestore confirmation_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **confirmationId** | **string** |  | [default to null]

### Return type

[**OrderConfirmation**](OrderConfirmation.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## pursueConfirmation



### Example

```bash
 pursueConfirmation confirmation_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **confirmationId** | **string** |  | [default to null]

### Return type

[**DeliveryNote**](DeliveryNote.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

