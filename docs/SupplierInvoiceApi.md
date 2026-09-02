# SupplierInvoiceApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSupplierInvoice**](SupplierInvoiceApi.md#createSupplierInvoice) | **POST** /api/v1/supplier-invoices | 
[**deleteSupplierInvoice**](SupplierInvoiceApi.md#deleteSupplierInvoice) | **DELETE** /api/v1/supplier-invoices/{supplier_invoice_id} | 
[**getSupplierInvoice**](SupplierInvoiceApi.md#getSupplierInvoice) | **GET** /api/v1/supplier-invoices/{supplier_invoice_id} | 
[**listSupplierInvoices**](SupplierInvoiceApi.md#listSupplierInvoices) | **GET** /api/v1/supplier-invoices/ | 
[**updateSupplierInvoice**](SupplierInvoiceApi.md#updateSupplierInvoice) | **PUT** /api/v1/supplier-invoices/{supplier_invoice_id} | 
[**updateSupplierInvoiceStatus**](SupplierInvoiceApi.md#updateSupplierInvoiceStatus) | **PUT** /api/v1/supplier-invoices/{supplier_invoice_id}/status | 



## createSupplierInvoice



### Example

```bash
 createSupplierInvoice
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supplierInvoice** | [**SupplierInvoice**](SupplierInvoice.md) |  |

### Return type

[**SupplierInvoice**](SupplierInvoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteSupplierInvoice



### Example

```bash
 deleteSupplierInvoice supplier_invoice_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supplierInvoiceId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSupplierInvoice



### Example

```bash
 getSupplierInvoice supplier_invoice_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supplierInvoiceId** | **string** |  | [default to null]

### Return type

[**SupplierInvoice**](SupplierInvoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listSupplierInvoices



### Example

```bash
 listSupplierInvoices  page=value  page_size=value  status=value  purchase_order_id=value  supplier_name=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **status** | **string** |  | [optional] [default to null]
 **purchaseOrderId** | **string** |  | [optional] [default to null]
 **supplierName** | **string** |  | [optional] [default to null]

### Return type

[**array[SupplierInvoice]**](SupplierInvoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateSupplierInvoice



### Example

```bash
 updateSupplierInvoice supplier_invoice_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supplierInvoiceId** | **string** |  | [default to null]
 **body** | **AnyType** |  |

### Return type

[**SupplierInvoice**](SupplierInvoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateSupplierInvoiceStatus



### Example

```bash
 updateSupplierInvoiceStatus supplier_invoice_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supplierInvoiceId** | **string** |  | [default to null]
 **supplierInvoiceStatusUpdate** | [**SupplierInvoiceStatusUpdate**](SupplierInvoiceStatusUpdate.md) |  |

### Return type

[**SupplierInvoice**](SupplierInvoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

