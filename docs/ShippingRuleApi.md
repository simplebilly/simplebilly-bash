# ShippingRuleApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createShippingRule**](ShippingRuleApi.md#createShippingRule) | **POST** /api/v1/shipping-rules | 
[**deleteShippingRule**](ShippingRuleApi.md#deleteShippingRule) | **DELETE** /api/v1/shipping-rules/{rule_id} | 
[**getShippingRule**](ShippingRuleApi.md#getShippingRule) | **GET** /api/v1/shipping-rules/{rule_id} | 
[**listShippingRules**](ShippingRuleApi.md#listShippingRules) | **GET** /api/v1/shipping-rules/ | 
[**updateShippingRule**](ShippingRuleApi.md#updateShippingRule) | **PUT** /api/v1/shipping-rules/{rule_id} | 



## createShippingRule



### Example

```bash
 createShippingRule
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shippingRuleCreate** | [**ShippingRuleCreate**](ShippingRuleCreate.md) |  |

### Return type

[**ShippingRule**](ShippingRule.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteShippingRule



### Example

```bash
 deleteShippingRule rule_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ruleId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getShippingRule



### Example

```bash
 getShippingRule rule_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ruleId** | **string** |  | [default to null]

### Return type

[**ShippingRule**](ShippingRule.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listShippingRules



### Example

```bash
 listShippingRules  page=value  page_size=value  country=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **country** | **string** |  | [optional] [default to null]

### Return type

[**array[ShippingRule]**](ShippingRule.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateShippingRule



### Example

```bash
 updateShippingRule rule_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ruleId** | **string** |  | [default to null]
 **shippingRuleUpdate** | [**ShippingRuleUpdate**](ShippingRuleUpdate.md) |  |

### Return type

[**ShippingRule**](ShippingRule.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

