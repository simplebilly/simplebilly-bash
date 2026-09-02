# ProductApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createProductApi**](ProductApi.md#createProductApi) | **POST** /api/v1/products | 
[**deleteProductApi**](ProductApi.md#deleteProductApi) | **DELETE** /api/v1/products/{product_id} | 
[**getProductApi**](ProductApi.md#getProductApi) | **GET** /api/v1/products/{product_id} | 
[**getProductStockApi**](ProductApi.md#getProductStockApi) | **GET** /api/v1/products/{product_id}/stock | 
[**getProductsApi**](ProductApi.md#getProductsApi) | **GET** /api/v1/products/ | 
[**listLowStockProductsApi**](ProductApi.md#listLowStockProductsApi) | **GET** /api/v1/products/low-stock | 
[**productRestore**](ProductApi.md#productRestore) | **POST** /api/v1/products/{product_id}/restore | 
[**updateProductApi**](ProductApi.md#updateProductApi) | **PUT** /api/v1/products/{product_id} | 
[**updateProductStockApi**](ProductApi.md#updateProductStockApi) | **PUT** /api/v1/products/{product_id}/stock | 



## createProductApi



### Example

```bash
 createProductApi
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productCreate** | [**ProductCreate**](ProductCreate.md) |  |

### Return type

[**Product**](Product.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteProductApi



### Example

```bash
 deleteProductApi product_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getProductApi



### Example

```bash
 getProductApi product_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **string** |  | [default to null]

### Return type

[**Product**](Product.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getProductStockApi



### Example

```bash
 getProductStockApi product_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **string** |  | [default to null]

### Return type

[**ProductStock**](ProductStock.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getProductsApi



### Example

```bash
 getProductsApi  page=value  page_size=value  search=value  include_deleted=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **search** | **string** |  | [optional] [default to null]
 **includeDeleted** | **boolean** | Soft-delete entities: set true to include rows with 'deleted_at' set. | [optional] [default to null]

### Return type

[**array[Product]**](Product.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listLowStockProductsApi



### Example

```bash
 listLowStockProductsApi  threshold=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threshold** | **integer** |  | [optional] [default to null]

### Return type

[**array[ProductStock]**](ProductStock.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## productRestore



### Example

```bash
 productRestore product_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **string** |  | [default to null]

### Return type

[**Product**](Product.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateProductApi



### Example

```bash
 updateProductApi product_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **string** |  | [default to null]
 **productUpdate** | [**ProductUpdate**](ProductUpdate.md) |  |

### Return type

[**Product**](Product.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateProductStockApi



### Example

```bash
 updateProductStockApi product_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **string** |  | [default to null]
 **stockUpdateRequest** | [**StockUpdateRequest**](StockUpdateRequest.md) |  |

### Return type

[**ProductStock**](ProductStock.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

