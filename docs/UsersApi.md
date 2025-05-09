# swagger.api.UsersApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**usersControllerCreate**](UsersApi.md#usersControllerCreate) | **POST** /api/v1/users | ユーザーアカウント作成
[**usersControllerExportKey**](UsersApi.md#usersControllerExportKey) | **POST** /api/v1/users/{id}/keys/{keyId}/mail | アカウントへの鍵のメール送信
[**usersControllerFindAll**](UsersApi.md#usersControllerFindAll) | **GET** /api/v1/users | ユーザーアカウント一覧取得
[**usersControllerFindOne**](UsersApi.md#usersControllerFindOne) | **GET** /api/v1/users/{id} | ユーザーアカウント詳細取得
[**usersControllerInvite**](UsersApi.md#usersControllerInvite) | **POST** /api/v1/users/{id}/invite | ユーザーアカウントへのアカウント有効化メール送信
[**usersControllerRegisterUserDid**](UsersApi.md#usersControllerRegisterUserDid) | **POST** /api/v1/users/{id}/dids | Get the count of clients
[**usersControllerRegistration**](UsersApi.md#usersControllerRegistration) | **POST** /api/v1/users/registration | ユーザーアカウントへのアカウント有効化、登録フロー
[**usersControllerRemove**](UsersApi.md#usersControllerRemove) | **DELETE** /api/v1/users/{id} | ユーザーアカウント停止
[**usersControllerSendDid**](UsersApi.md#usersControllerSendDid) | **POST** /api/v1/users/{id}/dids/{didInfoId}/mail | アカウントへのDIDのメール送信
[**usersControllerSendKey**](UsersApi.md#usersControllerSendKey) | **POST** /api/v1/users/{id}/keys/{didInfoId}/mail | アカウントへのDIDのメール送信
[**usersControllerSendVc**](UsersApi.md#usersControllerSendVc) | **POST** /api/v1/users/{id}/vcs/{vcInfoId}/mail | アカウントへのVCのメール送信
[**usersControllerUpdate**](UsersApi.md#usersControllerUpdate) | **PUT** /api/v1/users/{id} | ユーザーアカウント更新

# **usersControllerCreate**
> UserResponseDto usersControllerCreate(body)

ユーザーアカウント作成

新規ユーザーアカウントを作成します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var body = new CreateUserDto(); // CreateUserDto | 

try {
    var result = api_instance.usersControllerCreate(body);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->usersControllerCreate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateUserDto**](CreateUserDto.md)|  | 

### Return type

[**UserResponseDto**](UserResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersControllerExportKey**
> usersControllerExportKey(id, keyId)

アカウントへの鍵のメール送信

クライアントアカウントに紐付いたDIDの鍵情報をメールで送信し、共有します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var id = id_example; // String | 
var keyId = keyId_example; // String | 

try {
    api_instance.usersControllerExportKey(id, keyId);
} catch (e) {
    print("Exception when calling UsersApi->usersControllerExportKey: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **keyId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersControllerFindAll**
> UsersResponseDto usersControllerFindAll(page, limit, name, email, status, role, needActivateFlow)

ユーザーアカウント一覧取得

ユーザーアカウントを一覧として値を返します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var page = 1.2; // double | (必須) ページネーションを表示する際のページ数に当たるクエリパラメーター。全件取得する際は1を指定。(デフォルト: 1)
var limit = 1.2; // double | (必須) ページネーションを表示する際のページ数あたりに表示する件数を指定するクエリパラメーター。全件取得する際は0を指定。(デフォルト: 10)
var name = name_example; // String | (任意) 例: \"Jhon Doe\"
var email = email_example; // String | (任意) 例: \"client1@email.com\"
var status = status_example; // String | (任意) 例: \"active\"
var role = role_example; // String | (任意) 例: \"client\"
var needActivateFlow = true; // bool | (任意) 例: true, false

try {
    var result = api_instance.usersControllerFindAll(page, limit, name, email, status, role, needActivateFlow);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->usersControllerFindAll: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **double**| (必須) ページネーションを表示する際のページ数に当たるクエリパラメーター。全件取得する際は1を指定。(デフォルト: 1) | [optional] 
 **limit** | **double**| (必須) ページネーションを表示する際のページ数あたりに表示する件数を指定するクエリパラメーター。全件取得する際は0を指定。(デフォルト: 10) | [optional] 
 **name** | **String**| (任意) 例: \&quot;Jhon Doe\&quot; | [optional] 
 **email** | **String**| (任意) 例: \&quot;client1@email.com\&quot; | [optional] 
 **status** | **String**| (任意) 例: \&quot;active\&quot; | [optional] 
 **role** | **String**| (任意) 例: \&quot;client\&quot; | [optional] 
 **needActivateFlow** | **bool**| (任意) 例: true, false | [optional] 

### Return type

[**UsersResponseDto**](UsersResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersControllerFindOne**
> UserResponseDto usersControllerFindOne(id)

ユーザーアカウント詳細取得

リクエストパラメータのidで指定された単一の管理者アカウントの詳細情報の値を返します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var id = id_example; // String | 

try {
    var result = api_instance.usersControllerFindOne(id);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->usersControllerFindOne: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**UserResponseDto**](UserResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersControllerInvite**
> usersControllerInvite(id)

ユーザーアカウントへのアカウント有効化メール送信

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var id = id_example; // String | 

try {
    api_instance.usersControllerInvite(id);
} catch (e) {
    print("Exception when calling UsersApi->usersControllerInvite: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersControllerRegisterUserDid**
> usersControllerRegisterUserDid(body, id)

Get the count of clients

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var body = new GenerateDidDto(); // GenerateDidDto | 
var id = id_example; // String | 

try {
    api_instance.usersControllerRegisterUserDid(body, id);
} catch (e) {
    print("Exception when calling UsersApi->usersControllerRegisterUserDid: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GenerateDidDto**](GenerateDidDto.md)|  | 
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersControllerRegistration**
> usersControllerRegistration(body, token)

ユーザーアカウントへのアカウント有効化、登録フロー

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var body = new RegistrationProcessDto(); // RegistrationProcessDto | 
var token = token_example; // String | 

try {
    api_instance.usersControllerRegistration(body, token);
} catch (e) {
    print("Exception when calling UsersApi->usersControllerRegistration: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RegistrationProcessDto**](RegistrationProcessDto.md)|  | 
 **token** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersControllerRemove**
> usersControllerRemove(id)

ユーザーアカウント停止

リクエストパラメータのidで指定された単一のユーザーアカウントを停止します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var id = id_example; // String | 

try {
    api_instance.usersControllerRemove(id);
} catch (e) {
    print("Exception when calling UsersApi->usersControllerRemove: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersControllerSendDid**
> usersControllerSendDid(id, didInfoId)

アカウントへのDIDのメール送信

アカウントに紐付いたDIDをメールで送信し、共有します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var id = id_example; // String | 
var didInfoId = didInfoId_example; // String | 

try {
    api_instance.usersControllerSendDid(id, didInfoId);
} catch (e) {
    print("Exception when calling UsersApi->usersControllerSendDid: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **didInfoId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersControllerSendKey**
> usersControllerSendKey(id, didInfoId)

アカウントへのDIDのメール送信

アカウントに紐付いたDIDをメールで送信し、共有します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var id = id_example; // String | 
var didInfoId = didInfoId_example; // String | 

try {
    api_instance.usersControllerSendKey(id, didInfoId);
} catch (e) {
    print("Exception when calling UsersApi->usersControllerSendKey: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **didInfoId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersControllerSendVc**
> usersControllerSendVc(id, vcInfoId)

アカウントへのVCのメール送信

アカウントに紐付いたVCをメールで送信し、共有します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var id = id_example; // String | 
var vcInfoId = vcInfoId_example; // String | 

try {
    api_instance.usersControllerSendVc(id, vcInfoId);
} catch (e) {
    print("Exception when calling UsersApi->usersControllerSendVc: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **vcInfoId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersControllerUpdate**
> UserResponseDto usersControllerUpdate(body, id)

ユーザーアカウント更新

リクエストパラメータのidで指定された単一のユーザーアカウント情報を更新します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var body = new CreateUserDto(); // CreateUserDto | 
var id = id_example; // String | 

try {
    var result = api_instance.usersControllerUpdate(body, id);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->usersControllerUpdate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateUserDto**](CreateUserDto.md)|  | 
 **id** | **String**|  | 

### Return type

[**UserResponseDto**](UserResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

