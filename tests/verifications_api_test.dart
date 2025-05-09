import 'package:swagger/api.dart';
import 'package:test/test.dart';


/// tests for VerificationsApi
void main() {
  var instance = new VerificationsApi();

  group('tests for VerificationsApi', () {
    // VC/VP検証
    //
    // VC/VPの検証を実行します。
    //
    //Future<VerificationResponseDto> verificationsControllerCreate(VerificationDto body) async
    test('test verificationsControllerCreate', () async {
      // TODO
    });

    // VC/VP検証結果一覧取得
    //
    // アプリケーションが管理するVC/VP検証結果を一覧として値を返します。
    //
    //Future<VerificationsResponseDto> verificationsControllerFindAll({ double page, double limit, String label, bool result }) async
    test('test verificationsControllerFindAll', () async {
      // TODO
    });

    // VC/VP検証結果詳細取得
    //
    // リクエストパラメータのidで指定された単一のVC/VP検証結果の詳細情報の値を返します。
    //
    //Future<VerificationResponseDto> verificationsControllerFindOne(String id) async
    test('test verificationsControllerFindOne', () async {
      // TODO
    });

  });
}
