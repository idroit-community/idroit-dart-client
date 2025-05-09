part of swagger.api;

class CreateVcSchemaDto {
  /* (必須) 新規生成するVCスキーマのタイトル */
  String title = null;
/* (必須) VCスキーマのバージョン(デフォルト: 1.0.0) */
  String version = null;
/* (任意) VCスキーマに設定する@context文字列の配列 */
  List<String> contexts = [];
/* (任意) VCスキーマの説明文 */
  String description = null;
/* (任意) このスキーマがバッジのスキーマか否か(デフォルト: false) */
  bool isBadgeSchema = null;
/* (任意) バッジの画像のファイル識別子。'`isBadgeSchema`プロパティが`true`であり、バッジスキーマとして利用する場合は必須のパラメータ。 */
  String fileId = null;
/* (必須) VCのスキーマの各項目における項目名と項目型のオブジェクトの配列 */
  List<VcSchemaProperty> propArray = [];

  CreateVcSchemaDto();

  @override
  String toString() {
    return 'CreateVcSchemaDto[title=$title, version=$version, contexts=$contexts, description=$description, isBadgeSchema=$isBadgeSchema, fileId=$fileId, propArray=$propArray, ]';
  }

  CreateVcSchemaDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    version = json['version'];
    contexts = (json['contexts'] as List).map((item) => item as String).toList();
    description = json['description'];
    isBadgeSchema = json['isBadgeSchema'];
    fileId = json['fileId'];
    propArray = VcSchemaProperty.listFromJson(json['propArray']);
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'version': version,
      'contexts': contexts,
      'description': description,
      'isBadgeSchema': isBadgeSchema,
      'fileId': fileId,
      'propArray': propArray
     };
  }

  static List<CreateVcSchemaDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateVcSchemaDto>() : json.map((value) => new CreateVcSchemaDto.fromJson(value)).toList();
  }

  static Map<String, CreateVcSchemaDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateVcSchemaDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateVcSchemaDto.fromJson(value));
    }
    return map;
  }
}
