# GewinnverwendungApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**gewinnverwendungApi**](GewinnverwendungApi.md#gewinnverwendungApi) | **GET** /api/v1/bookkeeping/gewinnverwendung | 
[**gewinnverwendungExportApi**](GewinnverwendungApi.md#gewinnverwendungExportApi) | **GET** /api/v1/bookkeeping/gewinnverwendung/export | 



## gewinnverwendungApi



### Example

```bash
 gewinnverwendungApi  year=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer** |  | [default to null]

### Return type

[**GewinnverwendungsReport**](GewinnverwendungsReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## gewinnverwendungExportApi



### Example

```bash
 gewinnverwendungExportApi  year=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer** |  | [default to null]

### Return type

[**GewinnverwendungsExportResponse**](GewinnverwendungsExportResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

