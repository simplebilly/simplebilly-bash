# ComplianceTrainingApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createComplianceTraining**](ComplianceTrainingApi.md#createComplianceTraining) | **POST** /api/v1/compliance-trainings | 
[**deleteComplianceTraining**](ComplianceTrainingApi.md#deleteComplianceTraining) | **DELETE** /api/v1/compliance-trainings/{id} | 
[**getComplianceTraining**](ComplianceTrainingApi.md#getComplianceTraining) | **GET** /api/v1/compliance-trainings/{id} | 
[**getComplianceTrainings**](ComplianceTrainingApi.md#getComplianceTrainings) | **GET** /api/v1/compliance-trainings/ | 
[**updateComplianceTraining**](ComplianceTrainingApi.md#updateComplianceTraining) | **PUT** /api/v1/compliance-trainings/{id} | 



## createComplianceTraining



### Example

```bash
 createComplianceTraining
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **complianceTrainingCreate** | [**ComplianceTrainingCreate**](ComplianceTrainingCreate.md) |  |

### Return type

[**ComplianceTraining**](ComplianceTraining.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteComplianceTraining



### Example

```bash
 deleteComplianceTraining id=value
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


## getComplianceTraining



### Example

```bash
 getComplianceTraining id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]

### Return type

[**ComplianceTraining**](ComplianceTraining.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getComplianceTrainings



### Example

```bash
 getComplianceTrainings  page=value  page_size=value  search=value  include_deleted=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **search** | **string** |  | [optional] [default to null]
 **includeDeleted** | **boolean** | Soft-delete entities: set true to include rows with 'deleted_at' set. | [optional] [default to null]

### Return type

[**array[ComplianceTraining]**](ComplianceTraining.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateComplianceTraining



### Example

```bash
 updateComplianceTraining id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]
 **complianceTrainingUpdate** | [**ComplianceTrainingUpdate**](ComplianceTrainingUpdate.md) |  |

### Return type

[**ComplianceTraining**](ComplianceTraining.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

