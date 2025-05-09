import 'package:swagger/api.dart';
import 'package:test/test.dart';


/// tests for BadgesApi
void main() {
  var instance = new BadgesApi();

  group('tests for BadgesApi', () {
    // Badgeへのラベル追加
    //
    // リクエストパラメータのidで指定された単一のBadgeに対して、任意の管理用ラベルを追加します。
    //
    //Future<BadgeResponseDto> badgesControllerAddLabel(AddLabelToBadgeDto body, String id) async
    test('test badgesControllerAddLabel', () async {
      // TODO
    });

    // 新規バッジ発行
    //
    // 新規バッジを発行します。
    //
    //Future<BadgeResponseDto> badgesControllerCreate(CreateBadgeDto body) async
    test('test badgesControllerCreate', () async {
      // TODO
    });

    // バッジダウンロード
    //
    // リクエストパラメータのidで指定された単一のバッジ画像のバイナリデータを返します。
    //
    //Future<String> badgesControllerDownload(String id, String vpInfoId) async
    test('test badgesControllerDownload', () async {
      // TODO
    });

    // バッジファイル検証
    //
    //Future<VerifiyBadgeFileReponseDto> badgesControllerFileVerify(String file) async
    test('test badgesControllerFileVerify', () async {
      // TODO
    });

    // バッジ一覧取得
    //
    // アプリケーションが管理するバッジ情報を一覧として値を返します。
    //
    //Future<BadgesResponseDto> badgesControllerFindAll({ double page, double limit, String label, String filename, String description, double status }) async
    test('test badgesControllerFindAll', () async {
      // TODO
    });

    // バッジ詳細取得
    //
    // リクエストパラメータのidで指定された単一のバッジ情報の詳細情報の値を返します。
    //
    //Future<BadgeResponseDto> badgesControllerFindOne(String id) async
    test('test badgesControllerFindOne', () async {
      // TODO
    });

    // バッジ検証
    //
    // バッジのVC/VPの検証を実行します。
    //
    //Future<VerifiyBadgeReponseDto> badgesControllerVerify(VerifyBadgeDto body, String id) async
    test('test badgesControllerVerify', () async {
      // TODO
    });

  });
}
