# swagger.api.BadgesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**badgesControllerAddLabel**](BadgesApi.md#badgesControllerAddLabel) | **PUT** /api/v1/badges/{id}/label | Badgeへのラベル追加
[**badgesControllerCreate**](BadgesApi.md#badgesControllerCreate) | **POST** /api/v1/badges | 新規バッジ発行
[**badgesControllerDownload**](BadgesApi.md#badgesControllerDownload) | **GET** /api/v1/badges/{id}/download | バッジダウンロード
[**badgesControllerFileVerify**](BadgesApi.md#badgesControllerFileVerify) | **POST** /api/v1/badges/file | バッジファイル検証
[**badgesControllerFindAll**](BadgesApi.md#badgesControllerFindAll) | **GET** /api/v1/badges | バッジ一覧取得
[**badgesControllerFindOne**](BadgesApi.md#badgesControllerFindOne) | **GET** /api/v1/badges/{id} | バッジ詳細取得
[**badgesControllerVerify**](BadgesApi.md#badgesControllerVerify) | **PUT** /api/v1/badges/{id}/verify | バッジ検証

# **badgesControllerAddLabel**
> BadgeResponseDto badgesControllerAddLabel(body, id)

Badgeへのラベル追加

リクエストパラメータのidで指定された単一のBadgeに対して、任意の管理用ラベルを追加します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new BadgesApi();
var body = new AddLabelToBadgeDto(); // AddLabelToBadgeDto | 
var id = id_example; // String | 

try {
    var result = api_instance.badgesControllerAddLabel(body, id);
    print(result);
} catch (e) {
    print("Exception when calling BadgesApi->badgesControllerAddLabel: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AddLabelToBadgeDto**](AddLabelToBadgeDto.md)|  | 
 **id** | **String**|  | 

### Return type

[**BadgeResponseDto**](BadgeResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **badgesControllerCreate**
> BadgeResponseDto badgesControllerCreate(body)

新規バッジ発行

新規バッジを発行します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new BadgesApi();
var body = new CreateBadgeDto(); // CreateBadgeDto | 

try {
    var result = api_instance.badgesControllerCreate(body);
    print(result);
} catch (e) {
    print("Exception when calling BadgesApi->badgesControllerCreate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateBadgeDto**](CreateBadgeDto.md)|  | 

### Return type

[**BadgeResponseDto**](BadgeResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **badgesControllerDownload**
> String badgesControllerDownload(id, vpInfoId)

バッジダウンロード

リクエストパラメータのidで指定された単一のバッジ画像のバイナリデータを返します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new BadgesApi();
var id = id_example; // String | 
var vpInfoId = vpInfoId_example; // String | 

try {
    var result = api_instance.badgesControllerDownload(id, vpInfoId);
    print(result);
} catch (e) {
    print("Exception when calling BadgesApi->badgesControllerDownload: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **vpInfoId** | **String**|  | 

### Return type

**String**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **badgesControllerFileVerify**
> VerifiyBadgeFileReponseDto badgesControllerFileVerify(file)

バッジファイル検証

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new BadgesApi();
var file = file_example; // String | 

try {
    var result = api_instance.badgesControllerFileVerify(file);
    print(result);
} catch (e) {
    print("Exception when calling BadgesApi->badgesControllerFileVerify: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **String****String**|  | 

### Return type

[**VerifiyBadgeFileReponseDto**](VerifiyBadgeFileReponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **badgesControllerFindAll**
> BadgesResponseDto badgesControllerFindAll(page, limit, label, filename, description, status)

バッジ一覧取得

アプリケーションが管理するバッジ情報を一覧として値を返します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new BadgesApi();
var page = 1.2; // double | (必須) ページネーションを表示する際のページ数に当たるクエリパラメーター。全件取得する際は1を指定。(デフォルト: 1)
var limit = 1.2; // double | (必須) ページネーションを表示する際のページ数あたりに表示する件数を指定するクエリパラメーター。全件取得する際は0を指定。(デフォルト: 10)
var label = label_example; // String | (任意) 例: \"sample-badge-1\"
var filename = filename_example; // String | (任意) 例: \"badge-12345-12345.png\"
var description = description_example; // String | (任意) 
var status = 1.2; // double | (任意) 例: 1

try {
    var result = api_instance.badgesControllerFindAll(page, limit, label, filename, description, status);
    print(result);
} catch (e) {
    print("Exception when calling BadgesApi->badgesControllerFindAll: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **double**| (必須) ページネーションを表示する際のページ数に当たるクエリパラメーター。全件取得する際は1を指定。(デフォルト: 1) | [optional] 
 **limit** | **double**| (必須) ページネーションを表示する際のページ数あたりに表示する件数を指定するクエリパラメーター。全件取得する際は0を指定。(デフォルト: 10) | [optional] 
 **label** | **String**| (任意) 例: \&quot;sample-badge-1\&quot; | [optional] 
 **filename** | **String**| (任意) 例: \&quot;badge-12345-12345.png\&quot; | [optional] 
 **description** | **String**| (任意)  | [optional] 
 **status** | **double**| (任意) 例: 1 | [optional] 

### Return type

[**BadgesResponseDto**](BadgesResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **badgesControllerFindOne**
> BadgeResponseDto badgesControllerFindOne(id)

バッジ詳細取得

リクエストパラメータのidで指定された単一のバッジ情報の詳細情報の値を返します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new BadgesApi();
var id = id_example; // String | 

try {
    var result = api_instance.badgesControllerFindOne(id);
    print(result);
} catch (e) {
    print("Exception when calling BadgesApi->badgesControllerFindOne: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**BadgeResponseDto**](BadgeResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **badgesControllerVerify**
> VerifiyBadgeReponseDto badgesControllerVerify(body, id)

バッジ検証

バッジのVC/VPの検証を実行します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new BadgesApi();
var body = new VerifyBadgeDto(); // VerifyBadgeDto | 
var id = id_example; // String | 

try {
    var result = api_instance.badgesControllerVerify(body, id);
    print(result);
} catch (e) {
    print("Exception when calling BadgesApi->badgesControllerVerify: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**VerifyBadgeDto**](VerifyBadgeDto.md)|  | 
 **id** | **String**|  | 

### Return type

[**VerifiyBadgeReponseDto**](VerifiyBadgeReponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

