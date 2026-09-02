# RfqApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**convertRfq**](RfqApi.md#convertRfq) | **POST** /api/v1/rfqs/{rfq_id}/convert | Convert an RFQ into a draft purchase order using the quoted unit prices
(falling back to the requested prices, then leaving them blank). Marks the
RFQ as &#39;converted&#39;.
[**createRfq**](RfqApi.md#createRfq) | **POST** /api/v1/rfqs | 
[**deleteRfq**](RfqApi.md#deleteRfq) | **DELETE** /api/v1/rfqs/{rfq_id} | 
[**getRfq**](RfqApi.md#getRfq) | **GET** /api/v1/rfqs/{rfq_id} | 
[**listRfqs**](RfqApi.md#listRfqs) | **GET** /api/v1/rfqs/ | 
[**updateRfq**](RfqApi.md#updateRfq) | **PUT** /api/v1/rfqs/{rfq_id} | 
[**updateRfqStatus**](RfqApi.md#updateRfqStatus) | **PUT** /api/v1/rfqs/{rfq_id}/status | 



## convertRfq

Convert an RFQ into a draft purchase order using the quoted unit prices
(falling back to the requested prices, then leaving them blank). Marks the
RFQ as 'converted'.

### Example

```bash
 convertRfq rfq_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rfqId** | **string** |  | [default to null]

### Return type

[**AnyType**](AnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createRfq



### Example

```bash
 createRfq
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rfq** | [**Rfq**](Rfq.md) |  |

### Return type

[**Rfq**](Rfq.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteRfq



### Example

```bash
 deleteRfq rfq_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rfqId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getRfq



### Example

```bash
 getRfq rfq_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rfqId** | **string** |  | [default to null]

### Return type

[**Rfq**](Rfq.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listRfqs



### Example

```bash
 listRfqs  page=value  page_size=value  status=value  supplier_name=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **status** | **string** |  | [optional] [default to null]
 **supplierName** | **string** |  | [optional] [default to null]

### Return type

[**array[Rfq]**](Rfq.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateRfq



### Example

```bash
 updateRfq rfq_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rfqId** | **string** |  | [default to null]
 **body** | **AnyType** |  |

### Return type

[**Rfq**](Rfq.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateRfqStatus



### Example

```bash
 updateRfqStatus rfq_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rfqId** | **string** |  | [default to null]
 **rfqStatusUpdate** | [**RfqStatusUpdate**](RfqStatusUpdate.md) |  |

### Return type

[**Rfq**](Rfq.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

