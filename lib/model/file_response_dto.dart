part of swagger.api;

class FileResponseDto {
  /* (必須) ファイルの識別子 */
  String id = null;
/* (必須) システム内で管理される際にシステムによって名付けられるユニークなファイル名 */
  String filename = null;
/* (必須) システム内で管理される際にシステムによって名付けられるユニークなファイル名 */
  String originalname = null;
/* (必須) システムへアップロード時の元のファイル名 */
  String fileData = null;
/* (必須) ファイル形式 */
  String fileType = null;
/* (必須) ファイル形式 */
  String type = null;
/* (任意) ファイルがCSVの場合、アカウントデータ生成実行に使用されたか。(true: 実行済み, false: 未使用) */
  bool executed = null;
/* (必須) ファイルのステータス */
  double status = null;
/* ファイルをアップロードしたユーザーアカウント */
  AllOfFileResponseDtoCreatedBy createdBy = null;
/* (必須) ファイルの作成日時 */
  String createdAt = null;
/* (必須) グループの最終更新日時 */
  String updatedAt = null;

  FileResponseDto();

  @override
  String toString() {
    return 'FileResponseDto[id=$id, filename=$filename, originalname=$originalname, fileData=$fileData, fileType=$fileType, type=$type, executed=$executed, status=$status, createdBy=$createdBy, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

  FileResponseDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    filename = json['filename'];
    originalname = json['originalname'];
    fileData = json['fileData'];
    fileType = json['fileType'];
    type = json['type'];
    executed = json['executed'];
    status = json['status'];
    createdBy = new AllOfFileResponseDtoCreatedBy.fromJson(json['createdBy']);
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'filename': filename,
      'originalname': originalname,
      'fileData': fileData,
      'fileType': fileType,
      'type': type,
      'executed': executed,
      'status': status,
      'createdBy': createdBy,
      'createdAt': createdAt,
      'updatedAt': updatedAt
     };
  }

  static List<FileResponseDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<FileResponseDto>() : json.map((value) => new FileResponseDto.fromJson(value)).toList();
  }

  static Map<String, FileResponseDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FileResponseDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FileResponseDto.fromJson(value));
    }
    return map;
  }
}
