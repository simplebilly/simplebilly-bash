# CouponApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**couponRestore**](CouponApi.md#couponRestore) | **POST** /api/v1/coupons/{coupon_id}/restore | 
[**createCoupon**](CouponApi.md#createCoupon) | **POST** /api/v1/coupons | 
[**deleteCoupon**](CouponApi.md#deleteCoupon) | **DELETE** /api/v1/coupons/{coupon_id} | 
[**getCoupon**](CouponApi.md#getCoupon) | **GET** /api/v1/coupons/{coupon_id} | 
[**listCoupons**](CouponApi.md#listCoupons) | **GET** /api/v1/coupons/ | 
[**updateCoupon**](CouponApi.md#updateCoupon) | **PUT** /api/v1/coupons/{coupon_id} | 



## couponRestore



### Example

```bash
 couponRestore coupon_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **couponId** | **string** |  | [default to null]

### Return type

[**Coupon**](Coupon.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createCoupon



### Example

```bash
 createCoupon
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **couponCreate** | [**CouponCreate**](CouponCreate.md) |  |

### Return type

[**Coupon**](Coupon.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteCoupon



### Example

```bash
 deleteCoupon coupon_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **couponId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCoupon



### Example

```bash
 getCoupon coupon_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **couponId** | **string** |  | [default to null]

### Return type

[**Coupon**](Coupon.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listCoupons



### Example

```bash
 listCoupons  page=value  page_size=value  is_active=value  code=value  discount_type=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **isActive** | **boolean** |  | [optional] [default to null]
 **code** | **string** |  | [optional] [default to null]
 **discountType** | **string** |  | [optional] [default to null]

### Return type

[**array[Coupon]**](Coupon.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateCoupon



### Example

```bash
 updateCoupon coupon_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **couponId** | **string** |  | [default to null]
 **couponUpdate** | [**CouponUpdate**](CouponUpdate.md) |  |

### Return type

[**Coupon**](Coupon.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

