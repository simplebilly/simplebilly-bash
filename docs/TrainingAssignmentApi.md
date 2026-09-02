# TrainingAssignmentApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTrainingAssignment**](TrainingAssignmentApi.md#createTrainingAssignment) | **POST** /api/v1/training-assignments | 
[**deleteTrainingAssignment**](TrainingAssignmentApi.md#deleteTrainingAssignment) | **DELETE** /api/v1/training-assignments/{id} | 
[**getTrainingAssignment**](TrainingAssignmentApi.md#getTrainingAssignment) | **GET** /api/v1/training-assignments/{id} | 
[**getTrainingAssignments**](TrainingAssignmentApi.md#getTrainingAssignments) | **GET** /api/v1/training-assignments/ | 
[**updateTrainingAssignment**](TrainingAssignmentApi.md#updateTrainingAssignment) | **PUT** /api/v1/training-assignments/{id} | 



## createTrainingAssignment



### Example

```bash
 createTrainingAssignment
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **trainingAssignmentCreate** | [**TrainingAssignmentCreate**](TrainingAssignmentCreate.md) |  |

### Return type

[**TrainingAssignment**](TrainingAssignment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteTrainingAssignment



### Example

```bash
 deleteTrainingAssignment id=value
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


## getTrainingAssignment



### Example

```bash
 getTrainingAssignment id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]

### Return type

[**TrainingAssignment**](TrainingAssignment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTrainingAssignments



### Example

```bash
 getTrainingAssignments  page=value  page_size=value  search=value  include_deleted=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **search** | **string** |  | [optional] [default to null]
 **includeDeleted** | **boolean** | Soft-delete entities: set true to include rows with 'deleted_at' set. | [optional] [default to null]

### Return type

[**array[TrainingAssignment]**](TrainingAssignment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateTrainingAssignment



### Example

```bash
 updateTrainingAssignment id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]
 **trainingAssignmentUpdate** | [**TrainingAssignmentUpdate**](TrainingAssignmentUpdate.md) |  |

### Return type

[**TrainingAssignment**](TrainingAssignment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

