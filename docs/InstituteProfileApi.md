# InstituteProfileApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**getInstituteProfile**](InstituteProfileApi.md#getInstituteProfile) | **GET** /api/v1/institute-profile | Current institute profile (created with defaults when missing).
[**updateInstituteProfile**](InstituteProfileApi.md#updateInstituteProfile) | **PUT** /api/v1/institute-profile | Update the institute profile (institute_type and/or kapitalmarktorientiert).



## getInstituteProfile

Current institute profile (created with defaults when missing).

### Example

```bash
 getInstituteProfile
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**InstituteProfile**](InstituteProfile.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateInstituteProfile

Update the institute profile (institute_type and/or kapitalmarktorientiert).

### Example

```bash
 updateInstituteProfile
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instituteProfileUpdate** | [**InstituteProfileUpdate**](InstituteProfileUpdate.md) |  |

### Return type

[**InstituteProfile**](InstituteProfile.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

