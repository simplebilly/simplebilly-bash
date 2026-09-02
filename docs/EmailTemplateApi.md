# EmailTemplateApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createEmailTemplate**](EmailTemplateApi.md#createEmailTemplate) | **POST** /api/v1/email-templates | 
[**deleteEmailTemplate**](EmailTemplateApi.md#deleteEmailTemplate) | **DELETE** /api/v1/email-templates/{email_template_id} | 
[**getEmailTemplate**](EmailTemplateApi.md#getEmailTemplate) | **GET** /api/v1/email-templates/{email_template_id} | 
[**listEmailTemplates**](EmailTemplateApi.md#listEmailTemplates) | **GET** /api/v1/email-templates/ | 
[**renderEmailTemplate**](EmailTemplateApi.md#renderEmailTemplate) | **POST** /api/v1/email-templates/{email_template_id}/render | 
[**updateEmailTemplate**](EmailTemplateApi.md#updateEmailTemplate) | **PUT** /api/v1/email-templates/{email_template_id} | 



## createEmailTemplate



### Example

```bash
 createEmailTemplate
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailTemplateCreate** | [**EmailTemplateCreate**](EmailTemplateCreate.md) |  |

### Return type

[**EmailTemplate**](EmailTemplate.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteEmailTemplate



### Example

```bash
 deleteEmailTemplate email_template_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailTemplateId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getEmailTemplate



### Example

```bash
 getEmailTemplate email_template_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailTemplateId** | **string** |  | [default to null]

### Return type

[**EmailTemplate**](EmailTemplate.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listEmailTemplates



### Example

```bash
 listEmailTemplates  page=value  pageSize=value  status=value  search=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **status** | **string** |  | [optional] [default to null]
 **search** | **string** |  | [optional] [default to null]

### Return type

[**array[EmailTemplate]**](EmailTemplate.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## renderEmailTemplate



### Example

```bash
 renderEmailTemplate email_template_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailTemplateId** | **string** |  | [default to null]
 **body** | **AnyType** |  |

### Return type

[**AnyType**](AnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateEmailTemplate



### Example

```bash
 updateEmailTemplate email_template_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailTemplateId** | **string** |  | [default to null]
 **emailTemplateUpdate** | [**EmailTemplateUpdate**](EmailTemplateUpdate.md) |  |

### Return type

[**EmailTemplate**](EmailTemplate.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

