# AutomationsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**listAutomations**](AutomationsApi.md#listAutomations) | **GET** /api/v1/automations | 
[**triggerAutomation**](AutomationsApi.md#triggerAutomation) | **POST** /api/v1/automations/{key}/trigger | 
[**updateAutomation**](AutomationsApi.md#updateAutomation) | **PUT** /api/v1/automations/{key} | 



## listAutomations



### Example

```bash
 listAutomations
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[AutomationDto]**](AutomationDto.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## triggerAutomation



### Example

```bash
 triggerAutomation key=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **string** |  | [default to null]

### Return type

**map**

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateAutomation



### Example

```bash
 updateAutomation key=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **string** |  | [default to null]
 **updateAutomation** | [**UpdateAutomation**](UpdateAutomation.md) |  |

### Return type

[**AutomationDto**](AutomationDto.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

