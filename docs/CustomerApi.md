# CustomerApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCustomer**](CustomerApi.md#createCustomer) | **POST** /api/v1/customers | 
[**customerRestore**](CustomerApi.md#customerRestore) | **POST** /api/v1/customers/{customer_id}/restore | 
[**deleteCustomer**](CustomerApi.md#deleteCustomer) | **DELETE** /api/v1/customers/{customer_id} | 
[**getCustomer**](CustomerApi.md#getCustomer) | **GET** /api/v1/customers/{customer_id} | 
[**getCustomers**](CustomerApi.md#getCustomers) | **GET** /api/v1/customers/ | 
[**updateCustomer**](CustomerApi.md#updateCustomer) | **PUT** /api/v1/customers/{customer_id} | 



## createCustomer



### Example

```bash
 createCustomer
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerCreate** | [**CustomerCreate**](CustomerCreate.md) |  |

### Return type

[**Customer**](Customer.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## customerRestore



### Example

```bash
 customerRestore customer_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **string** |  | [default to null]

### Return type

[**Customer**](Customer.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteCustomer



### Example

```bash
 deleteCustomer customer_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCustomer



### Example

```bash
 getCustomer customer_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **string** |  | [default to null]

### Return type

[**Customer**](Customer.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCustomers



### Example

```bash
 getCustomers  page=value  page_size=value  search=value  include_deleted=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **search** | **string** |  | [optional] [default to null]
 **includeDeleted** | **boolean** | Soft-delete entities: set true to include rows with 'deleted_at' set. | [optional] [default to null]

### Return type

[**array[Customer]**](Customer.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateCustomer



### Example

```bash
 updateCustomer customer_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **string** |  | [default to null]
 **customerUpdate** | [**CustomerUpdate**](CustomerUpdate.md) |  |

### Return type

[**Customer**](Customer.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

