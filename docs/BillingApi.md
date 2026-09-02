# BillingApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**getPlans**](BillingApi.md#getPlans) | **GET** /api/v1/plans | All canonical plans (free/starter/business/enterprise) — the single
source of truth lives in &#39;crate::saasy::plans&#39;, matching marketing.
[**getQuotaApi**](BillingApi.md#getQuotaApi) | **GET** /api/v1/quota | Effective limits + current usage for the calling tenant.
[**getSubscriptionApi**](BillingApi.md#getSubscriptionApi) | **GET** /api/v1/subscription | 
[**getUsageApi**](BillingApi.md#getUsageApi) | **GET** /api/v1/usage | 
[**paddleSubscriptionWebhook**](BillingApi.md#paddleSubscriptionWebhook) | **POST** /api/webhooks/paddle/subscription | Paddle Billing subscription webhook. Verifies the &#39;Paddle-Signature&#39;
header (HMAC-SHA256 over &#39;\&quot;{ts}:{raw_body}\&quot;&#39; with the webhook secret),
then updates &#39;billing_info&#39; and &#39;tenants.plan&#39; for the tenant identified
by the subscription &#39;custom_data&#39; (JSON &#39;{\&quot;tenant_id\&quot;: \&quot;...\&quot;}&#39; or a bare
tenant UUID).
[**putQuotaApi**](BillingApi.md#putQuotaApi) | **PUT** /api/v1/quota | Write the per-tenant quota override (&#39;admin:settings&#39;). An empty object
clears the override.



## getPlans

All canonical plans (free/starter/business/enterprise) — the single
source of truth lives in 'crate::saasy::plans', matching marketing.

### Example

```bash
 getPlans
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ApiResponseVecPlan**](ApiResponseVecPlan.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getQuotaApi

Effective limits + current usage for the calling tenant.

### Example

```bash
 getQuotaApi
```

### Parameters

This endpoint does not need any parameter.

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSubscriptionApi



### Example

```bash
 getSubscriptionApi
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ApiResponseSubscriptionOverview**](ApiResponseSubscriptionOverview.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getUsageApi



### Example

```bash
 getUsageApi  meter=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meter** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## paddleSubscriptionWebhook

Paddle Billing subscription webhook. Verifies the 'Paddle-Signature'
header (HMAC-SHA256 over '\"{ts}:{raw_body}\"' with the webhook secret),
then updates 'billing_info' and 'tenants.plan' for the tenant identified
by the subscription 'custom_data' (JSON '{\"tenant_id\": \"...\"}' or a bare
tenant UUID).

### Example

```bash
 paddleSubscriptionWebhook
```

### Parameters

This endpoint does not need any parameter.

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## putQuotaApi

Write the per-tenant quota override ('admin:settings'). An empty object
clears the override.

### Example

```bash
 putQuotaApi
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **quotaOverride** | [**QuotaOverride**](QuotaOverride.md) |  |

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

