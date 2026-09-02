# AttachmentVersionApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAttachmentVersion**](AttachmentVersionApi.md#createAttachmentVersion) | **POST** /api/v1/attachments/{attachment_id}/versions | 
[**listAttachmentVersions**](AttachmentVersionApi.md#listAttachmentVersions) | **GET** /api/v1/attachments/{attachment_id}/versions | 
[**restoreAttachmentVersion**](AttachmentVersionApi.md#restoreAttachmentVersion) | **POST** /api/v1/attachments/{attachment_id}/versions/{version_id}/restore | 



## createAttachmentVersion



### Example

```bash
 createAttachmentVersion attachment_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachmentId** | **string** |  | [default to null]
 **newVersionRequest** | [**NewVersionRequest**](NewVersionRequest.md) |  |

### Return type

[**AttachmentVersion**](AttachmentVersion.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listAttachmentVersions



### Example

```bash
 listAttachmentVersions attachment_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachmentId** | **string** |  | [default to null]

### Return type

[**array[AttachmentVersion]**](AttachmentVersion.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## restoreAttachmentVersion



### Example

```bash
 restoreAttachmentVersion attachment_id=value version_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachmentId** | **string** |  | [default to null]
 **versionId** | **string** |  | [default to null]

### Return type

[**Attachment**](Attachment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

