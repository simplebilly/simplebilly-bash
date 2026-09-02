# QuotationApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createQuotation**](QuotationApi.md#createQuotation) | **POST** /api/v1/quotations | 
[**deleteQuotation**](QuotationApi.md#deleteQuotation) | **DELETE** /api/v1/quotations/{quotation_id} | 
[**downloadQuotationPdf**](QuotationApi.md#downloadQuotationPdf) | **GET** /api/v1/quotations/{quotation_id}/pdf | 
[**getQuotation**](QuotationApi.md#getQuotation) | **GET** /api/v1/quotations/{quotation_id} | 
[**listQuotations**](QuotationApi.md#listQuotations) | **GET** /api/v1/quotations/ | 
[**pursueQuotation**](QuotationApi.md#pursueQuotation) | **POST** /api/v1/quotations/{quotation_id}/pursue | 
[**quotationRestore**](QuotationApi.md#quotationRestore) | **POST** /api/v1/quotations/{quotation_id}/restore | 
[**updateQuotation**](QuotationApi.md#updateQuotation) | **PUT** /api/v1/quotations/{quotation_id} | 



## createQuotation



### Example

```bash
 createQuotation
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **quotationCreate** | [**QuotationCreate**](QuotationCreate.md) |  |

### Return type

[**Quotation**](Quotation.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteQuotation



### Example

```bash
 deleteQuotation quotation_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **quotationId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## downloadQuotationPdf



### Example

```bash
 downloadQuotationPdf quotation_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **quotationId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/pdf, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getQuotation



### Example

```bash
 getQuotation quotation_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **quotationId** | **string** |  | [default to null]

### Return type

[**Quotation**](Quotation.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listQuotations



### Example

```bash
 listQuotations  page=value  page_size=value  search=value  include_deleted=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **search** | **string** |  | [optional] [default to null]
 **includeDeleted** | **boolean** | Soft-delete entities: set true to include rows with 'deleted_at' set. | [optional] [default to null]

### Return type

[**array[Quotation]**](Quotation.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## pursueQuotation



### Example

```bash
 pursueQuotation quotation_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **quotationId** | **string** |  | [default to null]

### Return type

[**OrderConfirmation**](OrderConfirmation.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## quotationRestore



### Example

```bash
 quotationRestore quotation_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **quotationId** | **string** |  | [default to null]

### Return type

[**Quotation**](Quotation.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateQuotation



### Example

```bash
 updateQuotation quotation_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **quotationId** | **string** |  | [default to null]
 **body** | **AnyType** |  |

### Return type

[**Quotation**](Quotation.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

