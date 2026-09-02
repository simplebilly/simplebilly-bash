# KonzernApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**konzernExportApi**](KonzernApi.md#konzernExportApi) | **GET** /api/v1/bookkeeping/konzern/status/export | 
[**konzernStatusApi**](KonzernApi.md#konzernStatusApi) | **GET** /api/v1/bookkeeping/konzern/status | 



## konzernExportApi



### Example

```bash
 konzernExportApi  year=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer** |  | [default to null]

### Return type

[**KonzernExportResponse**](KonzernExportResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## konzernStatusApi



### Example

```bash
 konzernStatusApi  year=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer** |  | [default to null]

### Return type

[**KonzernStatus**](KonzernStatus.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

