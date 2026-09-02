# BudgetsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**budgetsApi**](BudgetsApi.md#budgetsApi) | **GET** /api/v1/bookkeeping/budgets | 
[**upsertBudgetGoalApi**](BudgetsApi.md#upsertBudgetGoalApi) | **PUT** /api/v1/bookkeeping/budgets/goals/{category} | 



## budgetsApi



### Example

```bash
 budgetsApi  year=value  month=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **integer** |  | [default to null]
 **month** | **integer** |  | [default to null]

### Return type

[**BudgetErgebnis**](BudgetErgebnis.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## upsertBudgetGoalApi



### Example

```bash
 upsertBudgetGoalApi category=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category** | **string** |  | [default to null]
 **budgetGoalRequest** | [**BudgetGoalRequest**](BudgetGoalRequest.md) |  |

### Return type

[**Budget**](Budget.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

