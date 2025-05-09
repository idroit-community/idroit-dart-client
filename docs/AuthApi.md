# swagger.api.AuthApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authControllerGetProfile**](AuthApi.md#authControllerGetProfile) | **GET** /api/v1/auth/profile | ログイン済みのアカウント情報取得
[**authControllerLogin**](AuthApi.md#authControllerLogin) | **POST** /api/v1/auth/login | アカウントログインを実施

# **authControllerGetProfile**
> GetProfileResponseDto authControllerGetProfile()

ログイン済みのアカウント情報取得

ログイン済みの管理者アカウントの情報を返却します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AuthApi();

try {
    var result = api_instance.authControllerGetProfile();
    print(result);
} catch (e) {
    print("Exception when calling AuthApi->authControllerGetProfile: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetProfileResponseDto**](GetProfileResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authControllerLogin**
> SignInResponseDto authControllerLogin(body)

アカウントログインを実施

アカウントログインを実行し、認証結果に応じてJSON Web Tokenの値を返します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AuthApi();
var body = new SignInDto(); // SignInDto | 

try {
    var result = api_instance.authControllerLogin(body);
    print(result);
} catch (e) {
    print("Exception when calling AuthApi->authControllerLogin: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SignInDto**](SignInDto.md)|  | 

### Return type

[**SignInResponseDto**](SignInResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

