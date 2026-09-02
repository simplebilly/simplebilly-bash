# TimeEntriesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**clockInTimeEntry**](TimeEntriesApi.md#clockInTimeEntry) | **POST** /api/v1/time-entries | Clock in for the authenticated user (resolved via their employee profile).
[**clockOutTimeEntry**](TimeEntriesApi.md#clockOutTimeEntry) | **PATCH** /api/v1/time-entries/{id} | Clock out an entry: the entry&#39;s owner, or anyone with &#39;time_entries:write&#39;.
[**getLaborCosts**](TimeEntriesApi.md#getLaborCosts) | **GET** /api/v1/labor-costs | Labor-cost report: worked hours aggregated per employee / order / day,
valued at the employee&#39;s hourly cost rate.
[**listTimeEntries**](TimeEntriesApi.md#listTimeEntries) | **GET** /api/v1/time-entries | List time entries with optional date-range / active / employee filters.



## clockInTimeEntry

Clock in for the authenticated user (resolved via their employee profile).

### Example

```bash
 clockInTimeEntry
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timeEntryClockIn** | [**TimeEntryClockIn**](TimeEntryClockIn.md) |  |

### Return type

[**TimeEntryDto**](TimeEntryDto.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## clockOutTimeEntry

Clock out an entry: the entry's owner, or anyone with 'time_entries:write'.

### Example

```bash
 clockOutTimeEntry id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]
 **timeEntryClockOut** | [**TimeEntryClockOut**](TimeEntryClockOut.md) |  |

### Return type

[**TimeEntryDto**](TimeEntryDto.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getLaborCosts

Labor-cost report: worked hours aggregated per employee / order / day,
valued at the employee's hourly cost rate.

### Example

```bash
 getLaborCosts  from=value  to=value  group_by=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **string** |  | [default to null]
 **to** | **string** |  | [default to null]
 **groupBy** | **string** | One of \"employee\", \"order\" or \"day\". | [default to null]

### Return type

[**array[LaborCostRow]**](LaborCostRow.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listTimeEntries

List time entries with optional date-range / active / employee filters.

### Example

```bash
 listTimeEntries  from=value  to=value  active=value  employee_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **string** |  | [optional] [default to null]
 **to** | **string** |  | [optional] [default to null]
 **active** | **boolean** | Only currently running shifts (clock_in set, clock_out null). | [optional] [default to null]
 **employeeId** | **string** |  | [optional] [default to null]

### Return type

[**array[TimeEntryDto]**](TimeEntryDto.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

