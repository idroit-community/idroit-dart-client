# swagger.api.MailsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mailsControllerFindAll**](MailsApi.md#mailsControllerFindAll) | **GET** /api/v1/mails | 送信済みメール一覧取得
[**mailsControllerFindOne**](MailsApi.md#mailsControllerFindOne) | **GET** /api/v1/mails/{id} | 送信済みメール詳細取得
[**mailsControllerSend**](MailsApi.md#mailsControllerSend) | **POST** /api/v1/mails | 新規単一メール送信
[**mailsControllerSendBatch**](MailsApi.md#mailsControllerSendBatch) | **POST** /api/v1/mails/batch | 新規複数メールバッチ送信

# **mailsControllerFindAll**
> MailsResponseDto mailsControllerFindAll(page, limit)

送信済みメール一覧取得

送信済みメールを一覧として値を返します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new MailsApi();
var page = 1.2; // double | (必須) ページネーションを表示する際のページ数に当たるクエリパラメーター。全件取得する際は1を指定。(デフォルト: 1)
var limit = 1.2; // double | (必須) ページネーションを表示する際のページ数あたりに表示する件数を指定するクエリパラメーター。全件取得する際は0を指定。(デフォルト: 10)

try {
    var result = api_instance.mailsControllerFindAll(page, limit);
    print(result);
} catch (e) {
    print("Exception when calling MailsApi->mailsControllerFindAll: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **double**| (必須) ページネーションを表示する際のページ数に当たるクエリパラメーター。全件取得する際は1を指定。(デフォルト: 1) | [optional] 
 **limit** | **double**| (必須) ページネーションを表示する際のページ数あたりに表示する件数を指定するクエリパラメーター。全件取得する際は0を指定。(デフォルト: 10) | [optional] 

### Return type

[**MailsResponseDto**](MailsResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mailsControllerFindOne**
> Mail mailsControllerFindOne(id)

送信済みメール詳細取得

リクエストパラメータのidで指定された単一の送信済みメールの詳細情報の値を返します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new MailsApi();
var id = id_example; // String | 

try {
    var result = api_instance.mailsControllerFindOne(id);
    print(result);
} catch (e) {
    print("Exception when calling MailsApi->mailsControllerFindOne: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**Mail**](Mail.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mailsControllerSend**
> mailsControllerSend(body)

新規単一メール送信

新規単一メールを作成し、送信します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new MailsApi();
var body = new SendMailDto(); // SendMailDto | 

try {
    api_instance.mailsControllerSend(body);
} catch (e) {
    print("Exception when calling MailsApi->mailsControllerSend: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SendMailDto**](SendMailDto.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mailsControllerSendBatch**
> mailsControllerSendBatch(body)

新規複数メールバッチ送信

新規メールを複数作成し、送信します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new MailsApi();
var body = new SendMailBatchDto(); // SendMailBatchDto | 

try {
    api_instance.mailsControllerSendBatch(body);
} catch (e) {
    print("Exception when calling MailsApi->mailsControllerSendBatch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SendMailBatchDto**](SendMailBatchDto.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

