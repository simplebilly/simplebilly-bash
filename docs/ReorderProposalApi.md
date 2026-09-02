# ReorderProposalApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**applyReorderProposal**](ReorderProposalApi.md#applyReorderProposal) | **POST** /api/v1/reorder-proposals/apply | Convert a reorder proposal into a draft purchase order.
[**getReorderProposal**](ReorderProposalApi.md#getReorderProposal) | **GET** /api/v1/reorder-proposals | 



## applyReorderProposal

Convert a reorder proposal into a draft purchase order.

Returns the created purchase order id. Suggested line items are generated
with the current reorder quantity per product.

### Example

```bash
 applyReorderProposal  configuredOnly=value  warehouseId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **configuredOnly** | **boolean** | Only include products with a reorder point configured ('min_stock'). | [optional] [default to null]
 **warehouseId** | **string** | Limit to a single warehouse id. | [optional] [default to null]

### Return type

[**AnyType**](AnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getReorderProposal



### Example

```bash
 getReorderProposal  configuredOnly=value  warehouseId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **configuredOnly** | **boolean** | Only include products with a reorder point configured ('min_stock'). | [optional] [default to null]
 **warehouseId** | **string** | Limit to a single warehouse id. | [optional] [default to null]

### Return type

[**ReorderProposalResponse**](ReorderProposalResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

