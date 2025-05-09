# swagger.model.CreateUserDto

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | (必須) ユーザーアカウントの名前 | [default to null]
**email** | **String** | (必須) ユーザーアカウントのメールアドレス | [default to null]
**password** | **String** | (任意) ユーザーアカウントのパスワード(8文字以上20字未満)。\&quot;needActivateFlow\&quot;が\&quot;false\&quot;の場合は必須。 | [optional] [default to null]
**role** | **String** | (必須) アカウントのタイプ | [default to null]
**needActivateFlow** | **bool** | (任意) アカウントの有効化フローが必要か否か。デフォルト値ではfalse。(true: 必要 /false: 不要) | [optional] [default to null]
**groupIds** | **List&lt;String&gt;** | (任意) ユーザーアカウントに紐付けるグループのIDの配列 | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

