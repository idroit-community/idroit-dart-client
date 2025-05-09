# swagger.model.VcSchemaResponseDto

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | VCスキーマの識別子 | [default to null]
**title** | **String** | VCスキーマのタイトル | [default to null]
**version** | **String** | VCスキーマのバージョン | [default to null]
**description** | **String** | VCスキーマの説明文 | [default to null]
**isBadgeSchema** | **String** | VCスキーマがバッジのスキーマか否か | [default to null]
**vcInfos** | [**List&lt;VcInfo&gt;**](VcInfo.md) |  | [default to []]
**vcContexts** | [**List&lt;VcContext&gt;**](VcContext.md) | VCのスキーマのJSONスキーマコンテキスト | [default to []]
**vcSchemaProperties** | [**List&lt;VcSchemaProperty&gt;**](VcSchemaProperty.md) | VCのスキーマの各項目における項目名と項目型のオブジェクトの配列 | [default to []]
**groups** | [**List&lt;Group&gt;**](Group.md) |  | [default to []]
**badges** | [**List&lt;Badge&gt;**](Badge.md) | VCスキーマを紐付けたバッジ | [default to []]
**file** | [**AllOfVcSchemaResponseDtoFile**](AllOfVcSchemaResponseDtoFile.md) | VCスキーマに紐付けるバッジ用の画像。&#x60;isBadgeSchema&#x60;プロパティが&#x60;true&#x60;の場合必須。 | [default to null]
**createdBy** | [**AllOfVcSchemaResponseDtoCreatedBy**](AllOfVcSchemaResponseDtoCreatedBy.md) | VCスキーマを作成したユーザーアカウント | [default to null]
**createdAt** | **String** | VCスキーマの作成日時 | [default to null]
**updatedAt** | **String** | VCスキーマの最終更新日時 | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

