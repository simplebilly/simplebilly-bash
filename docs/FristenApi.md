# FristenApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**fristenApi**](FristenApi.md#fristenApi) | **GET** /api/v1/bookkeeping/fristen | 



## fristenApi



### Example

```bash
 fristenApi  bundesland=value  voranmeldungsrhythmus=value  dauerfristverlaengerung=value  est_aktiv=value  gewst_aktiv=value  monate=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bundesland** | **string** |  | [optional] [default to null]
 **voranmeldungsrhythmus** | **string** |  | [optional] [default to null]
 **dauerfristverlaengerung** | **boolean** |  | [optional] [default to null]
 **estAktiv** | **boolean** |  | [optional] [default to null]
 **gewstAktiv** | **boolean** |  | [optional] [default to null]
 **monate** | **integer** |  | [optional] [default to null]

### Return type

[**FristenErgebnis**](FristenErgebnis.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

