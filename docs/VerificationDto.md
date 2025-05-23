# swagger.model.VerificationDto

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**label** | **String** | (必須) 検証結果の識別や整理などの管理するにあったてメタデータとして任意で設定可能な単語のフレーズ。(例: verify-for-check) | [optional] [default to null]
**vcInfoId** | **String** | (任意) 検証を実行するVC情報の識別子。VC情報の識別子を指定して検証を実行する場合は必須。 | [optional] [default to null]
**vpInfoId** | **String** | (任意) 検証を実行するVP情報の識別子。VP情報の識別子を指定して検証を実行する場合は必須。 | [optional] [default to null]
**vcObject** | [**Object**](Object.md) | (任意) 検証を実行するVCのJSONテキストデータ。VCのJSONテキストデータを入力して検証を実行する場合は必須。 | [optional] [default to null]
**vpObject** | [**Object**](Object.md) | (任意) 検証を実行するVPのJSONテキストデータ。VPのJSONテキストデータを入力して検証を実行する場合は必須。 | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

