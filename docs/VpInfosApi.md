# swagger.api.VpInfosApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**vpInfosControllerAddLabel**](VpInfosApi.md#vpInfosControllerAddLabel) | **PUT** /api/v1/vp-infos/{id}/label | VP情報へのラベル追加
[**vpInfosControllerConnectUser**](VpInfosApi.md#vpInfosControllerConnectUser) | **PUT** /api/v1/vp-infos/{id} | VP情報へのクライアントアカウント紐付け
[**vpInfosControllerCreate**](VpInfosApi.md#vpInfosControllerCreate) | **POST** /api/v1/vp-infos | 新規VP生成
[**vpInfosControllerDisconnectUser**](VpInfosApi.md#vpInfosControllerDisconnectUser) | **DELETE** /api/v1/vp-infos/{id}/user | VP情報のクライアントアカウント紐付け解除
[**vpInfosControllerFindAll**](VpInfosApi.md#vpInfosControllerFindAll) | **GET** /api/v1/vp-infos | VP情報一覧取得
[**vpInfosControllerFindOne**](VpInfosApi.md#vpInfosControllerFindOne) | **GET** /api/v1/vp-infos/{id} | VP情報詳細取得
[**vpInfosControllerUpload**](VpInfosApi.md#vpInfosControllerUpload) | **POST** /api/v1/vp-infos/upload | 新規VPアップロード

# **vpInfosControllerAddLabel**
> VpInfoResponseDto vpInfosControllerAddLabel(body, id)

VP情報へのラベル追加

リクエストパラメータのidで指定された単一のVP情報に対して、任意の管理用ラベルを追加します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new VpInfosApi();
var body = new AddLabelToVpInfoDto(); // AddLabelToVpInfoDto | 
var id = id_example; // String | 

try {
    var result = api_instance.vpInfosControllerAddLabel(body, id);
    print(result);
} catch (e) {
    print("Exception when calling VpInfosApi->vpInfosControllerAddLabel: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AddLabelToVpInfoDto**](AddLabelToVpInfoDto.md)|  | 
 **id** | **String**|  | 

### Return type

[**VpInfoResponseDto**](VpInfoResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **vpInfosControllerConnectUser**
> vpInfosControllerConnectUser(body, id)

VP情報へのクライアントアカウント紐付け

VP情報の所有者、関係者などの管理者としてクライアントアカウントを紐付けます。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new VpInfosApi();
var body = new UpdateVcInfoDto(); // UpdateVcInfoDto | 
var id = id_example; // String | 

try {
    api_instance.vpInfosControllerConnectUser(body, id);
} catch (e) {
    print("Exception when calling VpInfosApi->vpInfosControllerConnectUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UpdateVcInfoDto**](UpdateVcInfoDto.md)|  | 
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **vpInfosControllerCreate**
> vpInfosControllerCreate(body)

新規VP生成

新規VPを生成します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new VpInfosApi();
var body = new CreateVpInfoDto(); // CreateVpInfoDto | 

try {
    api_instance.vpInfosControllerCreate(body);
} catch (e) {
    print("Exception when calling VpInfosApi->vpInfosControllerCreate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateVpInfoDto**](CreateVpInfoDto.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **vpInfosControllerDisconnectUser**
> vpInfosControllerDisconnectUser(id)

VP情報のクライアントアカウント紐付け解除

VP情報に紐付いたクライアントアカウントの紐付けを解除します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new VpInfosApi();
var id = id_example; // String | 

try {
    api_instance.vpInfosControllerDisconnectUser(id);
} catch (e) {
    print("Exception when calling VpInfosApi->vpInfosControllerDisconnectUser: $e\n");
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

# **vpInfosControllerFindAll**
> VpInfoResponseDto vpInfosControllerFindAll(page, limit, label, description)

VP情報一覧取得

アプリケーションが管理するVP情報を一覧として値を返します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new VpInfosApi();
var page = 1.2; // double | (必須) ページネーションを表示する際のページ数に当たるクエリパラメーター。全件取得する際は1を指定。(デフォルト: 1)
var limit = 1.2; // double | (必須) ページネーションを表示する際のページ数あたりに表示する件数を指定するクエリパラメーター。全件取得する際は0を指定。(デフォルト: 10)
var label = label_example; // String | (任意) 例: \"vc-for-project1\"
var description = description_example; // String | (任意) 

try {
    var result = api_instance.vpInfosControllerFindAll(page, limit, label, description);
    print(result);
} catch (e) {
    print("Exception when calling VpInfosApi->vpInfosControllerFindAll: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **double**| (必須) ページネーションを表示する際のページ数に当たるクエリパラメーター。全件取得する際は1を指定。(デフォルト: 1) | [optional] 
 **limit** | **double**| (必須) ページネーションを表示する際のページ数あたりに表示する件数を指定するクエリパラメーター。全件取得する際は0を指定。(デフォルト: 10) | [optional] 
 **label** | **String**| (任意) 例: \&quot;vc-for-project1\&quot; | [optional] 
 **description** | **String**| (任意)  | [optional] 

### Return type

[**VpInfoResponseDto**](VpInfoResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **vpInfosControllerFindOne**
> VpInfoDetailDto vpInfosControllerFindOne(id)

VP情報詳細取得

リクエストパラメータのidで指定された単一のVP情報の詳細情報の値を返します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new VpInfosApi();
var id = id_example; // String | 

try {
    var result = api_instance.vpInfosControllerFindOne(id);
    print(result);
} catch (e) {
    print("Exception when calling VpInfosApi->vpInfosControllerFindOne: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**VpInfoDetailDto**](VpInfoDetailDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **vpInfosControllerUpload**
> VpInfoResponseDto vpInfosControllerUpload(credentialObject, label, description)

新規VPアップロード

外部で発行された既存VPをアップロードし、本アプリケーションに保存します。。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new VpInfosApi();
var credentialObject = ; // Object | 
var label = label_example; // String | 
var description = description_example; // String | 

try {
    var result = api_instance.vpInfosControllerUpload(credentialObject, label, description);
    print(result);
} catch (e) {
    print("Exception when calling VpInfosApi->vpInfosControllerUpload: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credentialObject** | [**Object**](.md)|  | 
 **label** | **String**|  | 
 **description** | **String**|  | 

### Return type

[**VpInfoResponseDto**](VpInfoResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

