# StilleApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**stilleExportApi**](StilleApi.md#stilleExportApi) | **GET** /api/v1/bookkeeping/stille/export | 
[**stilleReportApi**](StilleApi.md#stilleReportApi) | **GET** /api/v1/bookkeeping/stille/report | 



## stilleExportApi



### Example

```bash
 stilleExportApi  year=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer** |  | [default to null]

### Return type

[**StilleExportResponse**](StilleExportResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## stilleReportApi



### Example

```bash
 stilleReportApi  year=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer** |  | [default to null]

### Return type

[**StilleReport**](StilleReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

