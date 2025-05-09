import 'package:swagger/api.dart';
import 'package:test/test.dart';


/// tests for GroupsApi
void main() {
  var instance = new GroupsApi();

  group('tests for GroupsApi', () {
    // グループへのDID情報紐付け
    //
    // グループにDID情報を紐付けます。
    //
    //Future<GroupResponseDto> groupsControllerConnectDidInfos(ConnectDidInfosDto body, String id) async
    test('test groupsControllerConnectDidInfos', () async {
      // TODO
    });

    // グループへのユーザーアカウント紐付け
    //
    // グループの所有者、関係者などの管理者としてユーザーアカウントを紐付けます。
    //
    //Future<GroupResponseDto> groupsControllerConnectUsers(ConnectUsersDto body, String id) async
    test('test groupsControllerConnectUsers', () async {
      // TODO
    });

    // グループへのVC情報紐付け
    //
    // グループにVC情報を紐付けます。
    //
    //Future<GroupResponseDto> groupsControllerConnectVcInfos(ConnectVcInfosDto body, String id) async
    test('test groupsControllerConnectVcInfos', () async {
      // TODO
    });

    // グループへのVCスキーマ紐付け
    //
    // グループにVCスキーマを紐付けます。
    //
    //Future<GroupResponseDto> groupsControllerConnectVcSchema(ConnectVcSchemasDto body, String id) async
    test('test groupsControllerConnectVcSchema', () async {
      // TODO
    });

    // グループへのVP情報紐付け
    //
    // グループにVP情報を紐付けます。
    //
    //Future<GroupResponseDto> groupsControllerConnectVpInfos(ConnectVpInfosDto body, String id) async
    test('test groupsControllerConnectVpInfos', () async {
      // TODO
    });

    // グループ作成
    //
    // グループ作成に成功しました。
    //
    //Future<GroupResponseDto> groupsControllerCreate(CreateGroupDto body) async
    test('test groupsControllerCreate', () async {
      // TODO
    });

    // グループのDID情報紐付け解除
    //
    // グループに紐付いたDID情報の紐付けを解除します。
    //
    //Future<GroupResponseDto> groupsControllerDisconnectDidInfo(String id, String didInfoId) async
    test('test groupsControllerDisconnectDidInfo', () async {
      // TODO
    });

    // グループのユーザーアカウント紐付け解除
    //
    // グループに紐付いたユーザーアカウントの紐付けを解除します。
    //
    //Future<GroupResponseDto> groupsControllerDisconnectUser(String id, String userId) async
    test('test groupsControllerDisconnectUser', () async {
      // TODO
    });

    // グループのVC情報紐付け解除
    //
    // グループに紐付いたVC情報の紐付けを解除します。
    //
    //Future<GroupResponseDto> groupsControllerDisconnectVcInfo(String id, String vcInfoId) async
    test('test groupsControllerDisconnectVcInfo', () async {
      // TODO
    });

    // グループのVCスキーマ紐付け解除
    //
    // グループに紐付いたVCスキーマの紐付けを解除します。
    //
    //Future<GroupResponseDto> groupsControllerDisconnectVcSchema(String id, String vcSchemaId) async
    test('test groupsControllerDisconnectVcSchema', () async {
      // TODO
    });

    // グループのVP情報紐付け解除
    //
    // グループに紐付いたVP情報の紐付けを解除します。
    //
    //Future<GroupResponseDto> groupsControllerDisconnectVpInfo(String id, String vpInfoId) async
    test('test groupsControllerDisconnectVpInfo', () async {
      // TODO
    });

    // グループ一覧取得
    //
    // グループを一覧として値を返します。
    //
    //Future<GroupsResponseDto> groupsControllerFindAll({ double page, double limit, String name, String status }) async
    test('test groupsControllerFindAll', () async {
      // TODO
    });

    // グループ詳細取得
    //
    // リクエストパラメータのidで指定された単一の管理者アカウントの詳細情報の値を返します。
    //
    //Future<GroupResponseDto> groupsControllerFindOne(String id) async
    test('test groupsControllerFindOne', () async {
      // TODO
    });

    // グループ停止
    //
    // リクエストパラメータのidで指定された単一のグループを停止します。
    //
    //Future groupsControllerRemove(String id) async
    test('test groupsControllerRemove', () async {
      // TODO
    });

    // グループ更新
    //
    // リクエストパラメータのidで指定された単一のグループ情報を更新します。
    //
    //Future<GroupResponseDto> groupsControllerUpdate(String id) async
    test('test groupsControllerUpdate', () async {
      // TODO
    });

  });
}
