# ParticipationApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createParticipation**](ParticipationApi.md#createParticipation) | **POST** /api/v1/participations | 
[**deleteParticipation**](ParticipationApi.md#deleteParticipation) | **DELETE** /api/v1/participations/{id} | 
[**getParticipation**](ParticipationApi.md#getParticipation) | **GET** /api/v1/participations/{id} | 
[**getParticipations**](ParticipationApi.md#getParticipations) | **GET** /api/v1/participations/ | 
[**updateParticipation**](ParticipationApi.md#updateParticipation) | **PUT** /api/v1/participations/{id} | 



## createParticipation



### Example

```bash
 createParticipation
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **participationCreate** | [**ParticipationCreate**](ParticipationCreate.md) |  |

### Return type

[**Participation**](Participation.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteParticipation



### Example

```bash
 deleteParticipation id=value
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
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getParticipation



### Example

```bash
 getParticipation id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]

### Return type

[**Participation**](Participation.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getParticipations



### Example

```bash
 getParticipations  page=value  page_size=value  search=value  include_deleted=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **search** | **string** |  | [optional] [default to null]
 **includeDeleted** | **boolean** | Soft-delete entities: set true to include rows with 'deleted_at' set. | [optional] [default to null]

### Return type

[**array[Participation]**](Participation.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateParticipation



### Example

```bash
 updateParticipation id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]
 **participationUpdate** | [**ParticipationUpdate**](ParticipationUpdate.md) |  |

### Return type

[**Participation**](Participation.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

