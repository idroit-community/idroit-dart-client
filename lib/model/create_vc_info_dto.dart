part of swagger.api;

class CreateVcInfoDto {
  /* (必須) VCの発行者の識別子として用いる文字列の値。現在はDIDのみがサポートされていますが、今後のアップデートでDID以外の文字列をサポートする予定です。 */
  String issuer = null;
/* (必須) 新規発行するVCの元となるVCスキーマの識別子 */
  String vcSchemaId = null;
/* (必須) VCの主張内容(クレーム)となる値のオブジェクト型の値 */
  Object credentialSubject = null;
/* (任意) VCの識別や整理などの管理するにあったてメタデータとして任意で設定可能な単語のフレーズ。(例: vc-for-project1) */
  String label = null;
/* (任意) VCの発行目的や用途など任意で設定可能な説明文 */
  String description = null;

  CreateVcInfoDto();

  @override
  String toString() {
    return 'CreateVcInfoDto[issuer=$issuer, vcSchemaId=$vcSchemaId, credentialSubject=$credentialSubject, label=$label, description=$description, ]';
  }

  CreateVcInfoDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    issuer = json['issuer'];
    vcSchemaId = json['vcSchemaId'];
    credentialSubject = new Object.fromJson(json['credentialSubject']);
    label = json['label'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {
      'issuer': issuer,
      'vcSchemaId': vcSchemaId,
      'credentialSubject': credentialSubject,
      'label': label,
      'description': description
     };
  }

  static List<CreateVcInfoDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateVcInfoDto>() : json.map((value) => new CreateVcInfoDto.fromJson(value)).toList();
  }

  static Map<String, CreateVcInfoDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateVcInfoDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateVcInfoDto.fromJson(value));
    }
    return map;
  }
}
