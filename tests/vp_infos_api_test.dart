import 'package:swagger/api.dart';
import 'package:test/test.dart';


/// tests for VpInfosApi
void main() {
  var instance = new VpInfosApi();

  group('tests for VpInfosApi', () {
    // VP情報へのラベル追加
    //
    // リクエストパラメータのidで指定された単一のVP情報に対して、任意の管理用ラベルを追加します。
    //
    //Future<VpInfoResponseDto> vpInfosControllerAddLabel(AddLabelToVpInfoDto body, String id) async
    test('test vpInfosControllerAddLabel', () async {
      // TODO
    });

    // VP情報へのクライアントアカウント紐付け
    //
    // VP情報の所有者、関係者などの管理者としてクライアントアカウントを紐付けます。
    //
    //Future vpInfosControllerConnectUser(UpdateVcInfoDto body, String id) async
    test('test vpInfosControllerConnectUser', () async {
      // TODO
    });

    // 新規VP生成
    //
    // 新規VPを生成します。
    //
    //Future vpInfosControllerCreate(CreateVpInfoDto body) async
    test('test vpInfosControllerCreate', () async {
      // TODO
    });

    // VP情報のクライアントアカウント紐付け解除
    //
    // VP情報に紐付いたクライアントアカウントの紐付けを解除します。
    //
    //Future vpInfosControllerDisconnectUser(String id) async
    test('test vpInfosControllerDisconnectUser', () async {
      // TODO
    });

    // VP情報一覧取得
    //
    // アプリケーションが管理するVP情報を一覧として値を返します。
    //
    //Future<VpInfoResponseDto> vpInfosControllerFindAll({ double page, double limit, String label, String description }) async
    test('test vpInfosControllerFindAll', () async {
      // TODO
    });

    // VP情報詳細取得
    //
    // リクエストパラメータのidで指定された単一のVP情報の詳細情報の値を返します。
    //
    //Future<VpInfoDetailDto> vpInfosControllerFindOne(String id) async
    test('test vpInfosControllerFindOne', () async {
      // TODO
    });

    // 新規VPアップロード
    //
    // 外部で発行された既存VPをアップロードし、本アプリケーションに保存します。。
    //
    //Future<VpInfoResponseDto> vpInfosControllerUpload(Object credentialObject, String label, String description) async
    test('test vpInfosControllerUpload', () async {
      // TODO
    });

  });
}
