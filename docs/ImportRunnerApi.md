# ImportRunnerApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**getImportStatus**](ImportRunnerApi.md#getImportStatus) | **GET** /api/v1/import/{job_id} | 
[**startImport**](ImportRunnerApi.md#startImport) | **POST** /api/v1/import/start | 
[**testImportConnection**](ImportRunnerApi.md#testImportConnection) | **POST** /api/v1/import/test | 



## getImportStatus



### Example

```bash
 getImportStatus job_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobId** | **string** |  | [default to null]

### Return type

[**ImportJobStatus**](ImportJobStatus.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## startImport



### Example

```bash
 startImport
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **importStartRequest** | [**ImportStartRequest**](ImportStartRequest.md) |  |

### Return type

[**ImportStartResponse**](ImportStartResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## testImportConnection



### Example

```bash
 testImportConnection
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **importTestRequest** | [**ImportTestRequest**](ImportTestRequest.md) |  |

### Return type

[**ImportTestResponse**](ImportTestResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

