# PlausibilityApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**plausibilityCheckApi**](PlausibilityApi.md#plausibilityCheckApi) | **GET** /api/v1/bookkeeping/plausibility | 



## plausibilityCheckApi



### Example

```bash
 plausibilityCheckApi  date_from=value  date_to=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dateFrom** | **string** |  | [optional] [default to null]
 **dateTo** | **string** |  | [optional] [default to null]

### Return type

[**PlausibilityReport**](PlausibilityReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

