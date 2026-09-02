# MarketplaceApiApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createConnectionApi**](MarketplaceApiApi.md#createConnectionApi) | **POST** /api/v1/marketplace/connections | Create a new connection (for API-key based platforms)
[**deleteConnectionApi**](MarketplaceApiApi.md#deleteConnectionApi) | **DELETE** /api/v1/marketplace/connections/{connection_id} | Soft-delete a connection
[**getConnectionApi**](MarketplaceApiApi.md#getConnectionApi) | **GET** /api/v1/marketplace/connections/{connection_id} | Get a single connection
[**getSyncDirectionApi**](MarketplaceApiApi.md#getSyncDirectionApi) | **GET** /api/v1/marketplace/connections/{connection_id}/directions | Get current sync direction configuration for a connection
[**getSyncLogsApi**](MarketplaceApiApi.md#getSyncLogsApi) | **GET** /api/v1/marketplace/connections/{connection_id}/logs | Get sync logs for a connection
[**listConnectionsApi**](MarketplaceApiApi.md#listConnectionsApi) | **GET** /api/v1/marketplace/connections | List connections for the current tenant
[**listPlatformsApi**](MarketplaceApiApi.md#listPlatformsApi) | **GET** /api/v1/marketplace/platforms | List all supported platforms
[**oauthAuthorizeApi**](MarketplaceApiApi.md#oauthAuthorizeApi) | **POST** /api/v1/marketplace/oauth/authorize | OAuth: initiate authorization flow
[**oauthCallbackApi**](MarketplaceApiApi.md#oauthCallbackApi) | **POST** /api/v1/marketplace/oauth/callback | OAuth: handle callback after authorization
[**triggerSyncApi**](MarketplaceApiApi.md#triggerSyncApi) | **POST** /api/v1/marketplace/connections/{connection_id}/sync | Trigger sync for a connection
[**updateConnectionApi**](MarketplaceApiApi.md#updateConnectionApi) | **PUT** /api/v1/marketplace/connections/{connection_id} | Update a connection
[**updateSyncDirectionApi**](MarketplaceApiApi.md#updateSyncDirectionApi) | **PUT** /api/v1/marketplace/connections/{connection_id}/directions | Update per-entity sync direction configuration for a connection
[**webhookReceiverApi**](MarketplaceApiApi.md#webhookReceiverApi) | **POST** /api/v1/marketplace/webhook/{platform}/{connection_id} | Webhook receiver



## createConnectionApi

Create a new connection (for API-key based platforms)

### Example

```bash
 createConnectionApi
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createConnectionRequest** | [**CreateConnectionRequest**](CreateConnectionRequest.md) |  |

### Return type

[**MarketplaceConnection**](MarketplaceConnection.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteConnectionApi

Soft-delete a connection

### Example

```bash
 deleteConnectionApi connection_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connectionId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getConnectionApi

Get a single connection

### Example

```bash
 getConnectionApi connection_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connectionId** | **string** |  | [default to null]

### Return type

[**MarketplaceConnection**](MarketplaceConnection.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSyncDirectionApi

Get current sync direction configuration for a connection

### Example

```bash
 getSyncDirectionApi connection_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connectionId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSyncLogsApi

Get sync logs for a connection

### Example

```bash
 getSyncLogsApi connection_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connectionId** | **string** |  | [default to null]

### Return type

[**array[SyncLog]**](SyncLog.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listConnectionsApi

List connections for the current tenant

### Example

```bash
 listConnectionsApi
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[MarketplaceConnection]**](MarketplaceConnection.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listPlatformsApi

List all supported platforms

### Example

```bash
 listPlatformsApi
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[PlatformInfo]**](PlatformInfo.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## oauthAuthorizeApi

OAuth: initiate authorization flow

### Example

```bash
 oauthAuthorizeApi
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **oAuthAuthorizeRequest** | [**OAuthAuthorizeRequest**](OAuthAuthorizeRequest.md) |  |

### Return type

[**OAuthAuthorizeResponse**](OAuthAuthorizeResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## oauthCallbackApi

OAuth: handle callback after authorization

### Example

```bash
 oauthCallbackApi
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **oAuthCallbackRequest** | [**OAuthCallbackRequest**](OAuthCallbackRequest.md) |  |

### Return type

[**MarketplaceConnection**](MarketplaceConnection.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## triggerSyncApi

Trigger sync for a connection

### Example

```bash
 triggerSyncApi connection_id=value  sync_type=value  direction=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connectionId** | **string** |  | [default to null]
 **syncType** | **string** |  | [optional] [default to null]
 **direction** | **string** |  | [optional] [default to null]

### Return type

[**SyncSummary**](SyncSummary.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateConnectionApi

Update a connection

### Example

```bash
 updateConnectionApi connection_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connectionId** | **string** |  | [default to null]
 **updateConnectionRequest** | [**UpdateConnectionRequest**](UpdateConnectionRequest.md) |  |

### Return type

[**MarketplaceConnection**](MarketplaceConnection.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateSyncDirectionApi

Update per-entity sync direction configuration for a connection

### Example

```bash
 updateSyncDirectionApi connection_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connectionId** | **string** |  | [default to null]
 **updateSyncDirectionRequest** | [**UpdateSyncDirectionRequest**](UpdateSyncDirectionRequest.md) |  |

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## webhookReceiverApi

Webhook receiver

### Example

```bash
 webhookReceiverApi platform=value connection_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **platform** | **string** |  | [default to null]
 **connectionId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

