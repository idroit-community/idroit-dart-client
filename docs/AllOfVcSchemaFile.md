# swagger.model.AllOfVcSchemaFile

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | (必須) ファイルの識別子 | [default to null]
**filename** | **String** | (任意) システム内で管理される際にシステムによって名付けられるユニークなファイル名 | [default to null]
**originalname** | **String** | (必須) システムへアップロード時の元のファイル名 | [default to null]
**type** | **String** | (必須) ファイル形式 | [default to null]
**fileData** | **String** | (必須) ファイルのバイナリデータ | [default to null]
**executed** | **bool** | (任意) ファイルがCSVの場合、アカウントデータ生成実行に使用されたか。(true: 実行済み, false: 未使用) | [default to null]
**status** | **double** | (必須) ファイルのステータス | [default to null]
**group** | [**List&lt;Group&gt;**](Group.md) | (任意) ファイルを紐づけたグループの配列 | [default to []]
**vcSchema** | [**Object**](Object.md) | (任意) ファイルに紐づいたVCスキーマ | [optional] [default to null]
**createdBy** | [**Object**](Object.md) | (必須) ファイルをアップロードしたユーザーアカウント。 | [default to null]
**createdAt** | **String** | (必須) ファイルの作成日時 | [default to null]
**updatedAt** | **String** | (必須) グループの最終更新日時 | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

