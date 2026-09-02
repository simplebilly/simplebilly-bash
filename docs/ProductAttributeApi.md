# ProductAttributeApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createProductAttribute**](ProductAttributeApi.md#createProductAttribute) | **POST** /api/v1/product-attributes | 
[**deleteProductAttribute**](ProductAttributeApi.md#deleteProductAttribute) | **DELETE** /api/v1/product-attributes/{attribute_id} | 
[**getProductAttribute**](ProductAttributeApi.md#getProductAttribute) | **GET** /api/v1/product-attributes/{attribute_id} | 
[**listProductAttributes**](ProductAttributeApi.md#listProductAttributes) | **GET** /api/v1/product-attributes/ | 
[**updateProductAttribute**](ProductAttributeApi.md#updateProductAttribute) | **PUT** /api/v1/product-attributes/{attribute_id} | 



## createProductAttribute



### Example

```bash
 createProductAttribute
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productAttributeCreate** | [**ProductAttributeCreate**](ProductAttributeCreate.md) |  |

### Return type

[**ProductAttribute**](ProductAttribute.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteProductAttribute



### Example

```bash
 deleteProductAttribute attribute_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attributeId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getProductAttribute



### Example

```bash
 getProductAttribute attribute_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attributeId** | **string** |  | [default to null]

### Return type

[**ProductAttribute**](ProductAttribute.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listProductAttributes



### Example

```bash
 listProductAttributes  page=value  page_size=value  product_id=value  is_filterable=value  search=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **productId** | **string** |  | [optional] [default to null]
 **isFilterable** | **boolean** |  | [optional] [default to null]
 **search** | **string** |  | [optional] [default to null]

### Return type

[**array[ProductAttribute]**](ProductAttribute.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateProductAttribute



### Example

```bash
 updateProductAttribute attribute_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attributeId** | **string** |  | [default to null]
 **productAttributeUpdate** | [**ProductAttributeUpdate**](ProductAttributeUpdate.md) |  |

### Return type

[**ProductAttribute**](ProductAttribute.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

