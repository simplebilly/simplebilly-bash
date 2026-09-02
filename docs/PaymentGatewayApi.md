# PaymentGatewayApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPaymentGatewayApi**](PaymentGatewayApi.md#createPaymentGatewayApi) | **POST** /api/v1/payment-gateways | 
[**deletePaymentGatewayApi**](PaymentGatewayApi.md#deletePaymentGatewayApi) | **DELETE** /api/v1/payment-gateways/{gateway_id} | 
[**listPaymentGatewaysApi**](PaymentGatewayApi.md#listPaymentGatewaysApi) | **GET** /api/v1/payment-gateways/ | 
[**oauthAuthorizeApi**](PaymentGatewayApi.md#oauthAuthorizeApi) | **POST** /api/v1/payment-gateways/oauth/authorize | 
[**oauthCallbackApi**](PaymentGatewayApi.md#oauthCallbackApi) | **POST** /api/v1/payment-gateways/oauth/callback | 
[**updatePaymentGatewayApi**](PaymentGatewayApi.md#updatePaymentGatewayApi) | **PUT** /api/v1/payment-gateways/{gateway_id} | 



## createPaymentGatewayApi



### Example

```bash
 createPaymentGatewayApi
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **AnyType** |  |

### Return type

[**PaymentGateway**](PaymentGateway.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deletePaymentGatewayApi



### Example

```bash
 deletePaymentGatewayApi gateway_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gatewayId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listPaymentGatewaysApi



### Example

```bash
 listPaymentGatewaysApi
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[PaymentGateway]**](PaymentGateway.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## oauthAuthorizeApi



### Example

```bash
 oauthAuthorizeApi
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gatewayOAuthAuthorizeRequest** | [**GatewayOAuthAuthorizeRequest**](GatewayOAuthAuthorizeRequest.md) |  |

### Return type

[**GatewayOAuthAuthorizeResponse**](GatewayOAuthAuthorizeResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## oauthCallbackApi



### Example

```bash
 oauthCallbackApi
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gatewayOAuthCallbackRequest** | [**GatewayOAuthCallbackRequest**](GatewayOAuthCallbackRequest.md) |  |

### Return type

[**PaymentGateway**](PaymentGateway.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updatePaymentGatewayApi



### Example

```bash
 updatePaymentGatewayApi gateway_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gatewayId** | **string** |  | [default to null]
 **body** | **AnyType** |  |

### Return type

[**PaymentGateway**](PaymentGateway.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

