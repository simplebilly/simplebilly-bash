# PublicReturnsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**getPublicReturnStatus**](PublicReturnsApi.md#getPublicReturnStatus) | **GET** /api/v1/public/returns/status | Customer checks the status of a return (public, no auth). The return is
only revealed when its linked order&#39;s email matches.
[**listPublicReturns**](PublicReturnsApi.md#listPublicReturns) | **GET** /api/v1/public/returns/list | List all returns for an order (public, no auth).
[**requestPublicReturn**](PublicReturnsApi.md#requestPublicReturn) | **POST** /api/v1/public/returns/request | Customer requests a return for an order (public, no auth).



## getPublicReturnStatus

Customer checks the status of a return (public, no auth). The return is
only revealed when its linked order's email matches.

### Example

```bash
 getPublicReturnStatus  email=value  returnNumber=value  returnOrderId=value  orderNumber=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **string** |  | [default to null]
 **returnNumber** | **string** | Either return_number or return_order_id must be provided. | [optional] [default to null]
 **returnOrderId** | **string** |  | [optional] [default to null]
 **orderNumber** | **string** |  | [optional] [default to null]

### Return type

[**PublicReturnStatusResponse**](PublicReturnStatusResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listPublicReturns

List all returns for an order (public, no auth).

### Example

```bash
 listPublicReturns  orderNumber=value  email=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderNumber** | **string** |  | [default to null]
 **email** | **string** |  | [default to null]

### Return type

[**array[PublicReturnStatusResponse]**](PublicReturnStatusResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## requestPublicReturn

Customer requests a return for an order (public, no auth).

### Example

```bash
 requestPublicReturn
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **publicReturnRequest** | [**PublicReturnRequest**](PublicReturnRequest.md) |  |

### Return type

[**PublicReturnResponse**](PublicReturnResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

