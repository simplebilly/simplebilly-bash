# WebhooksApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSubscription**](WebhooksApi.md#createSubscription) | **POST** /api/v1/webhook-subscriptions | Create a webhook subscription (outbound hook).
[**deleteSubscription**](WebhooksApi.md#deleteSubscription) | **DELETE** /api/v1/webhook-subscriptions/{subscription_id} | Delete a webhook subscription.
[**emitApi**](WebhooksApi.md#emitApi) | **POST** /api/v1/webhooks/emit | Manually fire an event against matching hooks (for testing/flows).
[**listEvent**](WebhooksApi.md#listEvent) | **GET** /api/v1/webhook-events | List webhook events (inbound + outbound log).
[**listSubscriptions**](WebhooksApi.md#listSubscriptions) | **GET** /api/v1/webhook-subscriptions | List webhook subscriptions for the tenant.
[**updateSubscription**](WebhooksApi.md#updateSubscription) | **PUT** /api/v1/webhook-subscriptions/{subscription_id} | Update a webhook subscription.



## createSubscription

Create a webhook subscription (outbound hook).

### Example

```bash
 createSubscription
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createSubscriptionRequest** | [**CreateSubscriptionRequest**](CreateSubscriptionRequest.md) |  |

### Return type

[**WebhookSubscription**](WebhookSubscription.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteSubscription

Delete a webhook subscription.

### Example

```bash
 deleteSubscription subscription_id=value
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
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## emitApi

Manually fire an event against matching hooks (for testing/flows).

### Example

```bash
 emitApi
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emitEventRequest** | [**EmitEventRequest**](EmitEventRequest.md) |  |

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listEvent

List webhook events (inbound + outbound log).

### Example

```bash
 listEvent
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[WebhookEvent]**](WebhookEvent.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listSubscriptions

List webhook subscriptions for the tenant.

### Example

```bash
 listSubscriptions
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[WebhookSubscription]**](WebhookSubscription.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateSubscription

Update a webhook subscription.

### Example

```bash
 updateSubscription subscription_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriptionId** | **string** |  | [default to null]
 **updateSubscriptionRequest** | [**UpdateSubscriptionRequest**](UpdateSubscriptionRequest.md) |  |

### Return type

[**WebhookSubscription**](WebhookSubscription.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

