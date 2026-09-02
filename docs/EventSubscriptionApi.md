# EventSubscriptionApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createEventSubscription**](EventSubscriptionApi.md#createEventSubscription) | **POST** /api/v1/event-subscriptions | 
[**deleteEventSubscription**](EventSubscriptionApi.md#deleteEventSubscription) | **DELETE** /api/v1/event-subscriptions/{subscription_id} | 
[**listEventSubscriptions**](EventSubscriptionApi.md#listEventSubscriptions) | **GET** /api/v1/event-subscriptions/ | 



## createEventSubscription



### Example

```bash
 createEventSubscription
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **AnyType** |  |

### Return type

[**EventSubscription**](EventSubscription.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteEventSubscription



### Example

```bash
 deleteEventSubscription subscription_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriptionId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listEventSubscriptions



### Example

```bash
 listEventSubscriptions
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[EventSubscription]**](EventSubscription.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

