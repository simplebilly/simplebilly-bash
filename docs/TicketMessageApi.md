# TicketMessageApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**listMessagesApi**](TicketMessageApi.md#listMessagesApi) | **GET** /api/v1/support/tickets/{ticket_id}/messages | 
[**sendMessageApi**](TicketMessageApi.md#sendMessageApi) | **POST** /api/v1/support/tickets/{ticket_id}/messages | 



## listMessagesApi



### Example

```bash
 listMessagesApi ticket_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticketId** | **string** |  | [default to null]

### Return type

[**array[TicketMessage]**](TicketMessage.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## sendMessageApi



### Example

```bash
 sendMessageApi ticket_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticketId** | **string** |  | [default to null]
 **sendMessageDto** | [**SendMessageDto**](SendMessageDto.md) |  |

### Return type

[**TicketMessage**](TicketMessage.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

