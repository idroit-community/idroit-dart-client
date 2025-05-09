# swagger.model.UserResponseDto

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ユーザーアカウントの識別子 | [default to null]
**name** | **String** | ユーザーアカウントの名前 | [default to null]
**email** | **String** | ユーザーアカウントのメールアドレス | [default to null]
**needActivateFlow** | **bool** | ユーザーアクティベーション(true: アクティブ /false: 停止中) | [default to null]
**status** | **String** | ユーザーのアカウントステータス(\&quot;inactive\&quot;: アクティブ未完了, \&quot;acrivating\&quot;: アクティブ作業途中, \&quot;active\&quot;: アクティブ中, \&quot;deactive\&quot;: 論理削除済) | [default to null]
**role** | **String** | ユーザーのアカウントロール(\&quot;admin\&quot;, \&quot;user\&quot;, \&quot;client\&quot;) | [default to null]
**userTokens** | [**List&lt;UserToken&gt;**](UserToken.md) | (任意) ユーザーアカウントがアップロードしたファイルの配列。 | [default to []]
**createdBy** | [**AllOfUserResponseDtoCreatedBy**](AllOfUserResponseDtoCreatedBy.md) | ユーザーアカウントを作成したユーザーアカウント | [default to null]
**didInfos** | [**List&lt;DidInfo&gt;**](DidInfo.md) | ユーザーアカウントに紐付けられたDID情報の配列 | [optional] [default to []]
**vcInfos** | [**List&lt;VcInfo&gt;**](VcInfo.md) | ユーザーアカウントに紐付けられたVC情報の配列 | [optional] [default to []]
**vpInfos** | [**List&lt;VpInfo&gt;**](VpInfo.md) | ユーザーアカウントに紐付けられたVP情報の配列 | [optional] [default to []]
**groups** | [**List&lt;Group&gt;**](Group.md) | ユーザーアカウントが作成したグループの配列 | [optional] [default to []]
**createdUsers** | [**List&lt;User&gt;**](User.md) | ユーザーアカウントに紐付けされたVP情報の配列 | [optional] [default to []]
**createdVcInfos** | [**List&lt;VcInfo&gt;**](VcInfo.md) | ユーザーが作成したVC情報の配列 | [optional] [default to []]
**createdVpInfos** | [**List&lt;VpInfo&gt;**](VpInfo.md) | ユーザーが作成したVP情報の配列 | [optional] [default to []]
**createdGroups** | [**List&lt;Group&gt;**](Group.md) | ユーザーアカウントが作成したグループの配列 | [optional] [default to []]
**createdDidInfos** | [**List&lt;DidInfo&gt;**](DidInfo.md) | ユーザーが作成したDID情報の配列 | [optional] [default to []]
**createdVcSchemas** | [**List&lt;VcSchema&gt;**](VcSchema.md) | ユーザーが作成したVCスキーマの配列 | [optional] [default to []]
**createdVerifications** | [**List&lt;Verification&gt;**](Verification.md) | ユーザーアカウントが実行した検証結果の配列 | [optional] [default to []]
**createdMails** | [**List&lt;Mail&gt;**](Mail.md) | Admin権限アカウントが送信したメールの配列 | [optional] [default to []]
**createdFiles** | [**List&lt;MultipartFile&gt;**](MultipartFile.md) | ユーザーアカウントに紐付けされたファイルの配列 | [optional] [default to []]
**createdAt** | **String** | ユーザーアカウントの作成日時 | [default to null]
**updatedAt** | **String** | ユーザーアカウントの更新日時 | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

