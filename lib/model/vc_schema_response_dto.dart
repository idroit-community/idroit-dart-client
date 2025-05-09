part of swagger.api;

class VcSchemaResponseDto {
  /* VCスキーマの識別子 */
  String id = null;
/* VCスキーマのタイトル */
  String title = null;
/* VCスキーマのバージョン */
  String version = null;
/* VCスキーマの説明文 */
  String description = null;
/* VCスキーマがバッジのスキーマか否か */
  String isBadgeSchema = null;

  List<VcInfo> vcInfos = [];
/* VCのスキーマのJSONスキーマコンテキスト */
  List<VcContext> vcContexts = [];
/* VCのスキーマの各項目における項目名と項目型のオブジェクトの配列 */
  List<VcSchemaProperty> vcSchemaProperties = [];

  List<Group> groups = [];
/* VCスキーマを紐付けたバッジ */
  List<Badge> badges = [];
/* VCスキーマに紐付けるバッジ用の画像。`isBadgeSchema`プロパティが`true`の場合必須。 */
  AllOfVcSchemaResponseDtoFile file = null;
/* VCスキーマを作成したユーザーアカウント */
  AllOfVcSchemaResponseDtoCreatedBy createdBy = null;
/* VCスキーマの作成日時 */
  String createdAt = null;
/* VCスキーマの最終更新日時 */
  String updatedAt = null;

  VcSchemaResponseDto();

  @override
  String toString() {
    return 'VcSchemaResponseDto[id=$id, title=$title, version=$version, description=$description, isBadgeSchema=$isBadgeSchema, vcInfos=$vcInfos, vcContexts=$vcContexts, vcSchemaProperties=$vcSchemaProperties, groups=$groups, badges=$badges, file=$file, createdBy=$createdBy, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

  VcSchemaResponseDto.fromJson(Map<String, dynamic> json) {
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
    file = new AllOfVcSchemaResponseDtoFile.fromJson(json['file']);
    createdBy = new AllOfVcSchemaResponseDtoCreatedBy.fromJson(json['createdBy']);
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

  static List<VcSchemaResponseDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<VcSchemaResponseDto>() : json.map((value) => new VcSchemaResponseDto.fromJson(value)).toList();
  }

  static Map<String, VcSchemaResponseDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VcSchemaResponseDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VcSchemaResponseDto.fromJson(value));
    }
    return map;
  }
}
