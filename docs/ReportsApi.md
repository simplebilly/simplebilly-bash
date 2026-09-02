# ReportsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**bilanzReportApi**](ReportsApi.md#bilanzReportApi) | **GET** /api/v1/bookkeeping/reports/bilanz | Bilanz (Balance Sheet)
[**guvReportApi**](ReportsApi.md#guvReportApi) | **GET** /api/v1/bookkeeping/reports/guv | Gewinn- und Verlustrechnung (P&amp;L statement)
[**kontenansichtReportApi**](ReportsApi.md#kontenansichtReportApi) | **GET** /api/v1/bookkeeping/reports/kontenansicht | Kontenansicht (Account Overview)
[**umsatzsteuerReportApi**](ReportsApi.md#umsatzsteuerReportApi) | **GET** /api/v1/bookkeeping/reports/umsatzsteuer | Umsatzsteuer-Voranmeldung (VAT report)



## bilanzReportApi

Bilanz (Balance Sheet)

### Example

```bash
 bilanzReportApi  year=value  month=value  date_from=value  date_to=value  page=value  page_size=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer** |  | [optional] [default to null]
 **month** | **integer** |  | [optional] [default to null]
 **dateFrom** | **string** |  | [optional] [default to null]
 **dateTo** | **string** |  | [optional] [default to null]
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]

### Return type

[**BilanzReport**](BilanzReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## guvReportApi

Gewinn- und Verlustrechnung (P&L statement)

### Example

```bash
 guvReportApi  year=value  month=value  date_from=value  date_to=value  page=value  page_size=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer** |  | [optional] [default to null]
 **month** | **integer** |  | [optional] [default to null]
 **dateFrom** | **string** |  | [optional] [default to null]
 **dateTo** | **string** |  | [optional] [default to null]
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]

### Return type

[**GuVReport**](GuVReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## kontenansichtReportApi

Kontenansicht (Account Overview)

### Example

```bash
 kontenansichtReportApi  year=value  month=value  date_from=value  date_to=value  page=value  page_size=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer** |  | [optional] [default to null]
 **month** | **integer** |  | [optional] [default to null]
 **dateFrom** | **string** |  | [optional] [default to null]
 **dateTo** | **string** |  | [optional] [default to null]
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]

### Return type

[**KontoReport**](KontoReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## umsatzsteuerReportApi

Umsatzsteuer-Voranmeldung (VAT report)

### Example

```bash
 umsatzsteuerReportApi  year=value  month=value  date_from=value  date_to=value  page=value  page_size=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer** |  | [optional] [default to null]
 **month** | **integer** |  | [optional] [default to null]
 **dateFrom** | **string** |  | [optional] [default to null]
 **dateTo** | **string** |  | [optional] [default to null]
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]

### Return type

[**UmsatzsteuerReport**](UmsatzsteuerReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

