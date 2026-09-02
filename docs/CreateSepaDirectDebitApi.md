# CreateSepaDirectDebitApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSepaDirectDebitApi**](CreateSepaDirectDebitApi.md#createSepaDirectDebitApi) | **POST** /api/v1/bookkeeping/sepa-direct-debit | 



## createSepaDirectDebitApi



### Example

```bash
 createSepaDirectDebitApi  creditor_name=value  creditor_iban=value  creditor_id=value  mandate_id=value  mandate_date=value  debtor_name=value  debtor_iban=value  amount=value  collection_date=value  creditor_bic=value  debtor_bic=value  description=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **creditorName** | **string** |  | [default to null]
 **creditorIban** | **string** |  | [default to null]
 **creditorId** | **string** |  | [default to null]
 **mandateId** | **string** |  | [default to null]
 **mandateDate** | **string** |  | [default to null]
 **debtorName** | **string** |  | [default to null]
 **debtorIban** | **string** |  | [default to null]
 **amount** | **string** |  | [default to null]
 **collectionDate** | **string** |  | [default to null]
 **creditorBic** | **string** |  | [optional] [default to null]
 **debtorBic** | **string** |  | [optional] [default to null]
 **description** | **string** |  | [optional] [default to null]

### Return type

[**SepaDirectDebitResponse**](SepaDirectDebitResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

