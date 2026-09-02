# SupplierConditionApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSupplierCondition**](SupplierConditionApi.md#createSupplierCondition) | **POST** /api/v1/supplier-conditions | 
[**deleteSupplierCondition**](SupplierConditionApi.md#deleteSupplierCondition) | **DELETE** /api/v1/supplier-conditions/{supplier_condition_id} | 
[**getSupplierCondition**](SupplierConditionApi.md#getSupplierCondition) | **GET** /api/v1/supplier-conditions/{supplier_condition_id} | 
[**listSupplierConditions**](SupplierConditionApi.md#listSupplierConditions) | **GET** /api/v1/supplier-conditions/ | 
[**updateSupplierCondition**](SupplierConditionApi.md#updateSupplierCondition) | **PUT** /api/v1/supplier-conditions/{supplier_condition_id} | 



## createSupplierCondition



### Example

```bash
 createSupplierCondition
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supplierConditionCreate** | [**SupplierConditionCreate**](SupplierConditionCreate.md) |  |

### Return type

[**SupplierCondition**](SupplierCondition.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteSupplierCondition



### Example

```bash
 deleteSupplierCondition supplier_condition_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supplierConditionId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSupplierCondition



### Example

```bash
 getSupplierCondition supplier_condition_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supplierConditionId** | **string** |  | [default to null]

### Return type

[**SupplierCondition**](SupplierCondition.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listSupplierConditions



### Example

```bash
 listSupplierConditions  page=value  page_size=value  supplier_contact_id=value  search=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **supplierContactId** | **string** |  | [optional] [default to null]
 **search** | **string** |  | [optional] [default to null]

### Return type

[**array[SupplierCondition]**](SupplierCondition.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateSupplierCondition



### Example

```bash
 updateSupplierCondition supplier_condition_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supplierConditionId** | **string** |  | [default to null]
 **supplierConditionUpdate** | [**SupplierConditionUpdate**](SupplierConditionUpdate.md) |  |

### Return type

[**SupplierCondition**](SupplierCondition.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

