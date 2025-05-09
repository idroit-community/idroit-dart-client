part of swagger.api;

class Badge {
  /* (必須) バッジの識別子 */
  String id = null;
/* (任意) バッジのラベル名 */
  String label = null;
/* (任意) バッジのファイル名 */
  String filename = null;
/* (任意) バッジの作成目的や用途など任意で設定可能な説明文 */
  String description = null;
/* (必須) バッジの状態(1: アクティブ, 0: 停止中) */
  double status = null;
/* (任意) バッジに紐付いたVCスキーマ */
  AllOfBadgeVcSchema vcSchema = null;
/* (任意) バッジに紐付き、メタデータとなるVC情報 */
  AllOfBadgeVcInfo vcInfo = null;
/* (必須) グループの作成日時 */
  String createdAt = null;
/* (必須) グループの最終更新日時 */
  String updatedAt = null;

  Badge();

  @override
  String toString() {
    return 'Badge[id=$id, label=$label, filename=$filename, description=$description, status=$status, vcSchema=$vcSchema, vcInfo=$vcInfo, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

  Badge.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    label = json['label'];
    filename = json['filename'];
    description = json['description'];
    status = json['status'];
    vcSchema = new AllOfBadgeVcSchema.fromJson(json['vcSchema']);
    vcInfo = new AllOfBadgeVcInfo.fromJson(json['vcInfo']);
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'label': label,
      'filename': filename,
      'description': description,
      'status': status,
      'vcSchema': vcSchema,
      'vcInfo': vcInfo,
      'createdAt': createdAt,
      'updatedAt': updatedAt
     };
  }

  static List<Badge> listFromJson(List<dynamic> json) {
    return json == null ? new List<Badge>() : json.map((value) => new Badge.fromJson(value)).toList();
  }

  static Map<String, Badge> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Badge>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Badge.fromJson(value));
    }
    return map;
  }
}
