import 'package:swagger/api.dart';
import 'package:test/test.dart';


/// tests for MailsApi
void main() {
  var instance = new MailsApi();

  group('tests for MailsApi', () {
    // 送信済みメール一覧取得
    //
    // 送信済みメールを一覧として値を返します。
    //
    //Future<MailsResponseDto> mailsControllerFindAll({ double page, double limit }) async
    test('test mailsControllerFindAll', () async {
      // TODO
    });

    // 送信済みメール詳細取得
    //
    // リクエストパラメータのidで指定された単一の送信済みメールの詳細情報の値を返します。
    //
    //Future<Mail> mailsControllerFindOne(String id) async
    test('test mailsControllerFindOne', () async {
      // TODO
    });

    // 新規単一メール送信
    //
    // 新規単一メールを作成し、送信します。
    //
    //Future mailsControllerSend(SendMailDto body) async
    test('test mailsControllerSend', () async {
      // TODO
    });

    // 新規複数メールバッチ送信
    //
    // 新規メールを複数作成し、送信します。
    //
    //Future mailsControllerSendBatch(SendMailBatchDto body) async
    test('test mailsControllerSendBatch', () async {
      // TODO
    });

  });
}
