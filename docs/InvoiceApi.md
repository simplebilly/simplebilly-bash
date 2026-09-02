# InvoiceApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createInvoice**](InvoiceApi.md#createInvoice) | **POST** /api/v1/invoices | 
[**deleteInvoice**](InvoiceApi.md#deleteInvoice) | **DELETE** /api/v1/invoices/{id} | 
[**downloadInvoicePdf**](InvoiceApi.md#downloadInvoicePdf) | **GET** /api/v1/invoices/{id}/pdf | 
[**getInvoice**](InvoiceApi.md#getInvoice) | **GET** /api/v1/invoices/{id} | 
[**getInvoicePdfUrl**](InvoiceApi.md#getInvoicePdfUrl) | **GET** /api/v1/invoices/{id}/pdf-url | 
[**getInvoices**](InvoiceApi.md#getInvoices) | **GET** /api/v1/invoices/ | 
[**invoiceRestore**](InvoiceApi.md#invoiceRestore) | **POST** /api/v1/invoices/{id}/restore | 
[**updateInvoice**](InvoiceApi.md#updateInvoice) | **PUT** /api/v1/invoices/{id} | 



## createInvoice



### Example

```bash
 createInvoice
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoiceCreate** | [**InvoiceCreate**](InvoiceCreate.md) |  |

### Return type

[**Invoice**](Invoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteInvoice



### Example

```bash
 deleteInvoice id=value
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


## downloadInvoicePdf



### Example

```bash
 downloadInvoicePdf id=value
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
- **Accept**: application/pdf, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getInvoice



### Example

```bash
 getInvoice id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]

### Return type

[**Invoice**](Invoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getInvoicePdfUrl



### Example

```bash
 getInvoicePdfUrl id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]

### Return type

[**InvoicePdfUrlResponse**](InvoicePdfUrlResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getInvoices



### Example

```bash
 getInvoices  page=value  page_size=value  search=value  include_deleted=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **search** | **string** |  | [optional] [default to null]
 **includeDeleted** | **boolean** | Soft-delete entities: set true to include rows with 'deleted_at' set. | [optional] [default to null]

### Return type

[**array[Invoice]**](Invoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## invoiceRestore



### Example

```bash
 invoiceRestore id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]

### Return type

[**Invoice**](Invoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateInvoice



### Example

```bash
 updateInvoice id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]
 **body** | **AnyType** |  |

### Return type

[**Invoice**](Invoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

