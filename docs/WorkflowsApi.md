# WorkflowsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**listWorkflowsApi**](WorkflowsApi.md#listWorkflowsApi) | **GET** /api/v1/workflows | 
[**setWorkflowEnabledApi**](WorkflowsApi.md#setWorkflowEnabledApi) | **PUT** /api/v1/workflows/{workflow_id}/enabled | 



## listWorkflowsApi



### Example

```bash
 listWorkflowsApi
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[Workflow]**](Workflow.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## setWorkflowEnabledApi



### Example

```bash
 setWorkflowEnabledApi workflow_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflowId** | **string** |  | [default to null]
 **workflowEnabledUpdate** | [**WorkflowEnabledUpdate**](WorkflowEnabledUpdate.md) |  |

### Return type

[**Workflow**](Workflow.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

