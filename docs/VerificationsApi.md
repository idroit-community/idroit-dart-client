# swagger.api.VerificationsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**verificationsControllerCreate**](VerificationsApi.md#verificationsControllerCreate) | **POST** /api/v1/verifications | VC/VP検証
[**verificationsControllerFindAll**](VerificationsApi.md#verificationsControllerFindAll) | **GET** /api/v1/verifications | VC/VP検証結果一覧取得
[**verificationsControllerFindOne**](VerificationsApi.md#verificationsControllerFindOne) | **GET** /api/v1/verifications/{id} | VC/VP検証結果詳細取得

# **verificationsControllerCreate**
> VerificationResponseDto verificationsControllerCreate(body)

VC/VP検証

VC/VPの検証を実行します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new VerificationsApi();
var body = new VerificationDto(); // VerificationDto | 

try {
    var result = api_instance.verificationsControllerCreate(body);
    print(result);
} catch (e) {
    print("Exception when calling VerificationsApi->verificationsControllerCreate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**VerificationDto**](VerificationDto.md)|  | 

### Return type

[**VerificationResponseDto**](VerificationResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verificationsControllerFindAll**
> VerificationsResponseDto verificationsControllerFindAll(page, limit, label, result)

VC/VP検証結果一覧取得

アプリケーションが管理するVC/VP検証結果を一覧として値を返します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new VerificationsApi();
var page = 1.2; // double | (必須) ページネーションを表示する際のページ数に当たるクエリパラメーター。全件取得する際は1を指定。(デフォルト: 1)
var limit = 1.2; // double | (必須) ページネーションを表示する際のページ数あたりに表示する件数を指定するクエリパラメーター。全件取得する際は0を指定。(デフォルト: 10)
var label = label_example; // String | (任意) 例: \"verification-for-project1\"
var result = true; // bool | (任意) 例: true

try {
    var result = api_instance.verificationsControllerFindAll(page, limit, label, result);
    print(result);
} catch (e) {
    print("Exception when calling VerificationsApi->verificationsControllerFindAll: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **double**| (必須) ページネーションを表示する際のページ数に当たるクエリパラメーター。全件取得する際は1を指定。(デフォルト: 1) | [optional] 
 **limit** | **double**| (必須) ページネーションを表示する際のページ数あたりに表示する件数を指定するクエリパラメーター。全件取得する際は0を指定。(デフォルト: 10) | [optional] 
 **label** | **String**| (任意) 例: \&quot;verification-for-project1\&quot; | [optional] 
 **result** | **bool**| (任意) 例: true | [optional] 

### Return type

[**VerificationsResponseDto**](VerificationsResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verificationsControllerFindOne**
> VerificationResponseDto verificationsControllerFindOne(id)

VC/VP検証結果詳細取得

リクエストパラメータのidで指定された単一のVC/VP検証結果の詳細情報の値を返します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new VerificationsApi();
var id = id_example; // String | 

try {
    var result = api_instance.verificationsControllerFindOne(id);
    print(result);
} catch (e) {
    print("Exception when calling VerificationsApi->verificationsControllerFindOne: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**VerificationResponseDto**](VerificationResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

