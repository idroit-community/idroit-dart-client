# swagger.api.FilesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**filesControllerDownload**](FilesApi.md#filesControllerDownload) | **GET** /api/v1/files/{id}/download | ファイルダウンロード
[**filesControllerExecuteCSV**](FilesApi.md#filesControllerExecuteCSV) | **POST** /api/v1/files/{id} | CSVファイル実行
[**filesControllerFindAll**](FilesApi.md#filesControllerFindAll) | **GET** /api/v1/files | ファイル一覧取得
[**filesControllerFindOne**](FilesApi.md#filesControllerFindOne) | **GET** /api/v1/files/{id} | ファイル詳細取得
[**filesControllerRemove**](FilesApi.md#filesControllerRemove) | **DELETE** /api/v1/files/{id} | ファイル削除
[**filesControllerUploadFile**](FilesApi.md#filesControllerUploadFile) | **POST** /api/v1/files | ファイルアップロード

# **filesControllerDownload**
> String filesControllerDownload(id)

ファイルダウンロード

リクエストパラメータのidで指定された単一のファイルのバイナリデータを返します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new FilesApi();
var id = id_example; // String | 

try {
    var result = api_instance.filesControllerDownload(id);
    print(result);
} catch (e) {
    print("Exception when calling FilesApi->filesControllerDownload: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

**String**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **filesControllerExecuteCSV**
> filesControllerExecuteCSV(body, id)

CSVファイル実行

(非推奨) ユーザー、クライアント情報を記載したCSVファイルを実行し、新規アカウントを作成します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new FilesApi();
var body = new CreateDidDto(); // CreateDidDto | 
var id = id_example; // String | 

try {
    api_instance.filesControllerExecuteCSV(body, id);
} catch (e) {
    print("Exception when calling FilesApi->filesControllerExecuteCSV: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateDidDto**](CreateDidDto.md)|  | 
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **filesControllerFindAll**
> FilesResponseDto filesControllerFindAll(page, limit, filename, originalname, executed, type, status)

ファイル一覧取得

ファイルを一覧として値を返します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new FilesApi();
var page = 1.2; // double | (必須) ページネーションを表示する際のページ数に当たるクエリパラメーター。全件取得する際は1を指定。(デフォルト: 1)
var limit = 1.2; // double | (必須) ページネーションを表示する際のページ数あたりに表示する件数を指定するクエリパラメーター。全件取得する際は0を指定。(デフォルト: 10)
var filename = filename_example; // String | (任意) 例: \"file-1732019975229-394515535.png\"
var originalname = originalname_example; // String | (任意) 例: \"english-badge.png\"
var executed = true; // bool | (任意) 例: true
var type = type_example; // String | (任意) 例: \"image/png\"
var status = 1.2; // double | (任意) 例: 0

try {
    var result = api_instance.filesControllerFindAll(page, limit, filename, originalname, executed, type, status);
    print(result);
} catch (e) {
    print("Exception when calling FilesApi->filesControllerFindAll: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **double**| (必須) ページネーションを表示する際のページ数に当たるクエリパラメーター。全件取得する際は1を指定。(デフォルト: 1) | [optional] 
 **limit** | **double**| (必須) ページネーションを表示する際のページ数あたりに表示する件数を指定するクエリパラメーター。全件取得する際は0を指定。(デフォルト: 10) | [optional] 
 **filename** | **String**| (任意) 例: \&quot;file-1732019975229-394515535.png\&quot; | [optional] 
 **originalname** | **String**| (任意) 例: \&quot;english-badge.png\&quot; | [optional] 
 **executed** | **bool**| (任意) 例: true | [optional] 
 **type** | **String**| (任意) 例: \&quot;image/png\&quot; | [optional] 
 **status** | **double**| (任意) 例: 0 | [optional] 

### Return type

[**FilesResponseDto**](FilesResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **filesControllerFindOne**
> FileResponseDto filesControllerFindOne(id)

ファイル詳細取得

リクエストパラメータのidで指定された単一のファイルの詳細情報の値を返します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new FilesApi();
var id = id_example; // String | 

try {
    var result = api_instance.filesControllerFindOne(id);
    print(result);
} catch (e) {
    print("Exception when calling FilesApi->filesControllerFindOne: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**FileResponseDto**](FileResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **filesControllerRemove**
> filesControllerRemove(id)

ファイル削除

リクエストパラメータのidで指定された単一のファイルを削除します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new FilesApi();
var id = id_example; // String | 

try {
    api_instance.filesControllerRemove(id);
} catch (e) {
    print("Exception when calling FilesApi->filesControllerRemove: $e\n");
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

# **filesControllerUploadFile**
> FileResponseDto filesControllerUploadFile(file)

ファイルアップロード

新規ファイルアップロードを作成します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new FilesApi();
var file = file_example; // String | 

try {
    var result = api_instance.filesControllerUploadFile(file);
    print(result);
} catch (e) {
    print("Exception when calling FilesApi->filesControllerUploadFile: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **String****String**|  | 

### Return type

[**FileResponseDto**](FileResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

