# DeliveryNoteApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDeliveryNote**](DeliveryNoteApi.md#createDeliveryNote) | **POST** /api/v1/delivery-notes | 
[**deleteDeliveryNote**](DeliveryNoteApi.md#deleteDeliveryNote) | **DELETE** /api/v1/delivery-notes/{delivery_note_id} | 
[**deliverynoteRestore**](DeliveryNoteApi.md#deliverynoteRestore) | **POST** /api/v1/delivery-notes/{delivery_note_id}/restore | 
[**downloadDeliveryNotePdf**](DeliveryNoteApi.md#downloadDeliveryNotePdf) | **GET** /api/v1/delivery-notes/{delivery_note_id}/pdf | 
[**getDeliveryNote**](DeliveryNoteApi.md#getDeliveryNote) | **GET** /api/v1/delivery-notes/{delivery_note_id} | 
[**listDeliveryNotes**](DeliveryNoteApi.md#listDeliveryNotes) | **GET** /api/v1/delivery-notes/ | 
[**pursueDeliveryNote**](DeliveryNoteApi.md#pursueDeliveryNote) | **POST** /api/v1/delivery-notes/{delivery_note_id}/pursue | 



## createDeliveryNote



### Example

```bash
 createDeliveryNote
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deliveryNoteCreate** | [**DeliveryNoteCreate**](DeliveryNoteCreate.md) |  |

### Return type

[**DeliveryNote**](DeliveryNote.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteDeliveryNote



### Example

```bash
 deleteDeliveryNote delivery_note_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deliveryNoteId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deliverynoteRestore



### Example

```bash
 deliverynoteRestore delivery_note_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deliveryNoteId** | **string** |  | [default to null]

### Return type

[**DeliveryNote**](DeliveryNote.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## downloadDeliveryNotePdf



### Example

```bash
 downloadDeliveryNotePdf delivery_note_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deliveryNoteId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/pdf, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getDeliveryNote



### Example

```bash
 getDeliveryNote delivery_note_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deliveryNoteId** | **string** |  | [default to null]

### Return type

[**DeliveryNote**](DeliveryNote.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listDeliveryNotes



### Example

```bash
 listDeliveryNotes  page=value  page_size=value  search=value  include_deleted=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **search** | **string** |  | [optional] [default to null]
 **includeDeleted** | **boolean** | Soft-delete entities: set true to include rows with 'deleted_at' set. | [optional] [default to null]

### Return type

[**array[DeliveryNote]**](DeliveryNote.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## pursueDeliveryNote



### Example

```bash
 pursueDeliveryNote delivery_note_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deliveryNoteId** | **string** |  | [default to null]

### Return type

[**Invoice**](Invoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

