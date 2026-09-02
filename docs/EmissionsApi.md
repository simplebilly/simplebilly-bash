# EmissionsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createEmissionEntryApi**](EmissionsApi.md#createEmissionEntryApi) | **POST** /api/v1/bookkeeping/emissions/entries | 
[**createEmissionTargetApi**](EmissionsApi.md#createEmissionTargetApi) | **POST** /api/v1/bookkeeping/emissions/targets | 
[**deleteEmissionEntryApi**](EmissionsApi.md#deleteEmissionEntryApi) | **DELETE** /api/v1/bookkeeping/emissions/entries/{id} | 
[**deleteEmissionTargetApi**](EmissionsApi.md#deleteEmissionTargetApi) | **DELETE** /api/v1/bookkeeping/emissions/targets/{id} | 
[**emissionsEntriesApi**](EmissionsApi.md#emissionsEntriesApi) | **GET** /api/v1/bookkeeping/emissions/entries | 
[**emissionsExportApi**](EmissionsApi.md#emissionsExportApi) | **GET** /api/v1/bookkeeping/emissions/export | 
[**emissionsFactorsApi**](EmissionsApi.md#emissionsFactorsApi) | **GET** /api/v1/bookkeeping/emissions/factors | 
[**emissionsReportApi**](EmissionsApi.md#emissionsReportApi) | **GET** /api/v1/bookkeeping/emissions/report | 
[**emissionsTargetsApi**](EmissionsApi.md#emissionsTargetsApi) | **GET** /api/v1/bookkeeping/emissions/targets | 



## createEmissionEntryApi



### Example

```bash
 createEmissionEntryApi
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createEmissionEntry** | [**CreateEmissionEntry**](CreateEmissionEntry.md) |  |

### Return type

[**EmissionEntry**](EmissionEntry.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createEmissionTargetApi



### Example

```bash
 createEmissionTargetApi
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createEmissionTarget** | [**CreateEmissionTarget**](CreateEmissionTarget.md) |  |

### Return type

[**EmissionTarget**](EmissionTarget.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteEmissionEntryApi



### Example

```bash
 deleteEmissionEntryApi id=value
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


## deleteEmissionTargetApi



### Example

```bash
 deleteEmissionTargetApi id=value
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


## emissionsEntriesApi



### Example

```bash
 emissionsEntriesApi  year=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer** |  | [default to null]

### Return type

[**array[EmissionEntry]**](EmissionEntry.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## emissionsExportApi



### Example

```bash
 emissionsExportApi  year=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer** |  | [default to null]

### Return type

[**EmissionsExportResponse**](EmissionsExportResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## emissionsFactorsApi



### Example

```bash
 emissionsFactorsApi
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[EmissionFactorResponse]**](EmissionFactorResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## emissionsReportApi



### Example

```bash
 emissionsReportApi  year=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer** |  | [default to null]

### Return type

[**EmissionsReport**](EmissionsReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## emissionsTargetsApi



### Example

```bash
 emissionsTargetsApi
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[EmissionTarget]**](EmissionTarget.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

