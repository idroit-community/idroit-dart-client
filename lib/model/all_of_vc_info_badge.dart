part of swagger.api;

class AllOfVcInfoBadge {
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
  Object vcSchema = null;
/* (任意) バッジに紐付き、メタデータとなるVC情報 */
  Object vcInfo = null;
/* (必須) グループの作成日時 */
  String createdAt = null;
/* (必須) グループの最終更新日時 */
  String updatedAt = null;

  AllOfVcInfoBadge();

  @override
  String toString() {
    return 'AllOfVcInfoBadge[id=$id, label=$label, filename=$filename, description=$description, status=$status, vcSchema=$vcSchema, vcInfo=$vcInfo, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

  AllOfVcInfoBadge.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    label = json['label'];
    filename = json['filename'];
    description = json['description'];
    status = json['status'];
    vcSchema = new Object.fromJson(json['vcSchema']);
    vcInfo = new Object.fromJson(json['vcInfo']);
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

  static List<AllOfVcInfoBadge> listFromJson(List<dynamic> json) {
    return json == null ? new List<AllOfVcInfoBadge>() : json.map((value) => new AllOfVcInfoBadge.fromJson(value)).toList();
  }

  static Map<String, AllOfVcInfoBadge> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AllOfVcInfoBadge>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AllOfVcInfoBadge.fromJson(value));
    }
    return map;
  }
}
