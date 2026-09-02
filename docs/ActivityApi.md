# ActivityApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createActivity**](ActivityApi.md#createActivity) | **POST** /api/v1/activities | 
[**deleteActivity**](ActivityApi.md#deleteActivity) | **DELETE** /api/v1/activities/{activity_id} | 
[**getActivity**](ActivityApi.md#getActivity) | **GET** /api/v1/activities/{activity_id} | 
[**listActivities**](ActivityApi.md#listActivities) | **GET** /api/v1/activities/ | 
[**updateActivity**](ActivityApi.md#updateActivity) | **PUT** /api/v1/activities/{activity_id} | 
[**updateActivityStatus**](ActivityApi.md#updateActivityStatus) | **PUT** /api/v1/activities/{activity_id}/status | 



## createActivity



### Example

```bash
 createActivity
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activity** | [**Activity**](Activity.md) |  |

### Return type

[**Activity**](Activity.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteActivity



### Example

```bash
 deleteActivity activity_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activityId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getActivity



### Example

```bash
 getActivity activity_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activityId** | **string** |  | [default to null]

### Return type

[**Activity**](Activity.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listActivities



### Example

```bash
 listActivities  page=value  pageSize=value  contactId=value  activityType=value  status=value  assignedTo=value  overdueOnly=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **contactId** | **string** |  | [optional] [default to null]
 **activityType** | **string** |  | [optional] [default to null]
 **status** | **string** |  | [optional] [default to null]
 **assignedTo** | **string** |  | [optional] [default to null]
 **overdueOnly** | **boolean** | Only show overdue follow-ups. | [optional] [default to null]

### Return type

[**array[Activity]**](Activity.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateActivity



### Example

```bash
 updateActivity activity_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activityId** | **string** |  | [default to null]
 **body** | **AnyType** |  |

### Return type

[**Activity**](Activity.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateActivityStatus



### Example

```bash
 updateActivityStatus activity_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activityId** | **string** |  | [default to null]
 **activityStatusUpdate** | [**ActivityStatusUpdate**](ActivityStatusUpdate.md) |  |

### Return type

[**Activity**](Activity.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

