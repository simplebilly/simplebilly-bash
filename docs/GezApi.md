# GezApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**gezApi**](GezApi.md#gezApi) | **GET** /api/v1/bookkeeping/gez | 



## gezApi



### Example

```bash
 gezApi  jahr=value  betriebsstaetten=value  kfz=value  hotelzimmer=value  beschaefigte=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jahr** | **integer** |  | [optional] [default to null]
 **betriebsstaetten** | **string** | Liste der Betriebsstätten als JSON, z.B. '[{\"name\":\"Filiale 1\",\"beschaefigte\":12}]'. | [optional] [default to null]
 **kfz** | **integer** | Gesamtzahl der betrieblich genutzten Kfz (falls keine Betriebsstätten angegeben sind). | [optional] [default to null]
 **hotelzimmer** | **integer** | Gesamtzahl der Hotel-/Gästezimmer und Ferienwohnungen. | [optional] [default to null]
 **beschaefigte** | **integer** | Gesamtzahl der Beschäftigten (verwendet nur, wenn 'betriebsstaetten' fehlt;
dann wird eine einzelne Betriebsstätte angenommen). | [optional] [default to null]

### Return type

[**GezReport**](GezReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

