# swagger.model.GroupResponseDto

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | グループの識別子 | [default to null]
**name** | **String** |  グループの名前 | [default to null]
**status** | **String** | グループの状態(1: アクティブ, 0: 停止中) | [default to null]
**description** | **String** | グループの作成目的や用途など任意で設定可能な説明文 | [default to null]
**users** | [**List&lt;User&gt;**](User.md) | グループに紐付いたユーザーアカウントの配列 | [default to []]
**createdBy** | [**AllOfGroupResponseDtoCreatedBy**](AllOfGroupResponseDtoCreatedBy.md) | グループを作成したユーザーアカウント | [default to null]
**didInfos** | [**List&lt;DidInfo&gt;**](DidInfo.md) | グループに紐付いたVC情報の配列 | [default to []]
**vcInfos** | [**List&lt;VcInfo&gt;**](VcInfo.md) | グループに紐付いたVC情報の配列 | [default to []]
**vpInfos** | [**List&lt;VpInfo&gt;**](VpInfo.md) | グループに紐付いたVP情報の配列 | [default to []]
**vcSchemas** | [**List&lt;VcSchema&gt;**](VcSchema.md) | グループに紐付いたVCスキーマの配列 | [default to []]
**createdAt** | **String** | グループの作成日時 | [default to null]
**updatedAt** | **String** | グループの最終更新日時 | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

