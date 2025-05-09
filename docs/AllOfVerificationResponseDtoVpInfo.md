# swagger.model.AllOfVerificationResponseDtoVpInfo

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | (必須) VP情報の識別子 | [default to null]
**label** | **String** | (任意) VPの識別や整理などの管理するにあったてメタデータとして任意で設定可能な単語のフレーズ | [optional] [default to null]
**hash** | **String** | (必須) VPのハッシュ値。VPの保管における識別子として用いる。 | [optional] [default to null]
**description** | **String** | (任意) VCの発行目的や用途など任意で設定可能な説明文。 | [optional] [default to null]
**raw** | **String** | (必須) VPのバイナリデータ | [default to null]
**createdBy** | [**Object**](Object.md) | (任意) VP情報を生成したユーザーアカウント | [default to null]
**user** | [**Object**](Object.md) | (任意) VP情報と紐付いたアカウント | [optional] [default to null]
**vcInfos** | [**List&lt;VcInfo&gt;**](VcInfo.md) | (任意) VPを生成する元となるVC情報 | [optional] [default to []]
**groups** | [**List&lt;Group&gt;**](Group.md) | (任意) VP情報に紐づいたグループの配列 | [optional] [default to []]
**didInfo** | [**Object**](Object.md) | (任意) VP生成時の署名に用いるDID情報の識別子 | [optional] [default to null]
**verifications** | [**List&lt;Verification&gt;**](Verification.md) | (任意) VPの検証結果 | [optional] [default to []]
**createdAt** | **String** | (必須) VP情報の作成日時 | [default to null]
**updatedAt** | **String** | (必須) VP情報の更新日時 | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

