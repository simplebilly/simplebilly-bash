# BomApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBom**](BomApi.md#createBom) | **POST** /api/v1/boms | 
[**deleteBom**](BomApi.md#deleteBom) | **DELETE** /api/v1/boms/{bom_id} | 
[**getBom**](BomApi.md#getBom) | **GET** /api/v1/boms/{bom_id} | 
[**listBoms**](BomApi.md#listBoms) | **GET** /api/v1/boms/ | 
[**updateBom**](BomApi.md#updateBom) | **PUT** /api/v1/boms/{bom_id} | 



## createBom



### Example

```bash
 createBom
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bomCreate** | [**BomCreate**](BomCreate.md) |  |

### Return type

[**Bom**](Bom.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteBom



### Example

```bash
 deleteBom bom_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bomId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getBom



### Example

```bash
 getBom bom_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bomId** | **string** |  | [default to null]

### Return type

[**Bom**](Bom.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listBoms



### Example

```bash
 listBoms  page=value  pageSize=value  search=value  productId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **search** | **string** |  | [optional] [default to null]
 **productId** | **string** | Filter by finished product id. | [optional] [default to null]

### Return type

[**array[Bom]**](Bom.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateBom



### Example

```bash
 updateBom bom_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bomId** | **string** |  | [default to null]
 **bomUpdate** | [**BomUpdate**](BomUpdate.md) |  |

### Return type

[**Bom**](Bom.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

