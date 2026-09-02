# CustomerGroupApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**addGroupMembers**](CustomerGroupApi.md#addGroupMembers) | **POST** /api/v1/customer-groups/{customer_group_id}/members | 
[**createCustomerGroup**](CustomerGroupApi.md#createCustomerGroup) | **POST** /api/v1/customer-groups | 
[**deleteCustomerGroup**](CustomerGroupApi.md#deleteCustomerGroup) | **DELETE** /api/v1/customer-groups/{customer_group_id} | 
[**getCustomerGroup**](CustomerGroupApi.md#getCustomerGroup) | **GET** /api/v1/customer-groups/{customer_group_id} | 
[**listCustomerGroups**](CustomerGroupApi.md#listCustomerGroups) | **GET** /api/v1/customer-groups/ | 
[**updateCustomerGroup**](CustomerGroupApi.md#updateCustomerGroup) | **PUT** /api/v1/customer-groups/{customer_group_id} | 



## addGroupMembers



### Example

```bash
 addGroupMembers customer_group_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerGroupId** | **string** |  | [default to null]
 **body** | **AnyType** |  |

### Return type

[**CustomerGroup**](CustomerGroup.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createCustomerGroup



### Example

```bash
 createCustomerGroup
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerGroupCreate** | [**CustomerGroupCreate**](CustomerGroupCreate.md) |  |

### Return type

[**CustomerGroup**](CustomerGroup.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteCustomerGroup



### Example

```bash
 deleteCustomerGroup customer_group_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerGroupId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCustomerGroup



### Example

```bash
 getCustomerGroup customer_group_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerGroupId** | **string** |  | [default to null]

### Return type

[**CustomerGroup**](CustomerGroup.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listCustomerGroups



### Example

```bash
 listCustomerGroups  page=value  page_size=value  search=value  include_deleted=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **search** | **string** |  | [optional] [default to null]
 **includeDeleted** | **boolean** | Soft-delete entities: set true to include rows with 'deleted_at' set. | [optional] [default to null]

### Return type

[**array[CustomerGroup]**](CustomerGroup.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateCustomerGroup



### Example

```bash
 updateCustomerGroup customer_group_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerGroupId** | **string** |  | [default to null]
 **customerGroupUpdate** | [**CustomerGroupUpdate**](CustomerGroupUpdate.md) |  |

### Return type

[**CustomerGroup**](CustomerGroup.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

