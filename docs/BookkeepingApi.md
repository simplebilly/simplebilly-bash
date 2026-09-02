# BookkeepingApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**allocatePaymentApi**](BookkeepingApi.md#allocatePaymentApi) | **POST** /api/v1/payments/allocate | Allocate a payment to an invoice
[**bwaReportApi**](BookkeepingApi.md#bwaReportApi) | **GET** /api/v1/bookkeeping/bwa | Get BWA (Betriebswirtschaftliche Auswertung) report
[**elsterStatusApi**](BookkeepingApi.md#elsterStatusApi) | **GET** /api/v1/bookkeeping/elster/status | 
[**elsterValidateApi**](BookkeepingApi.md#elsterValidateApi) | **POST** /api/v1/bookkeeping/ustva/elster-validate | 
[**elsterXmlApi**](BookkeepingApi.md#elsterXmlApi) | **GET** /api/v1/bookkeeping/ustva/elster-xml | 
[**getCashflow**](BookkeepingApi.md#getCashflow) | **GET** /api/v1/bookkeeping/cashflow | GET /api/v1/bookkeeping/cashflow
Returns operating, investing, and financing cashflow for the given period.
[**getLiquidity**](BookkeepingApi.md#getLiquidity) | **GET** /api/v1/bookkeeping/liquidity | GET /api/v1/bookkeeping/liquidity
Returns current liquidity position with ratios.
[**getOpenInvoicesApi**](BookkeepingApi.md#getOpenInvoicesApi) | **GET** /api/v1/payments/open-invoices/{customer_id} | Get open invoices for a customer
[**getVerfahrensdokumentation**](BookkeepingApi.md#getVerfahrensdokumentation) | **GET** /api/v1/bookkeeping/verfahrensdokumentation | GET /api/v1/bookkeeping/verfahrensdokumentation
Returns the complete compliance catalog of all documented modules.
[**runDunningApi**](BookkeepingApi.md#runDunningApi) | **POST** /api/v1/bookkeeping/dunning | 



## allocatePaymentApi

Allocate a payment to an invoice

### Example

```bash
 allocatePaymentApi
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **allocatePaymentRequest** | [**AllocatePaymentRequest**](AllocatePaymentRequest.md) |  |

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## bwaReportApi

Get BWA (Betriebswirtschaftliche Auswertung) report

### Example

```bash
 bwaReportApi  year=value  month=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer** |  | [optional] [default to null]
 **month** | **integer** |  | [optional] [default to null]

### Return type

[**BWAReport**](BWAReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## elsterStatusApi



### Example

```bash
 elsterStatusApi
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ElsterStatus**](ElsterStatus.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## elsterValidateApi



### Example

```bash
 elsterValidateApi  zeitraum=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zeitraum** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## elsterXmlApi



### Example

```bash
 elsterXmlApi  zeitraum=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zeitraum** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCashflow

GET /api/v1/bookkeeping/cashflow
Returns operating, investing, and financing cashflow for the given period.

### Example

```bash
 getCashflow  year=value  month=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer** |  | [optional] [default to null]
 **month** | **integer** |  | [optional] [default to null]

### Return type

[**CashflowReport**](CashflowReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getLiquidity

GET /api/v1/bookkeeping/liquidity
Returns current liquidity position with ratios.

### Example

```bash
 getLiquidity
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**LiquidityPosition**](LiquidityPosition.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getOpenInvoicesApi

Get open invoices for a customer

### Example

```bash
 getOpenInvoicesApi customer_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **string** |  | [default to null]

### Return type

[**array[Invoice]**](Invoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getVerfahrensdokumentation

GET /api/v1/bookkeeping/verfahrensdokumentation
Returns the complete compliance catalog of all documented modules.

### Example

```bash
 getVerfahrensdokumentation
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Verfahrensdokumentation**](Verfahrensdokumentation.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## runDunningApi



### Example

```bash
 runDunningApi
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**DunningResult**](DunningResult.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

