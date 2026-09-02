# KycRecordApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createKycRecord**](KycRecordApi.md#createKycRecord) | **POST** /api/v1/kyc-records | 
[**deleteKycRecord**](KycRecordApi.md#deleteKycRecord) | **DELETE** /api/v1/kyc-records/{id} | 
[**getKycRecord**](KycRecordApi.md#getKycRecord) | **GET** /api/v1/kyc-records/{id} | 
[**getKycRecords**](KycRecordApi.md#getKycRecords) | **GET** /api/v1/kyc-records/ | 
[**updateKycRecord**](KycRecordApi.md#updateKycRecord) | **PUT** /api/v1/kyc-records/{id} | 



## createKycRecord



### Example

```bash
 createKycRecord
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **kycRecordCreate** | [**KycRecordCreate**](KycRecordCreate.md) |  |

### Return type

[**KycRecord**](KycRecord.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteKycRecord



### Example

```bash
 deleteKycRecord id=value
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


## getKycRecord



### Example

```bash
 getKycRecord id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]

### Return type

[**KycRecord**](KycRecord.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getKycRecords



### Example

```bash
 getKycRecords  page=value  page_size=value  search=value  include_deleted=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **search** | **string** |  | [optional] [default to null]
 **includeDeleted** | **boolean** | Soft-delete entities: set true to include rows with 'deleted_at' set. | [optional] [default to null]

### Return type

[**array[KycRecord]**](KycRecord.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateKycRecord



### Example

```bash
 updateKycRecord id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]
 **kycRecordUpdate** | [**KycRecordUpdate**](KycRecordUpdate.md) |  |

### Return type

[**KycRecord**](KycRecord.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

