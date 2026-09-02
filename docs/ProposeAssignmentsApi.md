# ProposeAssignmentsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**proposeAssignmentsApi**](ProposeAssignmentsApi.md#proposeAssignmentsApi) | **GET** /api/v1/bookkeeping/propose-assignments | 



## proposeAssignmentsApi



### Example

```bash
 proposeAssignmentsApi  min_confidence=value  customer_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **minConfidence** | **float** |  | [optional] [default to null]
 **customerId** | **string** |  | [optional] [default to null]

### Return type

[**array[ProposedAssignment]**](ProposedAssignment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

