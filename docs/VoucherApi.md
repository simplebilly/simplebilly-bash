# VoucherApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createVoucher**](VoucherApi.md#createVoucher) | **POST** /api/v1/vouchers | 
[**deleteVoucher**](VoucherApi.md#deleteVoucher) | **DELETE** /api/v1/vouchers/{voucher_id} | 
[**getVoucher**](VoucherApi.md#getVoucher) | **GET** /api/v1/vouchers/{voucher_id} | 
[**listVouchers**](VoucherApi.md#listVouchers) | **GET** /api/v1/vouchers/ | 
[**updateVoucher**](VoucherApi.md#updateVoucher) | **PUT** /api/v1/vouchers/{voucher_id} | 
[**voucherRestore**](VoucherApi.md#voucherRestore) | **POST** /api/v1/vouchers/{voucher_id}/restore | 



## createVoucher



### Example

```bash
 createVoucher
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **voucherCreate** | [**VoucherCreate**](VoucherCreate.md) |  |

### Return type

[**Voucher**](Voucher.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteVoucher



### Example

```bash
 deleteVoucher voucher_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **voucherId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getVoucher



### Example

```bash
 getVoucher voucher_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **voucherId** | **string** |  | [default to null]

### Return type

[**Voucher**](Voucher.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listVouchers



### Example

```bash
 listVouchers  page=value  page_size=value  voucher_type=value  voucher_status=value  contact_name=value  date_from=value  date_to=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **voucherType** | **string** |  | [optional] [default to null]
 **voucherStatus** | **string** |  | [optional] [default to null]
 **contactName** | **string** |  | [optional] [default to null]
 **dateFrom** | **string** |  | [optional] [default to null]
 **dateTo** | **string** |  | [optional] [default to null]

### Return type

[**array[Voucher]**](Voucher.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateVoucher



### Example

```bash
 updateVoucher voucher_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **voucherId** | **string** |  | [default to null]
 **body** | **AnyType** |  |

### Return type

[**Voucher**](Voucher.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## voucherRestore



### Example

```bash
 voucherRestore voucher_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **voucherId** | **string** |  | [default to null]

### Return type

[**Voucher**](Voucher.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

