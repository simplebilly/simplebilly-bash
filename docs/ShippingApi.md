# ShippingApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCredentialsApi**](ShippingApi.md#getCredentialsApi) | **GET** /api/v1/shipping/credentials | 
[**getRatesApi**](ShippingApi.md#getRatesApi) | **POST** /api/v1/shipping/rates | 
[**listProvidersApi**](ShippingApi.md#listProvidersApi) | **GET** /api/v1/shipping/providers | 
[**saveCredentialsApi**](ShippingApi.md#saveCredentialsApi) | **PUT** /api/v1/shipping/credentials | 



## getCredentialsApi



### Example

```bash
 getCredentialsApi
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ShippingCredentials**](ShippingCredentials.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getRatesApi



### Example

```bash
 getRatesApi
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rateRequest** | [**RateRequest**](RateRequest.md) |  |

### Return type

[**RateResponse**](RateResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listProvidersApi



### Example

```bash
 listProvidersApi
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[ProviderInfo]**](ProviderInfo.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## saveCredentialsApi



### Example

```bash
 saveCredentialsApi
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shippingCredentials** | [**ShippingCredentials**](ShippingCredentials.md) |  |

### Return type

[**ShippingCredentials**](ShippingCredentials.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

