# swagger.model.CreateBadgeDto

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**label** | **String** | (任意) バッジのタイトル | [optional] [default to null]
**description** | **String** | (任意) グループの作成目的や用途など任意で設定可能な説明文 | [optional] [default to null]
**issuer** | **String** | (必須) VCの発行者の識別子として用いる文字列の値。現在はDIDのみがサポートされていますが、今後のアップデートでDID以外の文字列をサポートする予定です。 | [default to null]
**credentialSubject** | [**Object**](Object.md) | (必須) VCの主張内容(クレーム)となる値のオブジェクト型の値 | [default to null]
**vcSchemaId** | **String** | (必須) 新規発行するVCの元となるVCスキーマの識別子 | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

