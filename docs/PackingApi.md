# PackingApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**completePacking**](PackingApi.md#completePacking) | **POST** /api/v1/packing/{order_number}/complete | Mark packing as complete and transition order to shipped
[**getPackingQueue**](PackingApi.md#getPackingQueue) | **GET** /api/v1/packing/queue | Get the packing queue - orders ready for packing
[**printDeliveryNote**](PackingApi.md#printDeliveryNote) | **POST** /api/v1/packing/{order_number}/print-delivery-note | Print delivery note (Lieferschein) for an order
[**printLabel**](PackingApi.md#printLabel) | **POST** /api/v1/packing/{order_number}/print-label | Print shipping label for an order
[**recordPackingVideo**](PackingApi.md#recordPackingVideo) | **POST** /api/v1/packing/{order_number}/record-video | Record video of packing process



## completePacking

Mark packing as complete and transition order to shipped

### Example

```bash
 completePacking order_number=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderNumber** | **string** |  | [default to null]
 **packingCompleteRequest** | [**PackingCompleteRequest**](PackingCompleteRequest.md) |  |

### Return type

[**PackingCompleteResponse**](PackingCompleteResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getPackingQueue

Get the packing queue - orders ready for packing

### Example

```bash
 getPackingQueue  page=value  page_size=value  search=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **search** | **string** |  | [optional] [default to null]

### Return type

[**PackingQueue**](PackingQueue.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## printDeliveryNote

Print delivery note (Lieferschein) for an order

### Example

```bash
 printDeliveryNote order_number=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderNumber** | **string** |  | [default to null]

### Return type

[**PrintDeliveryNoteResponse**](PrintDeliveryNoteResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## printLabel

Print shipping label for an order

### Example

```bash
 printLabel order_number=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderNumber** | **string** |  | [default to null]

### Return type

[**PrintLabelResponse**](PrintLabelResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## recordPackingVideo

Record video of packing process

### Example

```bash
 recordPackingVideo order_number=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderNumber** | **string** |  | [default to null]
 **body** | **AnyType** |  |

### Return type

[**PackingVideoResponse**](PackingVideoResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

