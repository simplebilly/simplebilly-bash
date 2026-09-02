# EbilanzApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**ebilanzReportApi**](EbilanzApi.md#ebilanzReportApi) | **GET** /api/v1/bookkeeping/ebilanz | 
[**ebilanzXbrlExportApi**](EbilanzApi.md#ebilanzXbrlExportApi) | **GET** /api/v1/bookkeeping/ebilanz/xbrl | 



## ebilanzReportApi



### Example

```bash
 ebilanzReportApi  year=value  date_from=value  date_to=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer** |  | [optional] [default to null]
 **dateFrom** | **string** |  | [optional] [default to null]
 **dateTo** | **string** |  | [optional] [default to null]

### Return type

[**EBilanzReport**](EBilanzReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## ebilanzXbrlExportApi



### Example

```bash
 ebilanzXbrlExportApi  year=value  date_from=value  date_to=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer** |  | [optional] [default to null]
 **dateFrom** | **string** |  | [optional] [default to null]
 **dateTo** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

