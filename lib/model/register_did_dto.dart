part of swagger.api;

class RegisterDidDto {
  /* (必須)  */
  String did = null;
/* (任意) DIDの識別や整理などの管理するにあったてメタデータとして任意で設定可能な単語のフレーズ。(例: did-for-project1) */
  String label = null;
/* (任意) DIDの生成目的や用途など任意で設定可能な説明文。 */
  String description = null;

  RegisterDidDto();

  @override
  String toString() {
    return 'RegisterDidDto[did=$did, label=$label, description=$description, ]';
  }

  RegisterDidDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    did = json['did'];
    label = json['label'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {
      'did': did,
      'label': label,
      'description': description
     };
  }

  static List<RegisterDidDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<RegisterDidDto>() : json.map((value) => new RegisterDidDto.fromJson(value)).toList();
  }

  static Map<String, RegisterDidDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RegisterDidDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RegisterDidDto.fromJson(value));
    }
    return map;
  }
}
