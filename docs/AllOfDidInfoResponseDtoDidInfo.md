# swagger.model.AllOfDidInfoResponseDtoDidInfo

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | (必須) DID情報の識別子 | [default to null]
**manageUuid** | **String** | (必須) DID情報の管理に用いるユニークな識別子 | [default to null]
**did** | **String** | (必須) DID | [default to null]
**method** | **String** | (必須) DIDメソッド | [default to null]
**label** | **String** | (任意) DIDの識別や整理などの管理するにあったてメタデータとして任意で設定可能な単語のフレーズ。(例: did-for-project1) | [default to null]
**domainName** | **String** | (任意) did:webメソッドでDIDを生成する際に必要なドメイン名。DIDによって指定されたドメインがドメインネームシステム(DNS)を通じて解決されるときのホスト名。did:webメソッド以外では必要のないカラムである。 | [default to null]
**existPrivateKey** | **bool** | (必須) DID情報に紐付いた秘密鍵を本アプリケーションで保管しているか否か | [default to null]
**description** | **String** | (任意) DID情報の生成目的や用途など任意で設定可能な説明文 | [default to null]
**user** | [**Object**](Object.md) | (任意) DID情報に紐付いたアカウントの配列 | [optional] [default to null]
**createdBy** | [**Object**](Object.md) | (任意) DIDを生成したユーザーアカウント | [default to null]
**vpInfos** | [**Object**](Object.md) | (任意) 生成時に署名にDIDを用いたVP情報 | [optional] [default to null]
**groups** | [**List&lt;Group&gt;**](Group.md) | (任意) DID情報に紐づいたグループの配列 | [optional] [default to []]
**createdAt** | **String** | (必須) DID情報の作成日時 | [default to null]
**updatedAt** | **String** | (必須) DID情報の最終更新 | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

