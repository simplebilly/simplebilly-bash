# LegalDocumentApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**getLegalDocuments**](LegalDocumentApi.md#getLegalDocuments) | **GET** /api/v1/legal/documents | List all legal documents of the tenant. Missing documents are seeded from
the default texts (with tenant placeholders replaced) on first access.
[**resetLegalDocuments**](LegalDocumentApi.md#resetLegalDocuments) | **POST** /api/v1/legal/documents/reset | Restore default texts for all documents (or a single doc_type/lang when
the optional filter is given). Returns the full tenant list.
[**upsertLegalDocuments**](LegalDocumentApi.md#upsertLegalDocuments) | **PUT** /api/v1/legal/documents | Upsert legal documents per (doc_type, lang). Returns the full tenant list.



## getLegalDocuments

List all legal documents of the tenant. Missing documents are seeded from
the default texts (with tenant placeholders replaced) on first access.

### Example

```bash
 getLegalDocuments
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[LegalDocument]**](LegalDocument.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## resetLegalDocuments

Restore default texts for all documents (or a single doc_type/lang when
the optional filter is given). Returns the full tenant list.

### Example

```bash
 resetLegalDocuments
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **legalDocumentReset** | [**LegalDocumentReset**](LegalDocumentReset.md) |  |

### Return type

[**array[LegalDocument]**](LegalDocument.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## upsertLegalDocuments

Upsert legal documents per (doc_type, lang). Returns the full tenant list.

### Example

```bash
 upsertLegalDocuments
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **legalDocumentUpsert** | [**array[LegalDocumentUpsert]**](LegalDocumentUpsert.md) |  |

### Return type

[**array[LegalDocument]**](LegalDocument.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

