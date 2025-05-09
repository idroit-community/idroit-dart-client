# swagger.model.AllOfVerificationResponseDtoVcInfo

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | (必須) VC情報の識別子 | [default to null]
**label** | **String** | (任意) VCの識別や整理などの管理するにあったてメタデータとして任意で設定可能な単語のフレーズ。(例: vc-for-project1) | [default to null]
**hash** | **String** | (必須) VCのハッシュ値。VCの保管における識別子として用いる。 | [default to null]
**description** | **String** | (任意) VCの発行目的や用途など任意で設定可能な説明文。 | [default to null]
**createdBy** | [**Object**](Object.md) | (任意) VC情報を生成したユーザーアカウント | [default to null]
**vcSchema** | [**Object**](Object.md) | (任意) 発行したVCの元となるVCスキーマ | [optional] [default to null]
**user** | [**Object**](Object.md) | (任意) VC情報と紐付いたアカウント | [optional] [default to null]
**vpInfos** | [**List&lt;VpInfo&gt;**](VpInfo.md) | (任意) このVCを元に生成したVP情報の配列 | [optional] [default to []]
**groups** | [**List&lt;Group&gt;**](Group.md) | (任意) VC情報に紐づいたグループの配列 | [optional] [default to []]
**badge** | [**Object**](Object.md) | (任意) VC情報と紐付いたバッジ | [optional] [default to null]
**verifications** | [**List&lt;Verification&gt;**](Verification.md) | (任意) このVCの検証結果の配列。 | [optional] [default to []]
**createdAt** | **String** | (必須) VC情報の作成日時 | [default to null]
**updatedAt** | **String** | (必須) VC情報の更新日時 | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

