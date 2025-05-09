# swagger.model.Mail

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | (必須) 送信済みメールの識別子 | [default to null]
**title** | **String** | (必須) 送信済みメールの件名 | [default to null]
**content** | **String** | (必須) 送信済みメールの内容 | [default to null]
**forEveryUser** | **bool** | (必須) 全てのuser権限アカウントに対して送信するか。(true: 全てのuser権限アカウントに送信, false: 全てのuser権限アカウントに送信しない) | [default to null]
**forEveryClient** | **bool** | (必須) 全てのclient権限アカウントに対して送信するか。(true: 全てのclient権限アカウントに送信, false: 全てのclient権限アカウントに送信しない) | [default to null]
**users** | [**List&lt;User&gt;**](User.md) | (任意) メールの送信先となるユーザーアカウントの配列 | [optional] [default to []]
**groups** | [**List&lt;Group&gt;**](Group.md) | (任意) メールの送信先となるグループの配列 | [optional] [default to []]
**createdBy** | [**List&lt;User&gt;**](User.md) | (必須) メール送信操作を行ったAdmin権限アカウント | [optional] [default to []]
**createdAt** | **String** | (必須) メールの送信日時 | [default to null]
**updatedAt** | **String** | (必須) メールの送信日時 | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

