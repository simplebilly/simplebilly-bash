# GenerateQrcodeApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**generateQrcodeApi**](GenerateQrcodeApi.md#generateQrcodeApi) | **GET** /api/v1/invoices/{id}/qrcode | 



## generateQrcodeApi



### Example

```bash
 generateQrcodeApi  iban=value id=value  holder_name=value  bic=value  amount=value  reference=value  purpose=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **iban** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **holderName** | **string** |  | [optional] [default to null]
 **bic** | **string** |  | [optional] [default to null]
 **amount** | **string** |  | [optional] [default to null]
 **reference** | **string** |  | [optional] [default to null]
 **purpose** | **string** |  | [optional] [default to null]

### Return type

[**QRCodeResponse**](QRCodeResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

