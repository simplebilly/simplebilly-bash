# ContactApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**contactSchema**](ContactApi.md#contactSchema) | **GET** /api/v1/contacts/schema | Serve JSON Schema for client-side validation
[**contactTimeline**](ContactApi.md#contactTimeline) | **GET** /api/v1/contacts/{contact_id}/timeline | Get the full per-contact timeline (Xentral §4.6/4.7).
[**createContact**](ContactApi.md#createContact) | **POST** /api/v1/contacts | Create contact
[**deleteContact**](ContactApi.md#deleteContact) | **DELETE** /api/v1/contacts/{contact_id} | Soft-delete contact
[**getContact**](ContactApi.md#getContact) | **GET** /api/v1/contacts/{contact_id} | Get single contact
[**listContacts**](ContactApi.md#listContacts) | **GET** /api/v1/contacts | List contacts with search, type filter, and pagination
[**salesVolume**](ContactApi.md#salesVolume) | **GET** /api/v1/contacts/sales-volume | Sales volume per contact
[**updateContact**](ContactApi.md#updateContact) | **PUT** /api/v1/contacts/{contact_id} | Update contact



## contactSchema

Serve JSON Schema for client-side validation

### Example

```bash
 contactSchema
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


## contactTimeline

Get the full per-contact timeline (Xentral §4.6/4.7).

Aggregates communications, quotations, orders, invoices and uploaded
documents for a contact, merged into a single reverse-chronological feed.

### Example

```bash
 contactTimeline contact_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contactId** | **string** |  | [default to null]

### Return type

[**ContactTimelineResponse**](ContactTimelineResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createContact

Create contact

### Example

```bash
 createContact
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **AnyType** |  |

### Return type

[**Contact**](Contact.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteContact

Soft-delete contact

### Example

```bash
 deleteContact contact_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contactId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getContact

Get single contact

### Example

```bash
 getContact contact_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contactId** | **string** |  | [default to null]

### Return type

[**Contact**](Contact.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listContacts

List contacts with search, type filter, and pagination

### Example

```bash
 listContacts  page=value  page_size=value  search=value  contact_type=value  tag=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **search** | **string** |  | [optional] [default to null]
 **contactType** | **string** |  | [optional] [default to null]
 **tag** | **string** |  | [optional] [default to null]

### Return type

[**array[Contact]**](Contact.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## salesVolume

Sales volume per contact

### Example

```bash
 salesVolume  page=value  page_size=value  search=value  contact_type=value  tag=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **search** | **string** |  | [optional] [default to null]
 **contactType** | **string** |  | [optional] [default to null]
 **tag** | **string** |  | [optional] [default to null]

### Return type

[**SalesVolumeReport**](SalesVolumeReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateContact

Update contact

### Example

```bash
 updateContact contact_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contactId** | **string** |  | [default to null]
 **body** | **AnyType** |  |

### Return type

[**Contact**](Contact.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

