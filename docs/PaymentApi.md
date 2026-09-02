# PaymentApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPayment**](PaymentApi.md#createPayment) | **POST** /api/v1/payments | 
[**deletePayment**](PaymentApi.md#deletePayment) | **DELETE** /api/v1/payments/{id} | 
[**getPayment**](PaymentApi.md#getPayment) | **GET** /api/v1/payments/{id} | 
[**getPayments**](PaymentApi.md#getPayments) | **GET** /api/v1/payments/ | 
[**paymentRestore**](PaymentApi.md#paymentRestore) | **POST** /api/v1/payments/{id}/restore | 
[**updatePayment**](PaymentApi.md#updatePayment) | **PUT** /api/v1/payments/{id} | 



## createPayment



### Example

```bash
 createPayment
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paymentCreate** | [**PaymentCreate**](PaymentCreate.md) |  |

### Return type

[**Payment**](Payment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deletePayment



### Example

```bash
 deletePayment id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getPayment



### Example

```bash
 getPayment id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]

### Return type

[**Payment**](Payment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getPayments



### Example

```bash
 getPayments  page=value  page_size=value  search=value  include_deleted=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **search** | **string** |  | [optional] [default to null]
 **includeDeleted** | **boolean** | Soft-delete entities: set true to include rows with 'deleted_at' set. | [optional] [default to null]

### Return type

[**array[Payment]**](Payment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## paymentRestore



### Example

```bash
 paymentRestore id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]

### Return type

[**Payment**](Payment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updatePayment



### Example

```bash
 updatePayment id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]
 **body** | **AnyType** |  |

### Return type

[**Payment**](Payment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

