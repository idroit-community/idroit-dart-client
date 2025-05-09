import 'package:swagger/api.dart';
import 'package:test/test.dart';


/// tests for DidInfosApi
void main() {
  var instance = new DidInfosApi();

  group('tests for DidInfosApi', () {
    // DID情報へのラベル追加
    //
    // リクエストパラメータのidで指定された単一のDID情報に対して、任意の管理用ラベルを追加します。
    //
    //Future<DidInfoResponseDto> didInfosControllerAddLabel(AddLabelToDidInfoDto body, String id) async
    test('test didInfosControllerAddLabel', () async {
      // TODO
    });

    // DID情報へのクライアントアカウント紐付け
    //
    // DID情報の所有者、関係者などの管理者としてクライアントアカウントを紐付けます。
    //
    //Future<DidInfoResponseDto> didInfosControllerConnectUser(String id, String userId) async
    test('test didInfosControllerConnectUser', () async {
      // TODO
    });

    // 新規DID生成
    //
    // 新規DIDを生成します。
    //
    //Future didInfosControllerCreate(CreateDidDto body) async
    test('test didInfosControllerCreate', () async {
      // TODO
    });

    // DID情報のクライアントアカウント紐付け解除
    //
    // DID情報に紐付いたクライアントアカウントの紐付けを解除します。
    //
    //Future didInfosControllerDisconnectUser(String id) async
    test('test didInfosControllerDisconnectUser', () async {
      // TODO
    });

    // DID情報一覧取得
    //
    // アプリケーションが管理するDID情報を一覧として値を返します。
    //
    //Future<DidInfosResponseDto> didInfosControllerFindAll({ double page, double limit, String did, String manageUuid, String label, String method, bool existPrivateKey, String description, String domainName }) async
    test('test didInfosControllerFindAll', () async {
      // TODO
    });

    // DID情報詳細取得
    //
    // リクエストパラメータのidで指定された単一のDID情報の詳細情報の値を返します。
    //
    //Future<DidInfoResponseDto> didInfosControllerFindOne(String id) async
    test('test didInfosControllerFindOne', () async {
      // TODO
    });

    // 既存DID登録
    //
    // 外部で生成されたDIDを本アプリケーションに取り込みます。
    //
    //Future didInfosControllerRegister(RegisterDidDto body) async
    test('test didInfosControllerRegister', () async {
      // TODO
    });

    // DID情報削除
    //
    // リクエストパラメータのidで指定された単一のDID情報を削除します。
    //
    //Future didInfosControllerRemove(String id) async
    test('test didInfosControllerRemove', () async {
      // TODO
    });

    // DID解決
    //
    // DIDを解決した結果であるDID Documentの値を返します。このAPIでは保存などの処理を行いません。生成済みのDIDを保存したい場合、既存DID登録API(/did-infos/register)にリクエストを送信してください。
    //
    //Future<ResolveDidResponseDto> didInfosControllerResolve(ResolveDidDto body) async
    test('test didInfosControllerResolve', () async {
      // TODO
    });

  });
}
