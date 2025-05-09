part of swagger.api;

class VerifiyBadgeReponseDto {
  /* (任意)  */
  bool result = false;

  VerifiyBadgeReponseDto();

  @override
  String toString() {
    return 'VerifiyBadgeReponseDto[result=$result, ]';
  }

  VerifiyBadgeReponseDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    result = json['result'];
  }

  Map<String, dynamic> toJson() {
    return {
      'result': result
     };
  }

  static List<VerifiyBadgeReponseDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<VerifiyBadgeReponseDto>() : json.map((value) => new VerifiyBadgeReponseDto.fromJson(value)).toList();
  }

  static Map<String, VerifiyBadgeReponseDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VerifiyBadgeReponseDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VerifiyBadgeReponseDto.fromJson(value));
    }
    return map;
  }
}
