# LeadApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**listLeadsApi**](LeadApi.md#listLeadsApi) | **GET** /api/v1/support/leads | 
[**updateLeadApi**](LeadApi.md#updateLeadApi) | **PUT** /api/v1/support/leads/{lead_id} | 



## listLeadsApi



### Example

```bash
 listLeadsApi  status=value  source=value  search=value  page=value  page_size=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **string** |  | [optional] [default to null]
 **source** | **string** |  | [optional] [default to null]
 **search** | **string** |  | [optional] [default to null]
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]

### Return type

[**array[Lead]**](Lead.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateLeadApi



### Example

```bash
 updateLeadApi lead_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **leadId** | **string** |  | [default to null]
 **leadUpdate** | [**LeadUpdate**](LeadUpdate.md) |  |

### Return type

[**Lead**](Lead.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

