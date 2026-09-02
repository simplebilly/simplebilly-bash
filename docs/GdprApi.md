# GdprApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**acceptDpa**](GdprApi.md#acceptDpa) | **PUT** /api/v1/gdpr/dpa | Record DPA acceptance: sets dpa_accepted_at/by/version on the tenant
settings row (created with company-type defaults if missing).
[**accountErasure**](GdprApi.md#accountErasure) | **POST** /api/v1/gdpr/account-erasure | Erase ALL personal data of the tenant (TOS §11: deletion 90 days after
termination).
[**erasureContact**](GdprApi.md#erasureContact) | **POST** /api/v1/gdpr/erasure/{contact_id} | Anonymize + soft-delete a contact: personal attributes are cleared, the
record itself is kept for GoBD retention (Art. 17(3)(e) DSGVO). The audit
trigger on &#39;contacts&#39; already records who/when.
[**exportContactData**](GdprApi.md#exportContactData) | **GET** /api/v1/gdpr/export/{contact_id} | Art. 15 data-subject access export for a contact.
[**exportGdpr**](GdprApi.md#exportGdpr) | **GET** /api/v1/gdpr/export | Export the current user&#39;s personal data (GDPR Art. 15/20).
[**getDpa**](GdprApi.md#getDpa) | **GET** /api/v1/gdpr/dpa | Current DPA acceptance status (from tenant_settings).



## acceptDpa

Record DPA acceptance: sets dpa_accepted_at/by/version on the tenant
settings row (created with company-type defaults if missing).

### Example

```bash
 acceptDpa
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dpaAcceptRequest** | [**DpaAcceptRequest**](DpaAcceptRequest.md) |  |

### Return type

[**DpaStatus**](DpaStatus.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## accountErasure

Erase ALL personal data of the tenant (TOS §11: deletion 90 days after
termination).

Anonymizes every contact, anonymizes personal fields on bookkeeping
records (orders/invoices/payments keep amounts and dates for GoBD),
removes the tenant linkage of the (global, saasy-framework) users and
marks the erasure on 'tenant_settings.gdpr_erased_at'. No row is
physically deleted. The audit triggers on the touched tables record
who/when.

### Example

```bash
 accountErasure
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


## erasureContact

Anonymize + soft-delete a contact: personal attributes are cleared, the
record itself is kept for GoBD retention (Art. 17(3)(e) DSGVO). The audit
trigger on 'contacts' already records who/when.

### Example

```bash
 erasureContact contact_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contactId** | **string** |  | [default to null]

### Return type

[**AnyType**](AnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## exportContactData

Art. 15 data-subject access export for a contact.

Returns the contact itself plus the tenant-scoped rows linked to it.

## Relations
The 'customers'/'orders'/'invoices'/'payments' tables have no FK to
'contacts'; they are linked through the 'customer_id' column, which per
the app's conventions holds one of:
- the admin customer's 'customer_id' (a UUID, often the same value as
  the contact's 'contact_id'/'customer_number'),
- the buyer's email for shop orders, or
- the marketplace's external customer id for plugin orders.

The export therefore matches the contact's identifiers ('contact_id',
'customer_number', 'external_id', 'email') plus any resolved customer ids
against 'customer_id'. 'delivery_notes' and 'customer_communications'
reference contacts directly via 'contact_id'. Soft-deleted rows are
included (their data is still processed and retained for GoBD).
Relations that genuinely do not exist for a contact stay empty but the
key is always present.

### Example

```bash
 exportContactData contact_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contactId** | **string** |  | [default to null]

### Return type

[**AnyType**](AnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## exportGdpr

Export the current user's personal data (GDPR Art. 15/20).

No admin permission required: a user always exports their own data.

### Example

```bash
 exportGdpr
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ApiResponseGdprExport**](ApiResponseGdprExport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getDpa

Current DPA acceptance status (from tenant_settings).

### Example

```bash
 getDpa
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**DpaStatus**](DpaStatus.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

