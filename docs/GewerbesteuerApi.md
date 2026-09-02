# GewerbesteuerApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**gewerbesteuerApi**](GewerbesteuerApi.md#gewerbesteuerApi) | **GET** /api/v1/bookkeeping/gewerbesteuer | 



## gewerbesteuerApi



### Example

```bash
 gewerbesteuerApi  year=value  hebesatz=value  gewerbeertrag=value  country=value  gemeindeschluessel=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer** |  | [default to null]
 **hebesatz** | **string** |  | [optional] [default to null]
 **gewerbeertrag** | **string** |  | [optional] [default to null]
 **country** | **string** |  | [optional] [default to null]
 **gemeindeschluessel** | **string** |  | [optional] [default to null]

### Return type

[**GewerbesteuerErgebnis**](GewerbesteuerErgebnis.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

