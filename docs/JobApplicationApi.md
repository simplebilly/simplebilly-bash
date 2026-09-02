# JobApplicationApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**applyPublic**](JobApplicationApi.md#applyPublic) | **POST** /api/v1/public/jobs/{posting_id}/apply | 
[**deleteJobApplication**](JobApplicationApi.md#deleteJobApplication) | **DELETE** /api/v1/job-applications/{application_id} | 
[**downloadCv**](JobApplicationApi.md#downloadCv) | **GET** /api/v1/job-applications/{application_id}/cv | 
[**getJobApplication**](JobApplicationApi.md#getJobApplication) | **GET** /api/v1/job-applications/{application_id} | 
[**inboundEmail**](JobApplicationApi.md#inboundEmail) | **POST** /api/v1/public/jobs/inbound-email | Inbound CV email, mailgun/sendgrid inbound-parse style: multipart form
with &#39;from&#39;, &#39;subject&#39;, &#39;body-plain&#39; and one or more &#39;attachment-N&#39; file
fields. The subject may reference a posting as &#39;[JOB-&lt;posting_id&gt;]&#39;;
without one the application lands in the general inbox.
[**listJobApplications**](JobApplicationApi.md#listJobApplications) | **GET** /api/v1/job-applications | 
[**listPublicPostings**](JobApplicationApi.md#listPublicPostings) | **GET** /api/v1/public/jobs | 
[**scoreJobApplication**](JobApplicationApi.md#scoreJobApplication) | **POST** /api/v1/job-applications/{application_id}/score | 
[**updateJobApplicationStatus**](JobApplicationApi.md#updateJobApplicationStatus) | **PATCH** /api/v1/job-applications/{application_id}/status | 



## applyPublic



### Example

```bash
 applyPublic posting_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postingId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteJobApplication



### Example

```bash
 deleteJobApplication application_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **applicationId** | **string** |  | [default to null]

### Return type

[**JobApplication**](JobApplication.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## downloadCv



### Example

```bash
 downloadCv application_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **applicationId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getJobApplication



### Example

```bash
 getJobApplication application_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **applicationId** | **string** |  | [default to null]

### Return type

[**JobApplication**](JobApplication.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## inboundEmail

Inbound CV email, mailgun/sendgrid inbound-parse style: multipart form
with 'from', 'subject', 'body-plain' and one or more 'attachment-N' file
fields. The subject may reference a posting as '[JOB-<posting_id>]';
without one the application lands in the general inbox.

### Example

```bash
 inboundEmail
```

### Parameters

This endpoint does not need any parameter.

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listJobApplications



### Example

```bash
 listJobApplications  postingId=value  status=value  page=value  pageSize=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postingId** | **string** |  | [optional] [default to null]
 **status** | **string** |  | [optional] [default to null]
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]

### Return type

[**array[JobApplication]**](JobApplication.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listPublicPostings



### Example

```bash
 listPublicPostings
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[PublicPosting]**](PublicPosting.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## scoreJobApplication



### Example

```bash
 scoreJobApplication application_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **applicationId** | **string** |  | [default to null]

### Return type

[**JobApplication**](JobApplication.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateJobApplicationStatus



### Example

```bash
 updateJobApplicationStatus application_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **applicationId** | **string** |  | [default to null]
 **applicationStatusDto** | [**ApplicationStatusDto**](ApplicationStatusDto.md) |  |

### Return type

[**JobApplication**](JobApplication.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

