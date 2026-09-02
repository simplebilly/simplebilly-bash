# EmployeeApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createEmployee**](EmployeeApi.md#createEmployee) | **POST** /api/v1/employees | 
[**deleteEmployee**](EmployeeApi.md#deleteEmployee) | **DELETE** /api/v1/employees/{id} | 
[**employeeRestore**](EmployeeApi.md#employeeRestore) | **POST** /api/v1/employees/{id}/restore | 
[**getEmployee**](EmployeeApi.md#getEmployee) | **GET** /api/v1/employees/{id} | 
[**getEmployeePayrollSummary**](EmployeeApi.md#getEmployeePayrollSummary) | **GET** /api/v1/employees/{id}/payroll-summary | 
[**getEmployees**](EmployeeApi.md#getEmployees) | **GET** /api/v1/employees/ | 
[**updateEmployee**](EmployeeApi.md#updateEmployee) | **PUT** /api/v1/employees/{id} | 



## createEmployee



### Example

```bash
 createEmployee
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employeeCreate** | [**EmployeeCreate**](EmployeeCreate.md) |  |

### Return type

[**Employee**](Employee.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteEmployee



### Example

```bash
 deleteEmployee id=value
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


## employeeRestore



### Example

```bash
 employeeRestore id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]

### Return type

[**Employee**](Employee.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getEmployee



### Example

```bash
 getEmployee id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]

### Return type

[**Employee**](Employee.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getEmployeePayrollSummary



### Example

```bash
 getEmployeePayrollSummary id=value  year=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]
 **year** | **integer** | Fiscal year for the breakdown; defaults to the current year. | [optional] [default to null]

### Return type

[**PayrollSummary**](PayrollSummary.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getEmployees



### Example

```bash
 getEmployees  page=value  page_size=value  search=value  include_deleted=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **search** | **string** |  | [optional] [default to null]
 **includeDeleted** | **boolean** | Soft-delete entities: set true to include rows with 'deleted_at' set. | [optional] [default to null]

### Return type

[**array[Employee]**](Employee.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateEmployee



### Example

```bash
 updateEmployee id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]
 **employeeUpdate** | [**EmployeeUpdate**](EmployeeUpdate.md) |  |

### Return type

[**Employee**](Employee.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

