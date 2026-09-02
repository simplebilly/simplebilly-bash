# ReplenishmentApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**applyReplenishments**](ReplenishmentApi.md#applyReplenishments) | **POST** /api/v1/replenishments/apply | Create one draft stock transfer per (source → target) pair carrying all
suggested product lines for that pair.
[**getReplenishments**](ReplenishmentApi.md#getReplenishments) | **GET** /api/v1/replenishments | 



## applyReplenishments

Create one draft stock transfer per (source → target) pair carrying all
suggested product lines for that pair.

### Example

```bash
 applyReplenishments  targetWarehouseId=value  sourceWarehouseId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **targetWarehouseId** | **string** | Warehouse to be replenished. Defaults to the tenant's default warehouse. | [optional] [default to null]
 **sourceWarehouseId** | **string** | Restrict source warehouses to this id. | [optional] [default to null]

### Return type

[**AnyType**](AnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getReplenishments



### Example

```bash
 getReplenishments  targetWarehouseId=value  sourceWarehouseId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **targetWarehouseId** | **string** | Warehouse to be replenished. Defaults to the tenant's default warehouse. | [optional] [default to null]
 **sourceWarehouseId** | **string** | Restrict source warehouses to this id. | [optional] [default to null]

### Return type

[**ReplenishmentResponse**](ReplenishmentResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

