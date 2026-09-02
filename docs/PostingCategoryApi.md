# PostingCategoryApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPostingCategory**](PostingCategoryApi.md#createPostingCategory) | **POST** /api/v1/posting-categories | 
[**deletePostingCategory**](PostingCategoryApi.md#deletePostingCategory) | **DELETE** /api/v1/posting-categories/{category_id} | 
[**listPostingCategories**](PostingCategoryApi.md#listPostingCategories) | **GET** /api/v1/posting-categories | 
[**seedPostingCategories**](PostingCategoryApi.md#seedPostingCategories) | **POST** /api/v1/posting-categories/seed/{skr_version} | 
[**updatePostingCategory**](PostingCategoryApi.md#updatePostingCategory) | **PUT** /api/v1/posting-categories/{category_id} | 



## createPostingCategory



### Example

```bash
 createPostingCategory
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **AnyType** |  |

### Return type

[**PostingCategory**](PostingCategory.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deletePostingCategory



### Example

```bash
 deletePostingCategory category_id=value
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


## listPostingCategories



### Example

```bash
 listPostingCategories
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[PostingCategory]**](PostingCategory.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## seedPostingCategories



### Example

```bash
 seedPostingCategories skr_version=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **skrVersion** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updatePostingCategory



### Example

```bash
 updatePostingCategory category_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryId** | **string** |  | [default to null]
 **body** | **AnyType** |  |

### Return type

[**PostingCategory**](PostingCategory.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

