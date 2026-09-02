# CustomerCommunicationApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCommunication**](CustomerCommunicationApi.md#createCommunication) | **POST** /api/v1/communications | 
[**customercommunicationRestore**](CustomerCommunicationApi.md#customercommunicationRestore) | **POST** /api/v1/communications/{communication_id}/restore | 
[**deleteCommunication**](CustomerCommunicationApi.md#deleteCommunication) | **DELETE** /api/v1/communications/{communication_id} | 
[**getCommunication**](CustomerCommunicationApi.md#getCommunication) | **GET** /api/v1/communications/{communication_id} | 
[**getContactHistory**](CustomerCommunicationApi.md#getContactHistory) | **GET** /api/v1/contacts/{contact_id}/communications | 
[**listCommunications**](CustomerCommunicationApi.md#listCommunications) | **GET** /api/v1/communications/ | 
[**updateCommunication**](CustomerCommunicationApi.md#updateCommunication) | **PUT** /api/v1/communications/{communication_id} | 



## createCommunication



### Example

```bash
 createCommunication
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerCommunicationCreate** | [**CustomerCommunicationCreate**](CustomerCommunicationCreate.md) |  |

### Return type

[**CustomerCommunication**](CustomerCommunication.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## customercommunicationRestore



### Example

```bash
 customercommunicationRestore communication_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **communicationId** | **string** |  | [default to null]

### Return type

[**CustomerCommunication**](CustomerCommunication.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteCommunication



### Example

```bash
 deleteCommunication communication_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **communicationId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCommunication



### Example

```bash
 getCommunication communication_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **communicationId** | **string** |  | [default to null]

### Return type

[**CustomerCommunication**](CustomerCommunication.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getContactHistory



### Example

```bash
 getContactHistory contact_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contactId** | **string** |  | [default to null]

### Return type

[**ContactHistoryResponse**](ContactHistoryResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listCommunications



### Example

```bash
 listCommunications  page=value  page_size=value  contact_id=value  channel=value  direction=value  from=value  to=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **contactId** | **string** | Filter history to a single contact. | [optional] [default to null]
 **channel** | [**CommunicationChannel**](.md) |  | [optional] [default to null]
 **direction** | [**CommunicationDirection**](.md) |  | [optional] [default to null]
 **from** | **string** | Only include communications after this ISO date (inclusive). | [optional] [default to null]
 **to** | **string** | Only include communications before this ISO date (inclusive). | [optional] [default to null]

### Return type

[**array[CustomerCommunication]**](CustomerCommunication.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateCommunication



### Example

```bash
 updateCommunication communication_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **communicationId** | **string** |  | [default to null]
 **customerCommunicationUpdate** | [**CustomerCommunicationUpdate**](CustomerCommunicationUpdate.md) |  |

### Return type

[**CustomerCommunication**](CustomerCommunication.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

