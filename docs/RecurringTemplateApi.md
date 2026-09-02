# RecurringTemplateApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createRecurringTemplate**](RecurringTemplateApi.md#createRecurringTemplate) | **POST** /api/v1/recurring-templates | 
[**deleteRecurringTemplate**](RecurringTemplateApi.md#deleteRecurringTemplate) | **DELETE** /api/v1/recurring-templates/{template_id} | 
[**getRecurringTemplate**](RecurringTemplateApi.md#getRecurringTemplate) | **GET** /api/v1/recurring-templates/{template_id} | 
[**listRecurringTemplates**](RecurringTemplateApi.md#listRecurringTemplates) | **GET** /api/v1/recurring-templates/ | 



## createRecurringTemplate



### Example

```bash
 createRecurringTemplate
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **AnyType** |  |

### Return type

[**RecurringTemplate**](RecurringTemplate.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteRecurringTemplate



### Example

```bash
 deleteRecurringTemplate template_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getRecurringTemplate



### Example

```bash
 getRecurringTemplate template_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateId** | **string** |  | [default to null]

### Return type

[**RecurringTemplate**](RecurringTemplate.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listRecurringTemplates



### Example

```bash
 listRecurringTemplates
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[RecurringTemplate]**](RecurringTemplate.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

