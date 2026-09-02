# SilentPartnerApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSilentPartner**](SilentPartnerApi.md#createSilentPartner) | **POST** /api/v1/silent-partners | 
[**deleteSilentPartner**](SilentPartnerApi.md#deleteSilentPartner) | **DELETE** /api/v1/silent-partners/{id} | 
[**getSilentPartner**](SilentPartnerApi.md#getSilentPartner) | **GET** /api/v1/silent-partners/{id} | 
[**getSilentPartners**](SilentPartnerApi.md#getSilentPartners) | **GET** /api/v1/silent-partners/ | 
[**updateSilentPartner**](SilentPartnerApi.md#updateSilentPartner) | **PUT** /api/v1/silent-partners/{id} | 



## createSilentPartner



### Example

```bash
 createSilentPartner
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **silentPartnerCreate** | [**SilentPartnerCreate**](SilentPartnerCreate.md) |  |

### Return type

[**SilentPartner**](SilentPartner.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteSilentPartner



### Example

```bash
 deleteSilentPartner id=value
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


## getSilentPartner



### Example

```bash
 getSilentPartner id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]

### Return type

[**SilentPartner**](SilentPartner.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSilentPartners



### Example

```bash
 getSilentPartners  page=value  page_size=value  search=value  include_deleted=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **search** | **string** |  | [optional] [default to null]
 **includeDeleted** | **boolean** | Soft-delete entities: set true to include rows with 'deleted_at' set. | [optional] [default to null]

### Return type

[**array[SilentPartner]**](SilentPartner.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateSilentPartner



### Example

```bash
 updateSilentPartner id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]
 **silentPartnerUpdate** | [**SilentPartnerUpdate**](SilentPartnerUpdate.md) |  |

### Return type

[**SilentPartner**](SilentPartner.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

