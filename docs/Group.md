# swagger.model.Group

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | (必須) グループの識別子 | [default to null]
**name** | **String** | (必須) グループの名前。(例: プロジェクト名や企業名など) | [default to null]
**status** | **String** | (必須) グループの状態(1: アクティブ, 0: 停止中) | [default to null]
**description** | **String** | (任意) グループの作成目的や用途など任意で設定可能な説明文 | [default to null]
**users** | [**List&lt;User&gt;**](User.md) | (任意) グループに紐付いたアカウントの配列 | [optional] [default to []]
**createdBy** | [**AllOfGroupCreatedBy**](AllOfGroupCreatedBy.md) | (必須) グループを作成したユーザーアカウント。 | [default to null]
**didInfos** | [**List&lt;DidInfo&gt;**](DidInfo.md) | (任意) グループに紐付いたDID情報の配列 | [optional] [default to []]
**vcInfos** | [**List&lt;VcInfo&gt;**](VcInfo.md) | (任意) グループに紐付いたVC情報の配列 | [optional] [default to []]
**vpInfos** | [**List&lt;VpInfo&gt;**](VpInfo.md) | (任意) グループに紐付いたVP情報の配列 | [optional] [default to []]
**vcSchemas** | [**List&lt;VcSchema&gt;**](VcSchema.md) | (任意) グループに紐付いたVCスキーマの配列 | [optional] [default to []]
**createdAt** | **String** | (必須) グループの作成日時 | [default to null]
**updatedAt** | **String** | (必須) グループの最終更新日時 | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

