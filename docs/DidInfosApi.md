# swagger.api.DidInfosApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**didInfosControllerAddLabel**](DidInfosApi.md#didInfosControllerAddLabel) | **PUT** /api/v1/did-infos/{id} | DID情報へのラベル追加
[**didInfosControllerConnectUser**](DidInfosApi.md#didInfosControllerConnectUser) | **PUT** /api/v1/did-infos/{id}/user/{user_id} | DID情報へのクライアントアカウント紐付け
[**didInfosControllerCreate**](DidInfosApi.md#didInfosControllerCreate) | **POST** /api/v1/did-infos | 新規DID生成
[**didInfosControllerDisconnectUser**](DidInfosApi.md#didInfosControllerDisconnectUser) | **DELETE** /api/v1/did-infos/{id}/user | DID情報のクライアントアカウント紐付け解除
[**didInfosControllerFindAll**](DidInfosApi.md#didInfosControllerFindAll) | **GET** /api/v1/did-infos | DID情報一覧取得
[**didInfosControllerFindOne**](DidInfosApi.md#didInfosControllerFindOne) | **GET** /api/v1/did-infos/{id} | DID情報詳細取得
[**didInfosControllerRegister**](DidInfosApi.md#didInfosControllerRegister) | **POST** /api/v1/did-infos/register | 既存DID登録
[**didInfosControllerRemove**](DidInfosApi.md#didInfosControllerRemove) | **DELETE** /api/v1/did-infos/{id} | DID情報削除
[**didInfosControllerResolve**](DidInfosApi.md#didInfosControllerResolve) | **POST** /api/v1/did-infos/resolver | DID解決

# **didInfosControllerAddLabel**
> DidInfoResponseDto didInfosControllerAddLabel(body, id)

DID情報へのラベル追加

リクエストパラメータのidで指定された単一のDID情報に対して、任意の管理用ラベルを追加します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new DidInfosApi();
var body = new AddLabelToDidInfoDto(); // AddLabelToDidInfoDto | 
var id = id_example; // String | 

try {
    var result = api_instance.didInfosControllerAddLabel(body, id);
    print(result);
} catch (e) {
    print("Exception when calling DidInfosApi->didInfosControllerAddLabel: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AddLabelToDidInfoDto**](AddLabelToDidInfoDto.md)|  | 
 **id** | **String**|  | 

### Return type

[**DidInfoResponseDto**](DidInfoResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **didInfosControllerConnectUser**
> DidInfoResponseDto didInfosControllerConnectUser(id, userId)

DID情報へのクライアントアカウント紐付け

DID情報の所有者、関係者などの管理者としてクライアントアカウントを紐付けます。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new DidInfosApi();
var id = id_example; // String | 
var userId = userId_example; // String | 

try {
    var result = api_instance.didInfosControllerConnectUser(id, userId);
    print(result);
} catch (e) {
    print("Exception when calling DidInfosApi->didInfosControllerConnectUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **userId** | **String**|  | 

### Return type

[**DidInfoResponseDto**](DidInfoResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **didInfosControllerCreate**
> didInfosControllerCreate(body)

新規DID生成

新規DIDを生成します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new DidInfosApi();
var body = new CreateDidDto(); // CreateDidDto | 

try {
    api_instance.didInfosControllerCreate(body);
} catch (e) {
    print("Exception when calling DidInfosApi->didInfosControllerCreate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateDidDto**](CreateDidDto.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **didInfosControllerDisconnectUser**
> didInfosControllerDisconnectUser(id)

DID情報のクライアントアカウント紐付け解除

DID情報に紐付いたクライアントアカウントの紐付けを解除します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new DidInfosApi();
var id = id_example; // String | 

try {
    api_instance.didInfosControllerDisconnectUser(id);
} catch (e) {
    print("Exception when calling DidInfosApi->didInfosControllerDisconnectUser: $e\n");
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
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **didInfosControllerFindAll**
> DidInfosResponseDto didInfosControllerFindAll(page, limit, did, manageUuid, label, method, existPrivateKey, description, domainName)

DID情報一覧取得

アプリケーションが管理するDID情報を一覧として値を返します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new DidInfosApi();
var page = 1.2; // double | (必須) ページネーションを表示する際のページ数に当たるクエリパラメーター。全件取得する際は1を指定。(デフォルト: 1)
var limit = 1.2; // double | (必須) ページネーションを表示する際のページ数あたりに表示する件数を指定するクエリパラメーター。全件取得する際は0を指定。(デフォルト: 10)
var did = did_example; // String | (任意) 例: \"did:key:z6MkhGeGj7u5htkCYjE4PaQ8HUqjYyTmxpDb6Q1MqUpUDsN7\"
var manageUuid = manageUuid_example; // String | (任意) 例: \"32bad62a-4186-4d04-a26a-fcee79d5824b\"
var label = label_example; // String | (任意) 例: \"did-for-project1\"
var method = method_example; // String | (任意) 例: \"did:key
var existPrivateKey = true; // bool | (任意) 例: true
var description = description_example; // String | (任意) 
var domainName = domainName_example; // String | (任意) 例: \"did:web:idroit-dashboard.com\"

try {
    var result = api_instance.didInfosControllerFindAll(page, limit, did, manageUuid, label, method, existPrivateKey, description, domainName);
    print(result);
} catch (e) {
    print("Exception when calling DidInfosApi->didInfosControllerFindAll: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **double**| (必須) ページネーションを表示する際のページ数に当たるクエリパラメーター。全件取得する際は1を指定。(デフォルト: 1) | [optional] 
 **limit** | **double**| (必須) ページネーションを表示する際のページ数あたりに表示する件数を指定するクエリパラメーター。全件取得する際は0を指定。(デフォルト: 10) | [optional] 
 **did** | **String**| (任意) 例: \&quot;did:key:z6MkhGeGj7u5htkCYjE4PaQ8HUqjYyTmxpDb6Q1MqUpUDsN7\&quot; | [optional] 
 **manageUuid** | **String**| (任意) 例: \&quot;32bad62a-4186-4d04-a26a-fcee79d5824b\&quot; | [optional] 
 **label** | **String**| (任意) 例: \&quot;did-for-project1\&quot; | [optional] 
 **method** | **String**| (任意) 例: \&quot;did:key | [optional] 
 **existPrivateKey** | **bool**| (任意) 例: true | [optional] 
 **description** | **String**| (任意)  | [optional] 
 **domainName** | **String**| (任意) 例: \&quot;did:web:idroit-dashboard.com\&quot; | [optional] 

### Return type

[**DidInfosResponseDto**](DidInfosResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **didInfosControllerFindOne**
> DidInfoResponseDto didInfosControllerFindOne(id)

DID情報詳細取得

リクエストパラメータのidで指定された単一のDID情報の詳細情報の値を返します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new DidInfosApi();
var id = id_example; // String | 

try {
    var result = api_instance.didInfosControllerFindOne(id);
    print(result);
} catch (e) {
    print("Exception when calling DidInfosApi->didInfosControllerFindOne: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**DidInfoResponseDto**](DidInfoResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **didInfosControllerRegister**
> didInfosControllerRegister(body)

既存DID登録

外部で生成されたDIDを本アプリケーションに取り込みます。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new DidInfosApi();
var body = new RegisterDidDto(); // RegisterDidDto | 

try {
    api_instance.didInfosControllerRegister(body);
} catch (e) {
    print("Exception when calling DidInfosApi->didInfosControllerRegister: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RegisterDidDto**](RegisterDidDto.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **didInfosControllerRemove**
> didInfosControllerRemove(id)

DID情報削除

リクエストパラメータのidで指定された単一のDID情報を削除します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new DidInfosApi();
var id = id_example; // String | 

try {
    api_instance.didInfosControllerRemove(id);
} catch (e) {
    print("Exception when calling DidInfosApi->didInfosControllerRemove: $e\n");
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
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **didInfosControllerResolve**
> ResolveDidResponseDto didInfosControllerResolve(body)

DID解決

DIDを解決した結果であるDID Documentの値を返します。このAPIでは保存などの処理を行いません。生成済みのDIDを保存したい場合、既存DID登録API(/did-infos/register)にリクエストを送信してください。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new DidInfosApi();
var body = new ResolveDidDto(); // ResolveDidDto | 

try {
    var result = api_instance.didInfosControllerResolve(body);
    print(result);
} catch (e) {
    print("Exception when calling DidInfosApi->didInfosControllerResolve: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ResolveDidDto**](ResolveDidDto.md)|  | 

### Return type

[**ResolveDidResponseDto**](ResolveDidResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

