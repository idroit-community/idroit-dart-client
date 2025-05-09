import 'package:swagger/api.dart';
import 'package:test/test.dart';


/// tests for AuthApi
void main() {
  var instance = new AuthApi();

  group('tests for AuthApi', () {
    // ログイン済みのアカウント情報取得
    //
    // ログイン済みの管理者アカウントの情報を返却します。
    //
    //Future<GetProfileResponseDto> authControllerGetProfile() async
    test('test authControllerGetProfile', () async {
      // TODO
    });

    // アカウントログインを実施
    //
    // アカウントログインを実行し、認証結果に応じてJSON Web Tokenの値を返します。
    //
    //Future<SignInResponseDto> authControllerLogin(SignInDto body) async
    test('test authControllerLogin', () async {
      // TODO
    });

  });
}
