# swagger.api.VcSchemasApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**vcSchemasControllerCreate**](VcSchemasApi.md#vcSchemasControllerCreate) | **POST** /api/v1/vc-schemas | 新規VCスキーマ作成
[**vcSchemasControllerFindAll**](VcSchemasApi.md#vcSchemasControllerFindAll) | **GET** /api/v1/vc-schemas | VCスキーマ一覧取得
[**vcSchemasControllerFindOne**](VcSchemasApi.md#vcSchemasControllerFindOne) | **GET** /api/v1/vc-schemas/{id} | VCスキーマ情報詳細取得
[**vcSchemasControllerUpdate**](VcSchemasApi.md#vcSchemasControllerUpdate) | **PUT** /api/v1/vc-schemas/{id} | VCスキーマへのグループ紐付け

# **vcSchemasControllerCreate**
> VcSchemaResponseDto vcSchemasControllerCreate(body)

新規VCスキーマ作成

新規VCスキーマを作成します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new VcSchemasApi();
var body = new CreateVcSchemaDto(); // CreateVcSchemaDto | 

try {
    var result = api_instance.vcSchemasControllerCreate(body);
    print(result);
} catch (e) {
    print("Exception when calling VcSchemasApi->vcSchemasControllerCreate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateVcSchemaDto**](CreateVcSchemaDto.md)|  | 

### Return type

[**VcSchemaResponseDto**](VcSchemaResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **vcSchemasControllerFindAll**
> VcSchemasResponseDto vcSchemasControllerFindAll(page, limit, title, version, description, isBadgeSchema)

VCスキーマ一覧取得

VCスキーマを一覧として値を返します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new VcSchemasApi();
var page = 1.2; // double | (必須) ページネーションを表示する際のページ数に当たるクエリパラメーター。全件取得する際は1を指定。(デフォルト: 1)
var limit = 1.2; // double | (必須) ページネーションを表示する際のページ数あたりに表示する件数を指定するクエリパラメーター。全件取得する際は0を指定。(デフォルト: 10)
var title = title_example; // String | (任意) 例: \"Schema Sample\"
var version = version_example; // String | (任意) 例: \"1.0.0\"
var description = description_example; // String | (任意) 例: 
var isBadgeSchema = true; // bool | (任意) 例: true

try {
    var result = api_instance.vcSchemasControllerFindAll(page, limit, title, version, description, isBadgeSchema);
    print(result);
} catch (e) {
    print("Exception when calling VcSchemasApi->vcSchemasControllerFindAll: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **double**| (必須) ページネーションを表示する際のページ数に当たるクエリパラメーター。全件取得する際は1を指定。(デフォルト: 1) | [optional] 
 **limit** | **double**| (必須) ページネーションを表示する際のページ数あたりに表示する件数を指定するクエリパラメーター。全件取得する際は0を指定。(デフォルト: 10) | [optional] 
 **title** | **String**| (任意) 例: \&quot;Schema Sample\&quot; | [optional] 
 **version** | **String**| (任意) 例: \&quot;1.0.0\&quot; | [optional] 
 **description** | **String**| (任意) 例:  | [optional] 
 **isBadgeSchema** | **bool**| (任意) 例: true | [optional] 

### Return type

[**VcSchemasResponseDto**](VcSchemasResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **vcSchemasControllerFindOne**
> VcSchemaResponseDto vcSchemasControllerFindOne(id)

VCスキーマ情報詳細取得

リクエストパラメータのidで指定された単一のVCスキーマの詳細情報の値を返します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new VcSchemasApi();
var id = id_example; // String | 

try {
    var result = api_instance.vcSchemasControllerFindOne(id);
    print(result);
} catch (e) {
    print("Exception when calling VcSchemasApi->vcSchemasControllerFindOne: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**VcSchemaResponseDto**](VcSchemaResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **vcSchemasControllerUpdate**
> VcSchemaResponseDto vcSchemasControllerUpdate(body, id)

VCスキーマへのグループ紐付け

VCスキーマに関連するグループを紐付けます。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new VcSchemasApi();
var body = new UpdateVcSchemaDto(); // UpdateVcSchemaDto | 
var id = id_example; // String | 

try {
    var result = api_instance.vcSchemasControllerUpdate(body, id);
    print(result);
} catch (e) {
    print("Exception when calling VcSchemasApi->vcSchemasControllerUpdate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UpdateVcSchemaDto**](UpdateVcSchemaDto.md)|  | 
 **id** | **String**|  | 

### Return type

[**VcSchemaResponseDto**](VcSchemaResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

