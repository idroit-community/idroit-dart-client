part of swagger.api;

class AllOfVcInfoVcSchema {
  /* (必須) VCスキーマの識別子 */
  String id = null;
/* (必須) VCスキーマのタイトル */
  String title = null;
/* (必須) VCスキーマのバージョン */
  String version = null;
/* (任意) VCスキーマの説明文 */
  String description = null;
/* (必須) VCスキーマがバッジのスキーマか否か */
  String isBadgeSchema = "false";
/* (任意) このVCスキーマを用いて生成したVC情報の配列。 */
  List<VcInfo> vcInfos = [];
/* (任意) VCスキーマに設定したcontext項目の配列 */
  List<VcContext> vcContexts = [];
/* (必須) VCスキーマの項目情報の配列 */
  List<VcSchemaProperty> vcSchemaProperties = [];
/* (任意) VCスキーマを紐付けたグループの配列 */
  List<Group> groups = [];
/* (任意) VCスキーマを紐付けたバッジ */
  List<Badge> badges = [];
/* (任意) VCスキーマに紐付けるバッジ用の画像。`isBadgeSchema`プロパティが`true`の場合必須。 */
  Object file = null;
/* (必須) VCスキーマを作成したユーザーアカウント。 */
  Object createdBy = null;
/* (必須) VCスキーマの作成日時 */
  String createdAt = null;
/* (必須) VCスキーマの更新日時 */
  String updatedAt = null;

  AllOfVcInfoVcSchema();

  @override
  String toString() {
    return 'AllOfVcInfoVcSchema[id=$id, title=$title, version=$version, description=$description, isBadgeSchema=$isBadgeSchema, vcInfos=$vcInfos, vcContexts=$vcContexts, vcSchemaProperties=$vcSchemaProperties, groups=$groups, badges=$badges, file=$file, createdBy=$createdBy, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

  AllOfVcInfoVcSchema.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    title = json['title'];
    version = json['version'];
    description = json['description'];
    isBadgeSchema = json['isBadgeSchema'];
    vcInfos = VcInfo.listFromJson(json['vcInfos']);
    vcContexts = VcContext.listFromJson(json['vcContexts']);
    vcSchemaProperties = VcSchemaProperty.listFromJson(json['vcSchemaProperties']);
    groups = Group.listFromJson(json['groups']);
    badges = Badge.listFromJson(json['badges']);
    file = new Object.fromJson(json['file']);
    createdBy = new Object.fromJson(json['createdBy']);
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'version': version,
      'description': description,
      'isBadgeSchema': isBadgeSchema,
      'vcInfos': vcInfos,
      'vcContexts': vcContexts,
      'vcSchemaProperties': vcSchemaProperties,
      'groups': groups,
      'badges': badges,
      'file': file,
      'createdBy': createdBy,
      'createdAt': createdAt,
      'updatedAt': updatedAt
     };
  }

  static List<AllOfVcInfoVcSchema> listFromJson(List<dynamic> json) {
    return json == null ? new List<AllOfVcInfoVcSchema>() : json.map((value) => new AllOfVcInfoVcSchema.fromJson(value)).toList();
  }

  static Map<String, AllOfVcInfoVcSchema> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AllOfVcInfoVcSchema>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AllOfVcInfoVcSchema.fromJson(value));
    }
    return map;
  }
}
