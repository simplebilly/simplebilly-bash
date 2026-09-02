# TaxApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTaxRate**](TaxApi.md#createTaxRate) | **POST** /api/v1/tax-rates | Create a tax rate (&#39;admin:settings&#39;).
[**deleteTaxRate**](TaxApi.md#deleteTaxRate) | **DELETE** /api/v1/tax-rates/{id} | Delete a tax rate by id (&#39;admin:settings&#39;).
[**listTaxRates**](TaxApi.md#listTaxRates) | **GET** /api/v1/tax-rates | List the calling tenant&#39;s tax rates.
[**updateTaxRate**](TaxApi.md#updateTaxRate) | **PUT** /api/v1/tax-rates/{id} | Update a tax rate by id (&#39;admin:settings&#39;). Replaces all body fields.



## createTaxRate

Create a tax rate ('admin:settings').

### Example

```bash
 createTaxRate
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxRateCreate** | [**TaxRateCreate**](TaxRateCreate.md) |  |

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteTaxRate

Delete a tax rate by id ('admin:settings').

### Example

```bash
 deleteTaxRate id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listTaxRates

List the calling tenant's tax rates.

### Example

```bash
 listTaxRates
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


## updateTaxRate

Update a tax rate by id ('admin:settings'). Replaces all body fields.

### Example

```bash
 updateTaxRate id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]
 **taxRateCreate** | [**TaxRateCreate**](TaxRateCreate.md) |  |

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

