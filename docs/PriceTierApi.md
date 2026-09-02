# PriceTierApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPriceTier**](PriceTierApi.md#createPriceTier) | **POST** /api/v1/price-tiers | 
[**deletePriceTier**](PriceTierApi.md#deletePriceTier) | **DELETE** /api/v1/price-tiers/{price_tier_id} | 
[**getPriceTier**](PriceTierApi.md#getPriceTier) | **GET** /api/v1/price-tiers/{price_tier_id} | 
[**getResolvedPrice**](PriceTierApi.md#getResolvedPrice) | **GET** /api/v1/price-tiers/resolved | 
[**listPriceTiers**](PriceTierApi.md#listPriceTiers) | **GET** /api/v1/price-tiers/ | 
[**updatePriceTier**](PriceTierApi.md#updatePriceTier) | **PUT** /api/v1/price-tiers/{price_tier_id} | 



## createPriceTier



### Example

```bash
 createPriceTier
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **priceTierCreate** | [**PriceTierCreate**](PriceTierCreate.md) |  |

### Return type

[**PriceTier**](PriceTier.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deletePriceTier



### Example

```bash
 deletePriceTier price_tier_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **priceTierId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getPriceTier



### Example

```bash
 getPriceTier price_tier_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **priceTierId** | **string** |  | [default to null]

### Return type

[**PriceTier**](PriceTier.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getResolvedPrice



### Example

```bash
 getResolvedPrice  productId=value  quantity=value  contactId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **string** |  | [default to null]
 **quantity** | **integer** |  | [optional] [default to null]
 **contactId** | **string** | Contact used to match customer-group-scoped tiers. | [optional] [default to null]

### Return type

[**ResolvedPriceResponse**](ResolvedPriceResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listPriceTiers



### Example

```bash
 listPriceTiers  page=value  page_size=value  product_id=value  customer_group_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **productId** | **string** |  | [optional] [default to null]
 **customerGroupId** | **string** |  | [optional] [default to null]

### Return type

[**array[PriceTier]**](PriceTier.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updatePriceTier



### Example

```bash
 updatePriceTier price_tier_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **priceTierId** | **string** |  | [default to null]
 **priceTierUpdate** | [**PriceTierUpdate**](PriceTierUpdate.md) |  |

### Return type

[**PriceTier**](PriceTier.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

