import 'package:swagger/api.dart';
import 'package:test/test.dart';


/// tests for VcInfosApi
void main() {
  var instance = new VcInfosApi();

  group('tests for VcInfosApi', () {
    // VC情報へのラベル追加
    //
    // リクエストパラメータのidで指定された単一のVC情報に対して、任意の管理用ラベルを追加します。
    //
    //Future<VcInfoResponseDto> vcInfosControllerAddLabel(AddLabelToVcInfoDto body, String id) async
    test('test vcInfosControllerAddLabel', () async {
      // TODO
    });

    // VC情報へのクライアントアカウント紐付け
    //
    // VC情報の所有者、関係者などの管理者としてクライアントアカウントを紐付けます。
    //
    //Future vcInfosControllerConnectUser(UpdateVcInfoDto body, String id) async
    test('test vcInfosControllerConnectUser', () async {
      // TODO
    });

    // 新規VC発行
    //
    // 新規VCを発行します。
    //
    //Future<VcInfoResponseDto> vcInfosControllerCreate(CreateVcInfoDto body) async
    test('test vcInfosControllerCreate', () async {
      // TODO
    });

    // VC情報のクライアントアカウント紐付け解除
    //
    // VC情報に紐付いたクライアントアカウントの紐付けを解除します。
    //
    //Future vcInfosControllerDisconnectUser(String id) async
    test('test vcInfosControllerDisconnectUser', () async {
      // TODO
    });

    // VC情報一覧取得
    //
    // アプリケーションが管理するVC情報を一覧として値を返します。
    //
    //Future<VcInfosResponseDto> vcInfosControllerFindAll({ double page, double limit, String label, String description }) async
    test('test vcInfosControllerFindAll', () async {
      // TODO
    });

    // VC情報詳細取得
    //
    // リクエストパラメータのidで指定された単一のVC情報の詳細情報の値を返します。
    //
    //Future<VcInfoResponseDto> vcInfosControllerFindOne(String id) async
    test('test vcInfosControllerFindOne', () async {
      // TODO
    });

    // 新規VP情報生成
    //
    // リクエストパラメータのidで指定されたVC情報から新規VPを発行します。
    //
    //Future<VcInfoResponseDto> vcInfosControllerGenerateVp(GenerateVpDto body, String id) async
    test('test vcInfosControllerGenerateVp', () async {
      // TODO
    });

    // 新規VC発行(スキーマなし)
    //
    // VCスキーマを指定せず直接新規VCを発行します。
    //
    //Future<VcInfoResponseDto> vcInfosControllerIssue(IssueVcInfoDto body) async
    test('test vcInfosControllerIssue', () async {
      // TODO
    });

    // 新規VCアップロード
    //
    // 外部で発行された既存VCをアップロードし、本アプリケーションに保存します。。
    //
    //Future<VcInfoResponseDto> vcInfosControllerUpload(Object credentialObject, String label, String description) async
    test('test vcInfosControllerUpload', () async {
      // TODO
    });

  });
}
