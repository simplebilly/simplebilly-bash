# PosApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**posBilling**](PosApi.md#posBilling) | **GET** /api/pos/billing | 
[**posCreateOrder**](PosApi.md#posCreateOrder) | **POST** /api/pos/orders | 
[**posCreateRegister**](PosApi.md#posCreateRegister) | **POST** /api/pos/registers | 
[**posCreateTable**](PosApi.md#posCreateTable) | **POST** /api/pos/tables | 
[**posDisableRegister**](PosApi.md#posDisableRegister) | **POST** /api/pos/registers/{id}/disable | 
[**posFreeTable**](PosApi.md#posFreeTable) | **POST** /api/pos/tables/{id}/free | 
[**posKasseClosing**](PosApi.md#posKasseClosing) | **POST** /api/pos/kasse/closing | 
[**posKasseEntries**](PosApi.md#posKasseEntries) | **GET** /api/pos/kasse/entries | 
[**posKasseExport**](PosApi.md#posKasseExport) | **GET** /api/pos/kasse/export | 
[**posKassePayInOut**](PosApi.md#posKassePayInOut) | **POST** /api/pos/kasse/pay-in-out | 
[**posListOrders**](PosApi.md#posListOrders) | **GET** /api/pos/orders | 
[**posListProducts**](PosApi.md#posListProducts) | **GET** /api/pos/products | 
[**posListRegisters**](PosApi.md#posListRegisters) | **GET** /api/pos/registers | 
[**posListTables**](PosApi.md#posListTables) | **GET** /api/pos/tables | 
[**posOrderPrint**](PosApi.md#posOrderPrint) | **GET** /api/pos/orders/{order_number}/print | 
[**posOrderReceipt**](PosApi.md#posOrderReceipt) | **GET** /api/pos/orders/{order_number}/receipt | 
[**posPayOrder**](PosApi.md#posPayOrder) | **POST** /api/pos/orders/{order_number}/pay | 
[**posSumupCheckout**](PosApi.md#posSumupCheckout) | **POST** /api/pos/sumup/checkout | 



## posBilling



### Example

```bash
 posBilling
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AnyType**](AnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## posCreateOrder



### Example

```bash
 posCreateOrder
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **AnyType** |  |

### Return type

[**AnyType**](AnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## posCreateRegister



### Example

```bash
 posCreateRegister
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **posRegisterCreate** | [**PosRegisterCreate**](PosRegisterCreate.md) |  |

### Return type

[**PosRegister**](PosRegister.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## posCreateTable



### Example

```bash
 posCreateTable
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **posTableCreate** | [**PosTableCreate**](PosTableCreate.md) |  |

### Return type

[**PosTable**](PosTable.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## posDisableRegister



### Example

```bash
 posDisableRegister id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]

### Return type

[**PosRegister**](PosRegister.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## posFreeTable



### Example

```bash
 posFreeTable id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]

### Return type

[**PosTable**](PosTable.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## posKasseClosing



### Example

```bash
 posKasseClosing
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **AnyType** |  |

### Return type

[**AnyType**](AnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## posKasseEntries



### Example

```bash
 posKasseEntries
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AnyType**](AnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## posKasseExport



### Example

```bash
 posKasseExport
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AnyType**](AnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## posKassePayInOut



### Example

```bash
 posKassePayInOut
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **AnyType** |  |

### Return type

[**AnyType**](AnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## posListOrders



### Example

```bash
 posListOrders  status=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **string** | Filter by order status | [optional] [default to null]

### Return type

[**AnyType**](AnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## posListProducts



### Example

```bash
 posListProducts  q=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **string** | Product search | [optional] [default to null]

### Return type

[**AnyType**](AnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## posListRegisters



### Example

```bash
 posListRegisters
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[PosRegister]**](PosRegister.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## posListTables



### Example

```bash
 posListTables
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[PosTable]**](PosTable.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## posOrderPrint



### Example

```bash
 posOrderPrint order_number=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderNumber** | **string** |  | [default to null]

### Return type

[**AnyType**](AnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## posOrderReceipt



### Example

```bash
 posOrderReceipt order_number=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderNumber** | **string** |  | [default to null]

### Return type

[**AnyType**](AnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## posPayOrder



### Example

```bash
 posPayOrder order_number=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderNumber** | **string** |  | [default to null]
 **body** | **AnyType** |  |

### Return type

[**AnyType**](AnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## posSumupCheckout



### Example

```bash
 posSumupCheckout
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **AnyType** |  |

### Return type

[**AnyType**](AnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

