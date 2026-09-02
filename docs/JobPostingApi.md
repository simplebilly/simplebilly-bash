# JobPostingApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createJobPosting**](JobPostingApi.md#createJobPosting) | **POST** /api/v1/job-postings | 
[**deleteJobPosting**](JobPostingApi.md#deleteJobPosting) | **DELETE** /api/v1/job-postings/{id} | 
[**getJobPosting**](JobPostingApi.md#getJobPosting) | **GET** /api/v1/job-postings/{id} | 
[**listJobPostings**](JobPostingApi.md#listJobPostings) | **GET** /api/v1/job-postings | 
[**updateJobPosting**](JobPostingApi.md#updateJobPosting) | **PUT** /api/v1/job-postings/{id} | 



## createJobPosting



### Example

```bash
 createJobPosting
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobPostingCreate** | [**JobPostingCreate**](JobPostingCreate.md) |  |

### Return type

[**JobPosting**](JobPosting.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteJobPosting



### Example

```bash
 deleteJobPosting id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getJobPosting



### Example

```bash
 getJobPosting id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]

### Return type

[**JobPosting**](JobPosting.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listJobPostings



### Example

```bash
 listJobPostings  status=value  page=value  pageSize=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **string** |  | [optional] [default to null]
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]

### Return type

[**array[JobPosting]**](JobPosting.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateJobPosting



### Example

```bash
 updateJobPosting id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]
 **jobPostingUpdate** | [**JobPostingUpdate**](JobPostingUpdate.md) |  |

### Return type

[**JobPosting**](JobPosting.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

