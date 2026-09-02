# GroupFigureApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGroupFigure**](GroupFigureApi.md#createGroupFigure) | **POST** /api/v1/group-figures | 
[**deleteGroupFigure**](GroupFigureApi.md#deleteGroupFigure) | **DELETE** /api/v1/group-figures/{year} | 
[**getGroupFigure**](GroupFigureApi.md#getGroupFigure) | **GET** /api/v1/group-figures/{year} | 
[**getGroupFigures**](GroupFigureApi.md#getGroupFigures) | **GET** /api/v1/group-figures/ | 
[**updateGroupFigure**](GroupFigureApi.md#updateGroupFigure) | **PUT** /api/v1/group-figures/{year} | 



## createGroupFigure



### Example

```bash
 createGroupFigure
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupFigureCreate** | [**GroupFigureCreate**](GroupFigureCreate.md) |  |

### Return type

[**GroupFigure**](GroupFigure.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteGroupFigure



### Example

```bash
 deleteGroupFigure year=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getGroupFigure



### Example

```bash
 getGroupFigure year=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer** |  | [default to null]

### Return type

[**GroupFigure**](GroupFigure.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getGroupFigures



### Example

```bash
 getGroupFigures  page=value  page_size=value  search=value  include_deleted=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **search** | **string** |  | [optional] [default to null]
 **includeDeleted** | **boolean** | Soft-delete entities: set true to include rows with 'deleted_at' set. | [optional] [default to null]

### Return type

[**array[GroupFigure]**](GroupFigure.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateGroupFigure



### Example

```bash
 updateGroupFigure year=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer** |  | [default to null]
 **groupFigureUpdate** | [**GroupFigureUpdate**](GroupFigureUpdate.md) |  |

### Return type

[**GroupFigure**](GroupFigure.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

