# swagger.model.AllOfVerificationResponseDtoCreatedBy

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | アカウントの識別子 | [default to null]
**name** | **String** | アカウントの名前 | [default to null]
**email** | **String** | アカウントのメールアドレス | [default to null]
**password** | **String** | アカウントのパスワード(8文字以上20字未満) | [default to null]
**needActivateFlow** | **bool** | (必須: {default: false}) アカウントの有効化フローが必要か否か(true: 必要 /false: 不要) | [default to null]
**status** | **String** | ユーザーのアカウントステータス | [default to null]
**role** | **String** | アカウントのロール(admin/user/clinet) | [default to null]
**createdBy** | [**Object**](Object.md) | (任意) このアカウントを作成したユーザー | [optional] [default to null]
**didInfos** | [**List&lt;DidInfo&gt;**](DidInfo.md) | (任意) アカウントに紐付けされたDID情報の配列 | [optional] [default to []]
**vcInfos** | [**List&lt;VcInfo&gt;**](VcInfo.md) | (任意) アカウントに紐付けされたVC情報の配列 | [optional] [default to []]
**vpInfos** | [**List&lt;VpInfo&gt;**](VpInfo.md) | (任意) アカウントに紐付けされたVP情報の配列 | [optional] [default to []]
**groups** | [**List&lt;Group&gt;**](Group.md) | (任意) アカウントに紐付けされたグループの配列 | [optional] [default to []]
**userTokens** | [**List&lt;UserToken&gt;**](UserToken.md) | (任意) ユーザーアカウントがアップロードしたファイルの配列。 | [default to []]
**createdUsers** | [**List&lt;User&gt;**](User.md) | (任意) このユーザーによって作成されたアカウントの配列 | [optional] [default to []]
**createdVcInfos** | [**List&lt;VcInfo&gt;**](VcInfo.md) | (任意) アカウントに紐付けされたVC情報の配列 | [optional] [default to []]
**createdVpInfos** | [**List&lt;VpInfo&gt;**](VpInfo.md) | (任意) アカウントに紐付けされたVP情報の配列 | [optional] [default to []]
**createdGroups** | [**List&lt;Group&gt;**](Group.md) | (任意) アカウントに作成したグループの配列 | [optional] [default to []]
**createdDidInfos** | [**List&lt;DidInfo&gt;**](DidInfo.md) | (任意) アカウントが作成したDID情報の配列 | [optional] [default to []]
**createdVcSchemas** | [**List&lt;VcSchema&gt;**](VcSchema.md) | (任意) ユーザーアカウントが作成したVCスキーマの配列。 | [default to []]
**createdVerifications** | [**List&lt;Verification&gt;**](Verification.md) | (任意) ユーザーアカウントが実行した検証結果の配列。 | [default to []]
**createdMails** | [**List&lt;Mail&gt;**](Mail.md) | (任意) Admin権限アカウントが送信したメールの配列(Adminロール以外の場合、関係のないカラム) | [optional] [default to []]
**createdFiles** | [**List&lt;MultipartFile&gt;**](MultipartFile.md) | (任意) ユーザーアカウントがアップロードしたファイルの配列。 | [default to []]
**createdAt** | **String** | ユーザーアカウントの作成日時 | [default to null]
**updatedAt** | **String** | ユーザーアカウントの更新日時 | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

