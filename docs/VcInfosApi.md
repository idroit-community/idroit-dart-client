# swagger.api.VcInfosApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**vcInfosControllerAddLabel**](VcInfosApi.md#vcInfosControllerAddLabel) | **PUT** /api/v1/vc-infos/{id}/label | VC情報へのラベル追加
[**vcInfosControllerConnectUser**](VcInfosApi.md#vcInfosControllerConnectUser) | **PUT** /api/v1/vc-infos/{id} | VC情報へのクライアントアカウント紐付け
[**vcInfosControllerCreate**](VcInfosApi.md#vcInfosControllerCreate) | **POST** /api/v1/vc-infos | 新規VC発行
[**vcInfosControllerDisconnectUser**](VcInfosApi.md#vcInfosControllerDisconnectUser) | **DELETE** /api/v1/vc-infos/{id}/user | VC情報のクライアントアカウント紐付け解除
[**vcInfosControllerFindAll**](VcInfosApi.md#vcInfosControllerFindAll) | **GET** /api/v1/vc-infos | VC情報一覧取得
[**vcInfosControllerFindOne**](VcInfosApi.md#vcInfosControllerFindOne) | **GET** /api/v1/vc-infos/{id} | VC情報詳細取得
[**vcInfosControllerGenerateVp**](VcInfosApi.md#vcInfosControllerGenerateVp) | **POST** /api/v1/vc-infos/{id} | 新規VP情報生成
[**vcInfosControllerIssue**](VcInfosApi.md#vcInfosControllerIssue) | **POST** /api/v1/vc-infos/issue | 新規VC発行(スキーマなし)
[**vcInfosControllerUpload**](VcInfosApi.md#vcInfosControllerUpload) | **POST** /api/v1/vc-infos/upload | 新規VCアップロード

# **vcInfosControllerAddLabel**
> VcInfoResponseDto vcInfosControllerAddLabel(body, id)

VC情報へのラベル追加

リクエストパラメータのidで指定された単一のVC情報に対して、任意の管理用ラベルを追加します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new VcInfosApi();
var body = new AddLabelToVcInfoDto(); // AddLabelToVcInfoDto | 
var id = id_example; // String | 

try {
    var result = api_instance.vcInfosControllerAddLabel(body, id);
    print(result);
} catch (e) {
    print("Exception when calling VcInfosApi->vcInfosControllerAddLabel: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AddLabelToVcInfoDto**](AddLabelToVcInfoDto.md)|  | 
 **id** | **String**|  | 

### Return type

[**VcInfoResponseDto**](VcInfoResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **vcInfosControllerConnectUser**
> vcInfosControllerConnectUser(body, id)

VC情報へのクライアントアカウント紐付け

VC情報の所有者、関係者などの管理者としてクライアントアカウントを紐付けます。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new VcInfosApi();
var body = new UpdateVcInfoDto(); // UpdateVcInfoDto | 
var id = id_example; // String | 

try {
    api_instance.vcInfosControllerConnectUser(body, id);
} catch (e) {
    print("Exception when calling VcInfosApi->vcInfosControllerConnectUser: $e\n");
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

# **vcInfosControllerCreate**
> VcInfoResponseDto vcInfosControllerCreate(body)

新規VC発行

新規VCを発行します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new VcInfosApi();
var body = new CreateVcInfoDto(); // CreateVcInfoDto | 

try {
    var result = api_instance.vcInfosControllerCreate(body);
    print(result);
} catch (e) {
    print("Exception when calling VcInfosApi->vcInfosControllerCreate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateVcInfoDto**](CreateVcInfoDto.md)|  | 

### Return type

[**VcInfoResponseDto**](VcInfoResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **vcInfosControllerDisconnectUser**
> vcInfosControllerDisconnectUser(id)

VC情報のクライアントアカウント紐付け解除

VC情報に紐付いたクライアントアカウントの紐付けを解除します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new VcInfosApi();
var id = id_example; // String | 

try {
    api_instance.vcInfosControllerDisconnectUser(id);
} catch (e) {
    print("Exception when calling VcInfosApi->vcInfosControllerDisconnectUser: $e\n");
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

# **vcInfosControllerFindAll**
> VcInfosResponseDto vcInfosControllerFindAll(page, limit, label, description)

VC情報一覧取得

アプリケーションが管理するVC情報を一覧として値を返します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new VcInfosApi();
var page = 1.2; // double | (必須) ページネーションを表示する際のページ数に当たるクエリパラメーター。全件取得する際は1を指定。(デフォルト: 1)
var limit = 1.2; // double | (必須) ページネーションを表示する際のページ数あたりに表示する件数を指定するクエリパラメーター。全件取得する際は0を指定。(デフォルト: 10)
var label = label_example; // String | (任意) 例: \"vc-for-project1\"
var description = description_example; // String | (任意) 

try {
    var result = api_instance.vcInfosControllerFindAll(page, limit, label, description);
    print(result);
} catch (e) {
    print("Exception when calling VcInfosApi->vcInfosControllerFindAll: $e\n");
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

[**VcInfosResponseDto**](VcInfosResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **vcInfosControllerFindOne**
> VcInfoResponseDto vcInfosControllerFindOne(id)

VC情報詳細取得

リクエストパラメータのidで指定された単一のVC情報の詳細情報の値を返します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new VcInfosApi();
var id = id_example; // String | 

try {
    var result = api_instance.vcInfosControllerFindOne(id);
    print(result);
} catch (e) {
    print("Exception when calling VcInfosApi->vcInfosControllerFindOne: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**VcInfoResponseDto**](VcInfoResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **vcInfosControllerGenerateVp**
> VcInfoResponseDto vcInfosControllerGenerateVp(body, id)

新規VP情報生成

リクエストパラメータのidで指定されたVC情報から新規VPを発行します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new VcInfosApi();
var body = new GenerateVpDto(); // GenerateVpDto | 
var id = id_example; // String | 

try {
    var result = api_instance.vcInfosControllerGenerateVp(body, id);
    print(result);
} catch (e) {
    print("Exception when calling VcInfosApi->vcInfosControllerGenerateVp: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GenerateVpDto**](GenerateVpDto.md)|  | 
 **id** | **String**|  | 

### Return type

[**VcInfoResponseDto**](VcInfoResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **vcInfosControllerIssue**
> VcInfoResponseDto vcInfosControllerIssue(body)

新規VC発行(スキーマなし)

VCスキーマを指定せず直接新規VCを発行します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new VcInfosApi();
var body = new IssueVcInfoDto(); // IssueVcInfoDto | 

try {
    var result = api_instance.vcInfosControllerIssue(body);
    print(result);
} catch (e) {
    print("Exception when calling VcInfosApi->vcInfosControllerIssue: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**IssueVcInfoDto**](IssueVcInfoDto.md)|  | 

### Return type

[**VcInfoResponseDto**](VcInfoResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **vcInfosControllerUpload**
> VcInfoResponseDto vcInfosControllerUpload(credentialObject, label, description)

新規VCアップロード

外部で発行された既存VCをアップロードし、本アプリケーションに保存します。。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new VcInfosApi();
var credentialObject = ; // Object | 
var label = label_example; // String | 
var description = description_example; // String | 

try {
    var result = api_instance.vcInfosControllerUpload(credentialObject, label, description);
    print(result);
} catch (e) {
    print("Exception when calling VcInfosApi->vcInfosControllerUpload: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credentialObject** | [**Object**](.md)|  | 
 **label** | **String**|  | 
 **description** | **String**|  | 

### Return type

[**VcInfoResponseDto**](VcInfoResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

