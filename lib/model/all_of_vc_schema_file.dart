part of swagger.api;

class AllOfVcSchemaFile {
  /* (必須) ファイルの識別子 */
  String id = null;
/* (任意) システム内で管理される際にシステムによって名付けられるユニークなファイル名 */
  String filename = null;
/* (必須) システムへアップロード時の元のファイル名 */
  String originalname = null;
/* (必須) ファイル形式 */
  String type = null;
/* (必須) ファイルのバイナリデータ */
  String fileData = null;
/* (任意) ファイルがCSVの場合、アカウントデータ生成実行に使用されたか。(true: 実行済み, false: 未使用) */
  bool executed = null;
/* (必須) ファイルのステータス */
  double status = null;
/* (任意) ファイルを紐づけたグループの配列 */
  List<Group> group = [];
/* (任意) ファイルに紐づいたVCスキーマ */
  Object vcSchema = null;
/* (必須) ファイルをアップロードしたユーザーアカウント。 */
  Object createdBy = null;
/* (必須) ファイルの作成日時 */
  String createdAt = null;
/* (必須) グループの最終更新日時 */
  String updatedAt = null;

  AllOfVcSchemaFile();

  @override
  String toString() {
    return 'AllOfVcSchemaFile[id=$id, filename=$filename, originalname=$originalname, type=$type, fileData=$fileData, executed=$executed, status=$status, group=$group, vcSchema=$vcSchema, createdBy=$createdBy, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

  AllOfVcSchemaFile.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    filename = json['filename'];
    originalname = json['originalname'];
    type = json['type'];
    fileData = json['fileData'];
    executed = json['executed'];
    status = json['status'];
    group = Group.listFromJson(json['group']);
    vcSchema = new Object.fromJson(json['vcSchema']);
    createdBy = new Object.fromJson(json['createdBy']);
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'filename': filename,
      'originalname': originalname,
      'type': type,
      'fileData': fileData,
      'executed': executed,
      'status': status,
      'group': group,
      'vcSchema': vcSchema,
      'createdBy': createdBy,
      'createdAt': createdAt,
      'updatedAt': updatedAt
     };
  }

  static List<AllOfVcSchemaFile> listFromJson(List<dynamic> json) {
    return json == null ? new List<AllOfVcSchemaFile>() : json.map((value) => new AllOfVcSchemaFile.fromJson(value)).toList();
  }

  static Map<String, AllOfVcSchemaFile> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AllOfVcSchemaFile>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AllOfVcSchemaFile.fromJson(value));
    }
    return map;
  }
}
