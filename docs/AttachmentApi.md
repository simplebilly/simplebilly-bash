# AttachmentApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**attachmentRestore**](AttachmentApi.md#attachmentRestore) | **POST** /api/v1/attachments/{id}/restore | 
[**createAttachment**](AttachmentApi.md#createAttachment) | **POST** /api/v1/attachments | 
[**deleteAttachment**](AttachmentApi.md#deleteAttachment) | **DELETE** /api/v1/attachments/{id} | 
[**getAttachment**](AttachmentApi.md#getAttachment) | **GET** /api/v1/attachments/{id} | 
[**listAttachments**](AttachmentApi.md#listAttachments) | **GET** /api/v1/attachments/ | 
[**saveAttachmentOcrText**](AttachmentApi.md#saveAttachmentOcrText) | **PUT** /api/v1/attachments/{attachment_id}/ocr-text | Persist client-side OCR output for an attachment.



## attachmentRestore



### Example

```bash
 attachmentRestore id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]

### Return type

[**Attachment**](Attachment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createAttachment



### Example

```bash
 createAttachment
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachmentCreate** | [**AttachmentCreate**](AttachmentCreate.md) |  |

### Return type

[**Attachment**](Attachment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteAttachment



### Example

```bash
 deleteAttachment id=value
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


## getAttachment



### Example

```bash
 getAttachment id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]

### Return type

[**Attachment**](Attachment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listAttachments



### Example

```bash
 listAttachments  page=value  pageSize=value  contactId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **contactId** | **string** |  | [optional] [default to null]

### Return type

[**array[Attachment]**](Attachment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## saveAttachmentOcrText

Persist client-side OCR output for an attachment.

### Example

```bash
 saveAttachmentOcrText attachment_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachmentId** | **string** |  | [default to null]
 **ocrTextRequest** | [**OcrTextRequest**](OcrTextRequest.md) |  |

### Return type

[**Attachment**](Attachment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

