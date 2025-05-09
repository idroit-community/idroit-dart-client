# swagger.api.GroupsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**groupsControllerConnectDidInfos**](GroupsApi.md#groupsControllerConnectDidInfos) | **PUT** /api/v1/groups/{id}/did-infos | グループへのDID情報紐付け
[**groupsControllerConnectUsers**](GroupsApi.md#groupsControllerConnectUsers) | **PUT** /api/v1/groups/{id}/users | グループへのユーザーアカウント紐付け
[**groupsControllerConnectVcInfos**](GroupsApi.md#groupsControllerConnectVcInfos) | **PUT** /api/v1/groups/{id}/vc-infos | グループへのVC情報紐付け
[**groupsControllerConnectVcSchema**](GroupsApi.md#groupsControllerConnectVcSchema) | **PUT** /api/v1/groups/{id}/vc-schemas | グループへのVCスキーマ紐付け
[**groupsControllerConnectVpInfos**](GroupsApi.md#groupsControllerConnectVpInfos) | **PUT** /api/v1/groups/{id}/vp-infos | グループへのVP情報紐付け
[**groupsControllerCreate**](GroupsApi.md#groupsControllerCreate) | **POST** /api/v1/groups | グループ作成
[**groupsControllerDisconnectDidInfo**](GroupsApi.md#groupsControllerDisconnectDidInfo) | **DELETE** /api/v1/groups/{id}/did-info/{did_info_id} | グループのDID情報紐付け解除
[**groupsControllerDisconnectUser**](GroupsApi.md#groupsControllerDisconnectUser) | **DELETE** /api/v1/groups/{id}/user/{user_id} | グループのユーザーアカウント紐付け解除
[**groupsControllerDisconnectVcInfo**](GroupsApi.md#groupsControllerDisconnectVcInfo) | **DELETE** /api/v1/groups/{id}/vc-info/{vc_info_id} | グループのVC情報紐付け解除
[**groupsControllerDisconnectVcSchema**](GroupsApi.md#groupsControllerDisconnectVcSchema) | **DELETE** /api/v1/groups/{id}/vc-schema/{vc_schema_id} | グループのVCスキーマ紐付け解除
[**groupsControllerDisconnectVpInfo**](GroupsApi.md#groupsControllerDisconnectVpInfo) | **DELETE** /api/v1/groups/{id}/vp-info/{vp_info_id} | グループのVP情報紐付け解除
[**groupsControllerFindAll**](GroupsApi.md#groupsControllerFindAll) | **GET** /api/v1/groups | グループ一覧取得
[**groupsControllerFindOne**](GroupsApi.md#groupsControllerFindOne) | **GET** /api/v1/groups/{id} | グループ詳細取得
[**groupsControllerRemove**](GroupsApi.md#groupsControllerRemove) | **DELETE** /api/v1/groups/{id} | グループ停止
[**groupsControllerUpdate**](GroupsApi.md#groupsControllerUpdate) | **PUT** /api/v1/groups/{id} | グループ更新

# **groupsControllerConnectDidInfos**
> GroupResponseDto groupsControllerConnectDidInfos(body, id)

グループへのDID情報紐付け

グループにDID情報を紐付けます。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GroupsApi();
var body = new ConnectDidInfosDto(); // ConnectDidInfosDto | 
var id = id_example; // String | 

try {
    var result = api_instance.groupsControllerConnectDidInfos(body, id);
    print(result);
} catch (e) {
    print("Exception when calling GroupsApi->groupsControllerConnectDidInfos: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ConnectDidInfosDto**](ConnectDidInfosDto.md)|  | 
 **id** | **String**|  | 

### Return type

[**GroupResponseDto**](GroupResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupsControllerConnectUsers**
> GroupResponseDto groupsControllerConnectUsers(body, id)

グループへのユーザーアカウント紐付け

グループの所有者、関係者などの管理者としてユーザーアカウントを紐付けます。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GroupsApi();
var body = new ConnectUsersDto(); // ConnectUsersDto | 
var id = id_example; // String | 

try {
    var result = api_instance.groupsControllerConnectUsers(body, id);
    print(result);
} catch (e) {
    print("Exception when calling GroupsApi->groupsControllerConnectUsers: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ConnectUsersDto**](ConnectUsersDto.md)|  | 
 **id** | **String**|  | 

### Return type

[**GroupResponseDto**](GroupResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupsControllerConnectVcInfos**
> GroupResponseDto groupsControllerConnectVcInfos(body, id)

グループへのVC情報紐付け

グループにVC情報を紐付けます。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GroupsApi();
var body = new ConnectVcInfosDto(); // ConnectVcInfosDto | 
var id = id_example; // String | 

try {
    var result = api_instance.groupsControllerConnectVcInfos(body, id);
    print(result);
} catch (e) {
    print("Exception when calling GroupsApi->groupsControllerConnectVcInfos: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ConnectVcInfosDto**](ConnectVcInfosDto.md)|  | 
 **id** | **String**|  | 

### Return type

[**GroupResponseDto**](GroupResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupsControllerConnectVcSchema**
> GroupResponseDto groupsControllerConnectVcSchema(body, id)

グループへのVCスキーマ紐付け

グループにVCスキーマを紐付けます。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GroupsApi();
var body = new ConnectVcSchemasDto(); // ConnectVcSchemasDto | 
var id = id_example; // String | 

try {
    var result = api_instance.groupsControllerConnectVcSchema(body, id);
    print(result);
} catch (e) {
    print("Exception when calling GroupsApi->groupsControllerConnectVcSchema: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ConnectVcSchemasDto**](ConnectVcSchemasDto.md)|  | 
 **id** | **String**|  | 

### Return type

[**GroupResponseDto**](GroupResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupsControllerConnectVpInfos**
> GroupResponseDto groupsControllerConnectVpInfos(body, id)

グループへのVP情報紐付け

グループにVP情報を紐付けます。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GroupsApi();
var body = new ConnectVpInfosDto(); // ConnectVpInfosDto | 
var id = id_example; // String | 

try {
    var result = api_instance.groupsControllerConnectVpInfos(body, id);
    print(result);
} catch (e) {
    print("Exception when calling GroupsApi->groupsControllerConnectVpInfos: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ConnectVpInfosDto**](ConnectVpInfosDto.md)|  | 
 **id** | **String**|  | 

### Return type

[**GroupResponseDto**](GroupResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupsControllerCreate**
> GroupResponseDto groupsControllerCreate(body)

グループ作成

グループ作成に成功しました。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GroupsApi();
var body = new CreateGroupDto(); // CreateGroupDto | 

try {
    var result = api_instance.groupsControllerCreate(body);
    print(result);
} catch (e) {
    print("Exception when calling GroupsApi->groupsControllerCreate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateGroupDto**](CreateGroupDto.md)|  | 

### Return type

[**GroupResponseDto**](GroupResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupsControllerDisconnectDidInfo**
> GroupResponseDto groupsControllerDisconnectDidInfo(id, didInfoId)

グループのDID情報紐付け解除

グループに紐付いたDID情報の紐付けを解除します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GroupsApi();
var id = id_example; // String | 
var didInfoId = didInfoId_example; // String | 

try {
    var result = api_instance.groupsControllerDisconnectDidInfo(id, didInfoId);
    print(result);
} catch (e) {
    print("Exception when calling GroupsApi->groupsControllerDisconnectDidInfo: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **didInfoId** | **String**|  | 

### Return type

[**GroupResponseDto**](GroupResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupsControllerDisconnectUser**
> GroupResponseDto groupsControllerDisconnectUser(id, userId)

グループのユーザーアカウント紐付け解除

グループに紐付いたユーザーアカウントの紐付けを解除します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GroupsApi();
var id = id_example; // String | 
var userId = userId_example; // String | 

try {
    var result = api_instance.groupsControllerDisconnectUser(id, userId);
    print(result);
} catch (e) {
    print("Exception when calling GroupsApi->groupsControllerDisconnectUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **userId** | **String**|  | 

### Return type

[**GroupResponseDto**](GroupResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupsControllerDisconnectVcInfo**
> GroupResponseDto groupsControllerDisconnectVcInfo(id, vcInfoId)

グループのVC情報紐付け解除

グループに紐付いたVC情報の紐付けを解除します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GroupsApi();
var id = id_example; // String | 
var vcInfoId = vcInfoId_example; // String | 

try {
    var result = api_instance.groupsControllerDisconnectVcInfo(id, vcInfoId);
    print(result);
} catch (e) {
    print("Exception when calling GroupsApi->groupsControllerDisconnectVcInfo: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **vcInfoId** | **String**|  | 

### Return type

[**GroupResponseDto**](GroupResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupsControllerDisconnectVcSchema**
> GroupResponseDto groupsControllerDisconnectVcSchema(id, vcSchemaId)

グループのVCスキーマ紐付け解除

グループに紐付いたVCスキーマの紐付けを解除します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GroupsApi();
var id = id_example; // String | 
var vcSchemaId = vcSchemaId_example; // String | 

try {
    var result = api_instance.groupsControllerDisconnectVcSchema(id, vcSchemaId);
    print(result);
} catch (e) {
    print("Exception when calling GroupsApi->groupsControllerDisconnectVcSchema: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **vcSchemaId** | **String**|  | 

### Return type

[**GroupResponseDto**](GroupResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupsControllerDisconnectVpInfo**
> GroupResponseDto groupsControllerDisconnectVpInfo(id, vpInfoId)

グループのVP情報紐付け解除

グループに紐付いたVP情報の紐付けを解除します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GroupsApi();
var id = id_example; // String | 
var vpInfoId = vpInfoId_example; // String | 

try {
    var result = api_instance.groupsControllerDisconnectVpInfo(id, vpInfoId);
    print(result);
} catch (e) {
    print("Exception when calling GroupsApi->groupsControllerDisconnectVpInfo: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **vpInfoId** | **String**|  | 

### Return type

[**GroupResponseDto**](GroupResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupsControllerFindAll**
> GroupsResponseDto groupsControllerFindAll(page, limit, name, status)

グループ一覧取得

グループを一覧として値を返します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GroupsApi();
var page = 1.2; // double | (必須) ページネーションを表示する際のページ数に当たるクエリパラメーター。全件取得する際は1を指定。(デフォルト: 1)
var limit = 1.2; // double | (必須) ページネーションを表示する際のページ数あたりに表示する件数を指定するクエリパラメーター。全件取得する際は0を指定。(デフォルト: 10)
var name = name_example; // String | (任意)グループの名前。 例: \"Group Project1\"
var status = status_example; // String | (任意)グループのステータス。 例: \"active\"

try {
    var result = api_instance.groupsControllerFindAll(page, limit, name, status);
    print(result);
} catch (e) {
    print("Exception when calling GroupsApi->groupsControllerFindAll: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **double**| (必須) ページネーションを表示する際のページ数に当たるクエリパラメーター。全件取得する際は1を指定。(デフォルト: 1) | [optional] 
 **limit** | **double**| (必須) ページネーションを表示する際のページ数あたりに表示する件数を指定するクエリパラメーター。全件取得する際は0を指定。(デフォルト: 10) | [optional] 
 **name** | **String**| (任意)グループの名前。 例: \&quot;Group Project1\&quot; | [optional] 
 **status** | **String**| (任意)グループのステータス。 例: \&quot;active\&quot; | [optional] 

### Return type

[**GroupsResponseDto**](GroupsResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupsControllerFindOne**
> GroupResponseDto groupsControllerFindOne(id)

グループ詳細取得

リクエストパラメータのidで指定された単一の管理者アカウントの詳細情報の値を返します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GroupsApi();
var id = id_example; // String | 

try {
    var result = api_instance.groupsControllerFindOne(id);
    print(result);
} catch (e) {
    print("Exception when calling GroupsApi->groupsControllerFindOne: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**GroupResponseDto**](GroupResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupsControllerRemove**
> groupsControllerRemove(id)

グループ停止

リクエストパラメータのidで指定された単一のグループを停止します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GroupsApi();
var id = id_example; // String | 

try {
    api_instance.groupsControllerRemove(id);
} catch (e) {
    print("Exception when calling GroupsApi->groupsControllerRemove: $e\n");
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

# **groupsControllerUpdate**
> GroupResponseDto groupsControllerUpdate(id)

グループ更新

リクエストパラメータのidで指定された単一のグループ情報を更新します。

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GroupsApi();
var id = id_example; // String | 

try {
    var result = api_instance.groupsControllerUpdate(id);
    print(result);
} catch (e) {
    print("Exception when calling GroupsApi->groupsControllerUpdate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**GroupResponseDto**](GroupResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

