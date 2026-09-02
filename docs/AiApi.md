# AiApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**aiSuggestApi**](AiApi.md#aiSuggestApi) | **POST** /api/v1/support/ai/suggest | 
[**createWorkerApi**](AiApi.md#createWorkerApi) | **POST** /api/v1/support/ai/workers | 
[**listWorkersApi**](AiApi.md#listWorkersApi) | **GET** /api/v1/support/ai/workers | 
[**runWorkerApi**](AiApi.md#runWorkerApi) | **POST** /api/v1/support/ai/workers/{worker_id}/run | 



## aiSuggestApi



### Example

```bash
 aiSuggestApi
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiSuggestionRequest** | [**AiSuggestionRequest**](AiSuggestionRequest.md) |  |

### Return type

[**AiSuggestion**](AiSuggestion.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createWorkerApi



### Example

```bash
 createWorkerApi
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiConfigDto** | [**AiConfigDto**](AiConfigDto.md) |  |

### Return type

[**AiWorkerConfig**](AiWorkerConfig.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listWorkersApi



### Example

```bash
 listWorkersApi
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[AiWorkerConfig]**](AiWorkerConfig.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## runWorkerApi



### Example

```bash
 runWorkerApi worker_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workerId** | **string** |  | [default to null]
 **aiSuggestionRequest** | [**AiSuggestionRequest**](AiSuggestionRequest.md) |  |

### Return type

[**AiSuggestion**](AiSuggestion.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

