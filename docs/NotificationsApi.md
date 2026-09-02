# NotificationsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteNotification**](NotificationsApi.md#deleteNotification) | **DELETE** /api/v1/notifications/{id} | 
[**listNotifications**](NotificationsApi.md#listNotifications) | **GET** /api/v1/notifications | 
[**markAllRead**](NotificationsApi.md#markAllRead) | **PUT** /api/v1/notifications/read-all | 
[**markAsRead**](NotificationsApi.md#markAsRead) | **PUT** /api/v1/notifications/{id}/read | 
[**unreadCount**](NotificationsApi.md#unreadCount) | **GET** /api/v1/notifications/unread-count | 



## deleteNotification



### Example

```bash
 deleteNotification id=value
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
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listNotifications



### Example

```bash
 listNotifications
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[NotificationDto]**](NotificationDto.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## markAllRead



### Example

```bash
 markAllRead
```

### Parameters

This endpoint does not need any parameter.

### Return type

**integer**

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## markAsRead



### Example

```bash
 markAsRead id=value
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
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## unreadCount



### Example

```bash
 unreadCount
```

### Parameters

This endpoint does not need any parameter.

### Return type

**integer**

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

