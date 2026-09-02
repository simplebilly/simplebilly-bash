# ProductCategoryApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createProductCategory**](ProductCategoryApi.md#createProductCategory) | **POST** /api/v1/product-categories | 
[**deleteProductCategory**](ProductCategoryApi.md#deleteProductCategory) | **DELETE** /api/v1/product-categories/{category_id} | 
[**getProductCategory**](ProductCategoryApi.md#getProductCategory) | **GET** /api/v1/product-categories/{category_id} | 
[**listProductCategories**](ProductCategoryApi.md#listProductCategories) | **GET** /api/v1/product-categories | 
[**updateProductCategory**](ProductCategoryApi.md#updateProductCategory) | **PUT** /api/v1/product-categories/{category_id} | 



## createProductCategory



### Example

```bash
 createProductCategory
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productCategory** | [**ProductCategory**](ProductCategory.md) |  |

### Return type

[**ProductCategory**](ProductCategory.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteProductCategory



### Example

```bash
 deleteProductCategory category_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getProductCategory



### Example

```bash
 getProductCategory category_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryId** | **string** |  | [default to null]

### Return type

[**ProductCategory**](ProductCategory.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listProductCategories



### Example

```bash
 listProductCategories
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[ProductCategory]**](ProductCategory.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateProductCategory



### Example

```bash
 updateProductCategory category_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryId** | **string** |  | [default to null]
 **body** | **AnyType** |  |

### Return type

[**ProductCategory**](ProductCategory.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

