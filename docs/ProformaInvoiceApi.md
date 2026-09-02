# ProformaInvoiceApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**convertProformaToInvoice**](ProformaInvoiceApi.md#convertProformaToInvoice) | **POST** /api/v1/proforma-invoices/{proforma_id}/convert | 
[**createProformaInvoice**](ProformaInvoiceApi.md#createProformaInvoice) | **POST** /api/v1/proforma-invoices | 
[**deleteProformaInvoice**](ProformaInvoiceApi.md#deleteProformaInvoice) | **DELETE** /api/v1/proforma-invoices/{proforma_id} | 
[**getProformaInvoice**](ProformaInvoiceApi.md#getProformaInvoice) | **GET** /api/v1/proforma-invoices/{proforma_id} | 
[**listProformaInvoices**](ProformaInvoiceApi.md#listProformaInvoices) | **GET** /api/v1/proforma-invoices/ | 
[**updateProformaInvoice**](ProformaInvoiceApi.md#updateProformaInvoice) | **PUT** /api/v1/proforma-invoices/{proforma_id} | 



## convertProformaToInvoice



### Example

```bash
 convertProformaToInvoice proforma_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **proformaId** | **string** |  | [default to null]

### Return type

[**ConvertResponse**](ConvertResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createProformaInvoice



### Example

```bash
 createProformaInvoice
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **proformaInvoice** | [**ProformaInvoice**](ProformaInvoice.md) |  |

### Return type

[**ProformaInvoice**](ProformaInvoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteProformaInvoice



### Example

```bash
 deleteProformaInvoice proforma_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **proformaId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getProformaInvoice



### Example

```bash
 getProformaInvoice proforma_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **proformaId** | **string** |  | [default to null]

### Return type

[**ProformaInvoice**](ProformaInvoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listProformaInvoices



### Example

```bash
 listProformaInvoices  page=value  page_size=value  status=value  customer_id=value  order_number=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **status** | **string** |  | [optional] [default to null]
 **customerId** | **string** |  | [optional] [default to null]
 **orderNumber** | **string** |  | [optional] [default to null]

### Return type

[**array[ProformaInvoice]**](ProformaInvoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateProformaInvoice



### Example

```bash
 updateProformaInvoice proforma_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **proformaId** | **string** |  | [default to null]
 **body** | **AnyType** |  |

### Return type

[**ProformaInvoice**](ProformaInvoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

