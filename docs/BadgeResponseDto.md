# swagger.model.BadgeResponseDto

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | バッジの識別子 | [default to null]
**label** | **String** | バッジのラベル名 | [default to null]
**filename** | **String** | バッジのファイル名 | [default to null]
**description** | **String** | バッジの作成目的や用途など任意で設定可能な説明文 | [default to null]
**status** | **double** | バッジの状態(1: 利用可, 0: 利用停止中) | [default to null]
**vcSchema** | [**AllOfBadgeResponseDtoVcSchema**](AllOfBadgeResponseDtoVcSchema.md) | バッジに紐付いたVCスキーマの配列 | [default to null]
**vcInfo** | [**AllOfBadgeResponseDtoVcInfo**](AllOfBadgeResponseDtoVcInfo.md) | バッジに紐付いたVC情報の配列 | [default to null]
**createdAt** | **String** | バッジの作成日時 | [default to null]
**updatedAt** | **String** | バッジの最終更新日時 | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

