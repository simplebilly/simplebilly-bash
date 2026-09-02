# KstApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**kstApi**](KstApi.md#kstApi) | **GET** /api/v1/bookkeeping/kst | 



## kstApi



### Example

```bash
 kstApi  year=value  gewinn=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer** |  | [default to null]
 **gewinn** | **string** |  | [optional] [default to null]

### Return type

[**KstErgebnis**](KstErgebnis.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

