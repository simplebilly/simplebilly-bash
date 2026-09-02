# WarehouseApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWarehouse**](WarehouseApi.md#createWarehouse) | **POST** /api/v1/warehouses | 
[**deleteWarehouse**](WarehouseApi.md#deleteWarehouse) | **DELETE** /api/v1/warehouses/{warehouse_id} | 
[**getWarehouse**](WarehouseApi.md#getWarehouse) | **GET** /api/v1/warehouses/{warehouse_id} | 
[**listWarehouses**](WarehouseApi.md#listWarehouses) | **GET** /api/v1/warehouses/ | 
[**updateWarehouse**](WarehouseApi.md#updateWarehouse) | **PUT** /api/v1/warehouses/{warehouse_id} | 



## createWarehouse



### Example

```bash
 createWarehouse
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warehouse** | [**Warehouse**](Warehouse.md) |  |

### Return type

[**Warehouse**](Warehouse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteWarehouse



### Example

```bash
 deleteWarehouse warehouse_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warehouseId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getWarehouse



### Example

```bash
 getWarehouse warehouse_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warehouseId** | **string** |  | [default to null]

### Return type

[**Warehouse**](Warehouse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listWarehouses



### Example

```bash
 listWarehouses  page=value  page_size=value  search=value  is_active=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **search** | **string** |  | [optional] [default to null]
 **isActive** | **boolean** |  | [optional] [default to null]

### Return type

[**array[Warehouse]**](Warehouse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateWarehouse



### Example

```bash
 updateWarehouse warehouse_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warehouseId** | **string** |  | [default to null]
 **body** | **AnyType** |  |

### Return type

[**Warehouse**](Warehouse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

