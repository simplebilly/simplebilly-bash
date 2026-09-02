# ProductVariantApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createProductVariant**](ProductVariantApi.md#createProductVariant) | **POST** /api/v1/product-variants | 
[**deleteProductVariant**](ProductVariantApi.md#deleteProductVariant) | **DELETE** /api/v1/product-variants/{variant_id} | 
[**generateProductVariants**](ProductVariantApi.md#generateProductVariants) | **POST** /api/v1/product-variants/generate | 
[**getProductVariant**](ProductVariantApi.md#getProductVariant) | **GET** /api/v1/product-variants/{variant_id} | 
[**listProductVariants**](ProductVariantApi.md#listProductVariants) | **GET** /api/v1/product-variants/ | 
[**updateProductVariant**](ProductVariantApi.md#updateProductVariant) | **PUT** /api/v1/product-variants/{variant_id} | 



## createProductVariant



### Example

```bash
 createProductVariant
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productVariant** | [**ProductVariant**](ProductVariant.md) |  |

### Return type

[**ProductVariant**](ProductVariant.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteProductVariant



### Example

```bash
 deleteProductVariant variant_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variantId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## generateProductVariants



### Example

```bash
 generateProductVariants
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generateVariantsRequest** | [**GenerateVariantsRequest**](GenerateVariantsRequest.md) |  |

### Return type

[**array[ProductVariant]**](ProductVariant.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getProductVariant



### Example

```bash
 getProductVariant variant_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variantId** | **string** |  | [default to null]

### Return type

[**ProductVariant**](ProductVariant.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listProductVariants



### Example

```bash
 listProductVariants  page=value  page_size=value  product_id=value  is_active=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **productId** | **string** |  | [optional] [default to null]
 **isActive** | **boolean** |  | [optional] [default to null]

### Return type

[**array[ProductVariant]**](ProductVariant.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateProductVariant



### Example

```bash
 updateProductVariant variant_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variantId** | **string** |  | [default to null]
 **body** | **AnyType** |  |

### Return type

[**ProductVariant**](ProductVariant.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

