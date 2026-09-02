# GobdExportApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**buchhalterCsvApi**](GobdExportApi.md#buchhalterCsvApi) | **GET** /api/v1/bookkeeping/buchhalter-csv | 
[**gobdExportApi**](GobdExportApi.md#gobdExportApi) | **GET** /api/v1/bookkeeping/gobd | GoBD/GDPdU export. Default: ZIP archive (&#39;index.xml&#39; + CSV tables, IDEA
format). &#39;?format&#x3D;csv&#39; returns the legacy single-journal CSV as JSON.



## buchhalterCsvApi



### Example

```bash
 buchhalterCsvApi  date_from=value  date_to=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dateFrom** | **string** |  | [default to null]
 **dateTo** | **string** |  | [default to null]

### Return type

[**GoBDExportResponse**](GoBDExportResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## gobdExportApi

GoBD/GDPdU export. Default: ZIP archive ('index.xml' + CSV tables, IDEA
format). '?format=csv' returns the legacy single-journal CSV as JSON.

### Example

```bash
 gobdExportApi  year=value  format=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer** |  | [default to null]
 **format** | **string** | Export format: 'zip' (default, full GDPdU/IDEA export) or
'csv' (legacy single-journal CSV as JSON). | [optional] [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/zip, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

