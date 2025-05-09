part of swagger.api;

class CreateBadgeDto {
  /* (任意) バッジのタイトル */
  String label = null;
/* (任意) グループの作成目的や用途など任意で設定可能な説明文 */
  String description = null;
/* (必須) VCの発行者の識別子として用いる文字列の値。現在はDIDのみがサポートされていますが、今後のアップデートでDID以外の文字列をサポートする予定です。 */
  String issuer = null;
/* (必須) VCの主張内容(クレーム)となる値のオブジェクト型の値 */
  Object credentialSubject = null;
/* (必須) 新規発行するVCの元となるVCスキーマの識別子 */
  String vcSchemaId = null;

  CreateBadgeDto();

  @override
  String toString() {
    return 'CreateBadgeDto[label=$label, description=$description, issuer=$issuer, credentialSubject=$credentialSubject, vcSchemaId=$vcSchemaId, ]';
  }

  CreateBadgeDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    label = json['label'];
    description = json['description'];
    issuer = json['issuer'];
    credentialSubject = new Object.fromJson(json['credentialSubject']);
    vcSchemaId = json['vcSchemaId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'label': label,
      'description': description,
      'issuer': issuer,
      'credentialSubject': credentialSubject,
      'vcSchemaId': vcSchemaId
     };
  }

  static List<CreateBadgeDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateBadgeDto>() : json.map((value) => new CreateBadgeDto.fromJson(value)).toList();
  }

  static Map<String, CreateBadgeDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateBadgeDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateBadgeDto.fromJson(value));
    }
    return map;
  }
}
