# OnlineshopApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSmtpConfigApi**](OnlineshopApi.md#getSmtpConfigApi) | **GET** /api/v1/settings/smtp | 
[**saveSmtpConfigApi**](OnlineshopApi.md#saveSmtpConfigApi) | **PUT** /api/v1/settings/smtp | 



## getSmtpConfigApi



### Example

```bash
 getSmtpConfigApi
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SmtpConfig**](SmtpConfig.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## saveSmtpConfigApi



### Example

```bash
 saveSmtpConfigApi
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **smtpConfig** | [**SmtpConfig**](SmtpConfig.md) |  | [optional]

### Return type

[**SmtpConfig**](SmtpConfig.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

