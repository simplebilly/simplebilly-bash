# DatevApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**datevExportApi**](DatevApi.md#datevExportApi) | **GET** /api/v1/bookkeeping/datev/export | Export bookkeeping data as DATEV CSV
[**datevPreviewApi**](DatevApi.md#datevPreviewApi) | **GET** /api/v1/bookkeeping/datev/preview | Exported_datev_bookings: returns formed bookings for review



## datevExportApi

Export bookkeeping data as DATEV CSV

### Example

```bash
 datevExportApi  account_schema=value  date_from=value  date_to=value  page=value  page_size=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountSchema** | **string** |  | [optional] [default to null]
 **dateFrom** | **string** |  | [optional] [default to null]
 **dateTo** | **string** |  | [optional] [default to null]
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]

### Return type

[**DatevExportResponse**](DatevExportResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## datevPreviewApi

Exported_datev_bookings: returns formed bookings for review

### Example

```bash
 datevPreviewApi  account_schema=value  date_from=value  date_to=value  page=value  page_size=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountSchema** | **string** |  | [optional] [default to null]
 **dateFrom** | **string** |  | [optional] [default to null]
 **dateTo** | **string** |  | [optional] [default to null]
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]

### Return type

[**array[DatevBookingPreview]**](DatevBookingPreview.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

