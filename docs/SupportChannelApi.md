# SupportChannelApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createChannelApi**](SupportChannelApi.md#createChannelApi) | **POST** /api/v1/support/channels | 
[**deleteChannelApi**](SupportChannelApi.md#deleteChannelApi) | **DELETE** /api/v1/support/channels/{channel_id} | 
[**listChannelsApi**](SupportChannelApi.md#listChannelsApi) | **GET** /api/v1/support/channels | 
[**updateChannelApi**](SupportChannelApi.md#updateChannelApi) | **PUT** /api/v1/support/channels/{channel_id} | 



## createChannelApi



### Example

```bash
 createChannelApi
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createChannelDto** | [**CreateChannelDto**](CreateChannelDto.md) |  |

### Return type

[**SupportChannel**](SupportChannel.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteChannelApi



### Example

```bash
 deleteChannelApi channel_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listChannelsApi



### Example

```bash
 listChannelsApi
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[SupportChannel]**](SupportChannel.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateChannelApi



### Example

```bash
 updateChannelApi channel_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **string** |  | [default to null]
 **updateChannelDto** | [**UpdateChannelDto**](UpdateChannelDto.md) |  |

### Return type

[**SupportChannel**](SupportChannel.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

