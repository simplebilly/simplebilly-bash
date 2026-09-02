# GenerateXrechnungApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**generateXrechnungApi**](GenerateXrechnungApi.md#generateXrechnungApi) | **GET** /api/v1/invoices/{id}/xrechnung | 



## generateXrechnungApi



### Example

```bash
 generateXrechnungApi id=value  supplier_name=value  supplier_street=value  supplier_city=value  supplier_zip=value  supplier_country=value  supplier_vat_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]
 **supplierName** | **string** |  | [optional] [default to null]
 **supplierStreet** | **string** |  | [optional] [default to null]
 **supplierCity** | **string** |  | [optional] [default to null]
 **supplierZip** | **string** |  | [optional] [default to null]
 **supplierCountry** | **string** |  | [optional] [default to null]
 **supplierVatId** | **string** |  | [optional] [default to null]

### Return type

[**XRechnungResponse**](XRechnungResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

