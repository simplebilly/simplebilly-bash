# BankingApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**bankLookupApi**](BankingApi.md#bankLookupApi) | **GET** /api/v1/bookkeeping/banking/lookup | 
[**bankTransactionsApi**](BankingApi.md#bankTransactionsApi) | **GET** /api/v1/bookkeeping/banking/transactions | 
[**hebesatzLookupApi**](BankingApi.md#hebesatzLookupApi) | **GET** /api/v1/bookkeeping/hebesatz | 



## bankLookupApi



### Example

```bash
 bankLookupApi  iban=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **iban** | **string** |  | [default to null]

### Return type

[**BankLookup**](BankLookup.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## bankTransactionsApi



### Example

```bash
 bankTransactionsApi
```

### Parameters

This endpoint does not need any parameter.

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## hebesatzLookupApi



### Example

```bash
 hebesatzLookupApi  gemeindeschluessel=value  plz=value  name=value  stichtag=value  country_code=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gemeindeschluessel** | **string** |  | [optional] [default to null]
 **plz** | **string** |  | [optional] [default to null]
 **name** | **string** |  | [optional] [default to null]
 **stichtag** | **string** | Stichtag for validity (YYYY-MM-DD); defaults to today. Picks row where valid_from <= date <= valid_to. | [optional] [default to null]
 **countryCode** | **string** |  | [optional] [default to null]

### Return type

[**array[HebesatzLookup]**](HebesatzLookup.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

