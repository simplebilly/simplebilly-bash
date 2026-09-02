# SupportTicketApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTicketApi**](SupportTicketApi.md#createTicketApi) | **POST** /api/v1/support/tickets | 
[**deleteTicketApi**](SupportTicketApi.md#deleteTicketApi) | **DELETE** /api/v1/support/tickets/{ticket_id} | 
[**getTicketApi**](SupportTicketApi.md#getTicketApi) | **GET** /api/v1/support/tickets/{ticket_id} | 
[**listTicketsApi**](SupportTicketApi.md#listTicketsApi) | **GET** /api/v1/support/tickets | 
[**updateTicketApi**](SupportTicketApi.md#updateTicketApi) | **PUT** /api/v1/support/tickets/{ticket_id} | 



## createTicketApi



### Example

```bash
 createTicketApi
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createTicketRequest** | [**CreateTicketRequest**](CreateTicketRequest.md) |  |

### Return type

[**SupportTicket**](SupportTicket.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteTicketApi



### Example

```bash
 deleteTicketApi ticket_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticketId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTicketApi



### Example

```bash
 getTicketApi ticket_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticketId** | **string** |  | [default to null]

### Return type

[**SupportTicket**](SupportTicket.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listTicketsApi



### Example

```bash
 listTicketsApi  status=value  priority=value  assigned_to=value  channel_type=value  customer_id=value  search=value  page=value  page_size=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **string** |  | [optional] [default to null]
 **priority** | **string** |  | [optional] [default to null]
 **assignedTo** | **string** |  | [optional] [default to null]
 **channelType** | **string** |  | [optional] [default to null]
 **customerId** | **string** |  | [optional] [default to null]
 **search** | **string** |  | [optional] [default to null]
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]

### Return type

[**array[SupportTicket]**](SupportTicket.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateTicketApi



### Example

```bash
 updateTicketApi ticket_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticketId** | **string** |  | [default to null]
 **supportTicketUpdate** | [**SupportTicketUpdate**](SupportTicketUpdate.md) |  |

### Return type

[**SupportTicket**](SupportTicket.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

