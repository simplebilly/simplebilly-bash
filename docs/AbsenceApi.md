# AbsenceApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAbsence**](AbsenceApi.md#createAbsence) | **POST** /api/v1/absences | 
[**deleteAbsence**](AbsenceApi.md#deleteAbsence) | **DELETE** /api/v1/absences/{id} | 
[**getAbsence**](AbsenceApi.md#getAbsence) | **GET** /api/v1/absences/{id} | 
[**getAbsences**](AbsenceApi.md#getAbsences) | **GET** /api/v1/absences/ | 
[**updateAbsence**](AbsenceApi.md#updateAbsence) | **PUT** /api/v1/absences/{id} | 



## createAbsence



### Example

```bash
 createAbsence
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **absenceCreate** | [**AbsenceCreate**](AbsenceCreate.md) |  |

### Return type

[**Absence**](Absence.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteAbsence



### Example

```bash
 deleteAbsence id=value
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


## getAbsence



### Example

```bash
 getAbsence id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]

### Return type

[**Absence**](Absence.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAbsences



### Example

```bash
 getAbsences  page=value  page_size=value  search=value  include_deleted=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **search** | **string** |  | [optional] [default to null]
 **includeDeleted** | **boolean** | Soft-delete entities: set true to include rows with 'deleted_at' set. | [optional] [default to null]

### Return type

[**array[Absence]**](Absence.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateAbsence



### Example

```bash
 updateAbsence id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]
 **absenceUpdate** | [**AbsenceUpdate**](AbsenceUpdate.md) |  |

### Return type

[**Absence**](Absence.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

