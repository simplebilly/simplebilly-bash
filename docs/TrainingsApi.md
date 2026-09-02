# TrainingsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMyTrainings**](TrainingsApi.md#getMyTrainings) | **GET** /api/v1/trainings/me | 
[**getTrainingContent**](TrainingsApi.md#getTrainingContent) | **GET** /api/v1/trainings/content/{code} | 
[**getTrainingOverview**](TrainingsApi.md#getTrainingOverview) | **GET** /api/v1/trainings/overview | 
[**submitTrainingResult**](TrainingsApi.md#submitTrainingResult) | **POST** /api/v1/trainings/submit-result | 



## getMyTrainings



### Example

```bash
 getMyTrainings
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[MyTrainingItem]**](MyTrainingItem.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTrainingContent



### Example

```bash
 getTrainingContent code=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **string** | Training code, e.g. data_privacy | [default to null]

### Return type

[**TrainingContent**](TrainingContent.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTrainingOverview



### Example

```bash
 getTrainingOverview
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[HrTrainingOverview]**](HrTrainingOverview.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## submitTrainingResult



### Example

```bash
 submitTrainingResult
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submitResultDto** | [**SubmitResultDto**](SubmitResultDto.md) |  |

### Return type

[**SubmitResultResponse**](SubmitResultResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

