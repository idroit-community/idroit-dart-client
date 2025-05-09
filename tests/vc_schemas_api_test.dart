import 'package:swagger/api.dart';
import 'package:test/test.dart';


/// tests for VcSchemasApi
void main() {
  var instance = new VcSchemasApi();

  group('tests for VcSchemasApi', () {
    // 新規VCスキーマ作成
    //
    // 新規VCスキーマを作成します。
    //
    //Future<VcSchemaResponseDto> vcSchemasControllerCreate(CreateVcSchemaDto body) async
    test('test vcSchemasControllerCreate', () async {
      // TODO
    });

    // VCスキーマ一覧取得
    //
    // VCスキーマを一覧として値を返します。
    //
    //Future<VcSchemasResponseDto> vcSchemasControllerFindAll({ double page, double limit, String title, String version, String description, bool isBadgeSchema }) async
    test('test vcSchemasControllerFindAll', () async {
      // TODO
    });

    // VCスキーマ情報詳細取得
    //
    // リクエストパラメータのidで指定された単一のVCスキーマの詳細情報の値を返します。
    //
    //Future<VcSchemaResponseDto> vcSchemasControllerFindOne(String id) async
    test('test vcSchemasControllerFindOne', () async {
      // TODO
    });

    // VCスキーマへのグループ紐付け
    //
    // VCスキーマに関連するグループを紐付けます。
    //
    //Future<VcSchemaResponseDto> vcSchemasControllerUpdate(UpdateVcSchemaDto body, String id) async
    test('test vcSchemasControllerUpdate', () async {
      // TODO
    });

  });
}
