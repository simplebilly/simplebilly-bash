# UstvaApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**jahresustApi**](UstvaApi.md#jahresustApi) | **GET** /api/v1/bookkeeping/jahresust | 
[**ustvaApi**](UstvaApi.md#ustvaApi) | **GET** /api/v1/bookkeeping/ustva | 



## jahresustApi



### Example

```bash
 jahresustApi  year=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer** |  | [default to null]

### Return type

[**JahresUstErgebnis**](JahresUstErgebnis.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## ustvaApi



### Example

```bash
 ustvaApi  zeitraum=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zeitraum** | **string** |  | [default to null]

### Return type

[**UstvaErgebnis**](UstvaErgebnis.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

