# CreditNoteApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCreditNote**](CreditNoteApi.md#createCreditNote) | **POST** /api/v1/credit-notes | 
[**downloadCreditNotePdf**](CreditNoteApi.md#downloadCreditNotePdf) | **GET** /api/v1/credit-notes/{credit_note_id}/pdf | 
[**getCreditNote**](CreditNoteApi.md#getCreditNote) | **GET** /api/v1/credit-notes/{credit_note_id} | 
[**listCreditNotes**](CreditNoteApi.md#listCreditNotes) | **GET** /api/v1/credit-notes/ | 



## createCreditNote



### Example

```bash
 createCreditNote
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **AnyType** |  |

### Return type

[**Invoice**](Invoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## downloadCreditNotePdf



### Example

```bash
 downloadCreditNotePdf credit_note_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **creditNoteId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/pdf, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCreditNote



### Example

```bash
 getCreditNote credit_note_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **creditNoteId** | **string** |  | [default to null]

### Return type

[**Invoice**](Invoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listCreditNotes



### Example

```bash
 listCreditNotes  page=value  page_size=value  search=value  include_deleted=value
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

