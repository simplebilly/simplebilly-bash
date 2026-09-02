# PaygapApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**paygapAuskunftApi**](PaygapApi.md#paygapAuskunftApi) | **GET** /api/v1/bookkeeping/paygap/auskunft/{employee_id} | 
[**paygapExportApi**](PaygapApi.md#paygapExportApi) | **GET** /api/v1/bookkeeping/paygap/export | 
[**paygapReportApi**](PaygapApi.md#paygapReportApi) | **GET** /api/v1/bookkeeping/paygap/report | 



## paygapAuskunftApi



### Example

```bash
 paygapAuskunftApi employee_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employeeId** | **string** |  | [default to null]

### Return type

[**PayGapInfoResponse**](PayGapInfoResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## paygapExportApi



### Example

```bash
 paygapExportApi
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**PayGapExportResponse**](PayGapExportResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## paygapReportApi



### Example

```bash
 paygapReportApi
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**PayGapReport**](PayGapReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

