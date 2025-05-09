import 'package:swagger/api.dart';
import 'package:test/test.dart';


/// tests for UsersApi
void main() {
  var instance = new UsersApi();

  group('tests for UsersApi', () {
    // ユーザーアカウント作成
    //
    // 新規ユーザーアカウントを作成します。
    //
    //Future<UserResponseDto> usersControllerCreate(CreateUserDto body) async
    test('test usersControllerCreate', () async {
      // TODO
    });

    // アカウントへの鍵のメール送信
    //
    // クライアントアカウントに紐付いたDIDの鍵情報をメールで送信し、共有します。
    //
    //Future usersControllerExportKey(String id, String keyId) async
    test('test usersControllerExportKey', () async {
      // TODO
    });

    // ユーザーアカウント一覧取得
    //
    // ユーザーアカウントを一覧として値を返します。
    //
    //Future<UsersResponseDto> usersControllerFindAll({ double page, double limit, String name, String email, String status, String role, bool needActivateFlow }) async
    test('test usersControllerFindAll', () async {
      // TODO
    });

    // ユーザーアカウント詳細取得
    //
    // リクエストパラメータのidで指定された単一の管理者アカウントの詳細情報の値を返します。
    //
    //Future<UserResponseDto> usersControllerFindOne(String id) async
    test('test usersControllerFindOne', () async {
      // TODO
    });

    // ユーザーアカウントへのアカウント有効化メール送信
    //
    //Future usersControllerInvite(String id) async
    test('test usersControllerInvite', () async {
      // TODO
    });

    // Get the count of clients
    //
    //Future usersControllerRegisterUserDid(GenerateDidDto body, String id) async
    test('test usersControllerRegisterUserDid', () async {
      // TODO
    });

    // ユーザーアカウントへのアカウント有効化、登録フロー
    //
    //Future usersControllerRegistration(RegistrationProcessDto body, String token) async
    test('test usersControllerRegistration', () async {
      // TODO
    });

    // ユーザーアカウント停止
    //
    // リクエストパラメータのidで指定された単一のユーザーアカウントを停止します。
    //
    //Future usersControllerRemove(String id) async
    test('test usersControllerRemove', () async {
      // TODO
    });

    // アカウントへのDIDのメール送信
    //
    // アカウントに紐付いたDIDをメールで送信し、共有します。
    //
    //Future usersControllerSendDid(String id, String didInfoId) async
    test('test usersControllerSendDid', () async {
      // TODO
    });

    // アカウントへのDIDのメール送信
    //
    // アカウントに紐付いたDIDをメールで送信し、共有します。
    //
    //Future usersControllerSendKey(String id, String didInfoId) async
    test('test usersControllerSendKey', () async {
      // TODO
    });

    // アカウントへのVCのメール送信
    //
    // アカウントに紐付いたVCをメールで送信し、共有します。
    //
    //Future usersControllerSendVc(String id, String vcInfoId) async
    test('test usersControllerSendVc', () async {
      // TODO
    });

    // ユーザーアカウント更新
    //
    // リクエストパラメータのidで指定された単一のユーザーアカウント情報を更新します。
    //
    //Future<UserResponseDto> usersControllerUpdate(CreateUserDto body, String id) async
    test('test usersControllerUpdate', () async {
      // TODO
    });

  });
}
