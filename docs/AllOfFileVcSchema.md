# swagger.model.AllOfFileVcSchema

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | (必須) VCスキーマの識別子 | [default to null]
**title** | **String** | (必須) VCスキーマのタイトル | [default to null]
**version** | **String** | (必須) VCスキーマのバージョン | [default to null]
**description** | **String** | (任意) VCスキーマの説明文 | [default to null]
**isBadgeSchema** | **String** | (必須) VCスキーマがバッジのスキーマか否か | [optional] [default to &quot;false&quot;]
**vcInfos** | [**List&lt;VcInfo&gt;**](VcInfo.md) | (任意) このVCスキーマを用いて生成したVC情報の配列。 | [optional] [default to []]
**vcContexts** | [**List&lt;VcContext&gt;**](VcContext.md) | (任意) VCスキーマに設定したcontext項目の配列 | [optional] [default to []]
**vcSchemaProperties** | [**List&lt;VcSchemaProperty&gt;**](VcSchemaProperty.md) | (必須) VCスキーマの項目情報の配列 | [optional] [default to []]
**groups** | [**List&lt;Group&gt;**](Group.md) | (任意) VCスキーマを紐付けたグループの配列 | [optional] [default to []]
**badges** | [**List&lt;Badge&gt;**](Badge.md) | (任意) VCスキーマを紐付けたバッジ | [optional] [default to []]
**file** | [**Object**](Object.md) | (任意) VCスキーマに紐付けるバッジ用の画像。&#x60;isBadgeSchema&#x60;プロパティが&#x60;true&#x60;の場合必須。 | [optional] [default to null]
**createdBy** | [**Object**](Object.md) | (必須) VCスキーマを作成したユーザーアカウント。 | [default to null]
**createdAt** | **String** | (必須) VCスキーマの作成日時 | [default to null]
**updatedAt** | **String** | (必須) VCスキーマの更新日時 | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

