import 'package:swagger/api.dart';
import 'package:test/test.dart';


/// tests for FilesApi
void main() {
  var instance = new FilesApi();

  group('tests for FilesApi', () {
    // ファイルダウンロード
    //
    // リクエストパラメータのidで指定された単一のファイルのバイナリデータを返します。
    //
    //Future<String> filesControllerDownload(String id) async
    test('test filesControllerDownload', () async {
      // TODO
    });

    // CSVファイル実行
    //
    // (非推奨) ユーザー、クライアント情報を記載したCSVファイルを実行し、新規アカウントを作成します。
    //
    //Future filesControllerExecuteCSV(CreateDidDto body, String id) async
    test('test filesControllerExecuteCSV', () async {
      // TODO
    });

    // ファイル一覧取得
    //
    // ファイルを一覧として値を返します。
    //
    //Future<FilesResponseDto> filesControllerFindAll({ double page, double limit, String filename, String originalname, bool executed, String type, double status }) async
    test('test filesControllerFindAll', () async {
      // TODO
    });

    // ファイル詳細取得
    //
    // リクエストパラメータのidで指定された単一のファイルの詳細情報の値を返します。
    //
    //Future<FileResponseDto> filesControllerFindOne(String id) async
    test('test filesControllerFindOne', () async {
      // TODO
    });

    // ファイル削除
    //
    // リクエストパラメータのidで指定された単一のファイルを削除します。
    //
    //Future filesControllerRemove(String id) async
    test('test filesControllerRemove', () async {
      // TODO
    });

    // ファイルアップロード
    //
    // 新規ファイルアップロードを作成します。
    //
    //Future<FileResponseDto> filesControllerUploadFile(String file) async
    test('test filesControllerUploadFile', () async {
      // TODO
    });

  });
}
