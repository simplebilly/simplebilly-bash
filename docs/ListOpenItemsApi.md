# ListOpenItemsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**listOpenItemsApi**](ListOpenItemsApi.md#listOpenItemsApi) | **GET** /api/v1/bookkeeping/open-items | 



## listOpenItemsApi



### Example

```bash
 listOpenItemsApi  reminder_level1_days=value  reminder_level2_days=value  reminder_level3_days=value  customer_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reminderLevel1Days** | **integer** |  | [optional] [default to null]
 **reminderLevel2Days** | **integer** |  | [optional] [default to null]
 **reminderLevel3Days** | **integer** |  | [optional] [default to null]
 **customerId** | **string** |  | [optional] [default to null]

### Return type

[**array[OpenItem]**](OpenItem.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

