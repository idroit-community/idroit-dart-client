part of swagger.api;

class IssueVcInfoDto {
  /* (必須) VCの発行者の識別子として用いる文字列の値。現在はDIDのみがサポートされていますが、今後のアップデートでDID以外の文字列をサポートする予定です。 */
  String issuer = null;
/* (必須) VCの主張内容(クレーム)となる値のオブジェクト型の値 */
  Object credentialSubject = null;
/* (任意) VCの識別や整理などの管理するにあったてメタデータとして任意で設定可能な単語のフレーズ。(例: vc-for-project1) */
  String label = null;
/* (任意) VCの発行目的や用途など任意で設定可能な説明文 */
  String description = null;

  IssueVcInfoDto();

  @override
  String toString() {
    return 'IssueVcInfoDto[issuer=$issuer, credentialSubject=$credentialSubject, label=$label, description=$description, ]';
  }

  IssueVcInfoDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    issuer = json['issuer'];
    credentialSubject = new Object.fromJson(json['credentialSubject']);
    label = json['label'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {
      'issuer': issuer,
      'credentialSubject': credentialSubject,
      'label': label,
      'description': description
     };
  }

  static List<IssueVcInfoDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<IssueVcInfoDto>() : json.map((value) => new IssueVcInfoDto.fromJson(value)).toList();
  }

  static Map<String, IssueVcInfoDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IssueVcInfoDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IssueVcInfoDto.fromJson(value));
    }
    return map;
  }
}
