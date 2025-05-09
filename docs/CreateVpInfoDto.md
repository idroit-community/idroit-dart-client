# swagger.model.CreateVpInfoDto

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**vcInfoIds** | **List&lt;String&gt;** | (必須) VPを生成する元となるVC情報の識別子の配列 | [default to []]
**didInfoId** | **String** | (必須) VP生成時の署名に用いるDID情報の識別子 | [default to null]
**label** | **String** | (任意) VPの識別や整理などの管理するにあったてメタデータとして任意で設定可能な単語のフレーズ。(例: vc-for-project1) | [optional] [default to null]
**description** | **String** | (任意) VPの生成目的や用途などを任意で設定可能な説明文 | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

