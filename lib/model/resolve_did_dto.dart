part of swagger.api;

class ResolveDidDto {
  /* (必須) 解決を実施するDID文字列。 */
  String did = null;

  ResolveDidDto();

  @override
  String toString() {
    return 'ResolveDidDto[did=$did, ]';
  }

  ResolveDidDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    did = json['did'];
  }

  Map<String, dynamic> toJson() {
    return {
      'did': did
     };
  }

  static List<ResolveDidDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResolveDidDto>() : json.map((value) => new ResolveDidDto.fromJson(value)).toList();
  }

  static Map<String, ResolveDidDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ResolveDidDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ResolveDidDto.fromJson(value));
    }
    return map;
  }
}
