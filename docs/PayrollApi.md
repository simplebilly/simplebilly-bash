# PayrollApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**payrollApprove**](PayrollApi.md#payrollApprove) | **POST** /api/v1/payroll/{id}/approve | 
[**payrollAutopay**](PayrollApi.md#payrollAutopay) | **POST** /api/v1/payroll/{id}/autopay | 
[**payrollCalculate**](PayrollApi.md#payrollCalculate) | **POST** /api/v1/payroll/{id}/calculate | 
[**payrollCreate**](PayrollApi.md#payrollCreate) | **POST** /api/v1/payroll | 
[**payrollDelete**](PayrollApi.md#payrollDelete) | **DELETE** /api/v1/payroll/{id} | 
[**payrollElsterExport**](PayrollApi.md#payrollElsterExport) | **POST** /api/v1/payroll/{id}/elster-export | 
[**payrollEmail**](PayrollApi.md#payrollEmail) | **POST** /api/v1/payroll/{id}/email | 
[**payrollEntryPdf**](PayrollApi.md#payrollEntryPdf) | **GET** /api/v1/payroll/{id}/entries/{entry_id}/pdf | 
[**payrollGet**](PayrollApi.md#payrollGet) | **GET** /api/v1/payroll/{id} | 
[**payrollList**](PayrollApi.md#payrollList) | **GET** /api/v1/payroll | 
[**payrollPay**](PayrollApi.md#payrollPay) | **POST** /api/v1/payroll/{id}/pay | 
[**payrollPdf**](PayrollApi.md#payrollPdf) | **GET** /api/v1/payroll/{id}/pdf | 
[**payrollSummary**](PayrollApi.md#payrollSummary) | **GET** /api/v1/payroll/summary/{year} | 
[**payrollSvMeldungen**](PayrollApi.md#payrollSvMeldungen) | **POST** /api/v1/payroll/{id}/sv-meldungen | 



## payrollApprove



### Example

```bash
 payrollApprove id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]

### Return type

[**PayrollRunApi**](PayrollRunApi.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## payrollAutopay



### Example

```bash
 payrollAutopay id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]
 **body** | **AnyType** |  | [optional]

### Return type

[**AnyType**](AnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## payrollCalculate



### Example

```bash
 payrollCalculate id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]

### Return type

[**PayrollRunApi**](PayrollRunApi.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## payrollCreate



### Example

```bash
 payrollCreate
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payrollCreatePayload** | [**PayrollCreatePayload**](PayrollCreatePayload.md) |  |

### Return type

[**PayrollRunApi**](PayrollRunApi.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## payrollDelete



### Example

```bash
 payrollDelete id=value
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
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## payrollElsterExport



### Example

```bash
 payrollElsterExport id=value
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
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## payrollEmail



### Example

```bash
 payrollEmail id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]

### Return type

[**AnyType**](AnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## payrollEntryPdf



### Example

```bash
 payrollEntryPdf id=value entry_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]
 **entryId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/pdf

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## payrollGet



### Example

```bash
 payrollGet id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]

### Return type

[**PayrollRunApi**](PayrollRunApi.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## payrollList



### Example

```bash
 payrollList  year=value  status=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer** |  | [optional] [default to null]
 **status** | **string** |  | [optional] [default to null]

### Return type

[**array[PayrollRunApi]**](PayrollRunApi.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## payrollPay



### Example

```bash
 payrollPay id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]
 **payrollPayPayload** | [**PayrollPayPayload**](PayrollPayPayload.md) |  |

### Return type

[**PayrollRunApi**](PayrollRunApi.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## payrollPdf



### Example

```bash
 payrollPdf id=value
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
- **Accept**: application/pdf

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## payrollSummary



### Example

```bash
 payrollSummary year=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer** |  | [default to null]

### Return type

[**YearlyPayrollSummary**](YearlyPayrollSummary.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## payrollSvMeldungen



### Example

```bash
 payrollSvMeldungen id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]

### Return type

[**AnyType**](AnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

