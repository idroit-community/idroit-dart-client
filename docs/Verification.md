# swagger.model.Verification

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | (必須) 検証結果の識別子 | [default to null]
**label** | **String** | (必須) 検証結果の識別や整理などの管理するにあったてメタデータとして任意で設定可能な単語のフレーズ。(例: verify-for-check) | [default to null]
**result** | **bool** | (必須) VC/VPの検証結果(true: 検証に成功, false: 検証に失敗) | [default to null]
**createdBy** | [**AllOfVerificationCreatedBy**](AllOfVerificationCreatedBy.md) | (任意) 検証結果を作成したユーザーアカウント | [default to null]
**vcInfo** | [**AllOfVerificationVcInfo**](AllOfVerificationVcInfo.md) | (任意) 検証を実行したVC情報の識別子 | [optional] [default to null]
**vpInfo** | [**AllOfVerificationVpInfo**](AllOfVerificationVpInfo.md) | (任意) 検証を実行したVP情報の識別子 | [optional] [default to null]
**createdAt** | **String** | (必須) 検証実行時の日時 | [default to null]
**updatedAt** | **String** | (必須) 検証結果の最終更新日 | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

