part of swagger.api;

class VerifyBadgeDto {
  /* (任意) バッジに紐づいたVC情報を検証するか否か。`true`の場合VC情報をfalseの場合`vpInfoId`で指定されたVP情報を検証する */
  bool veriifyVC = true;
/* (任意)  */
  String vpInfoId = "false";

  VerifyBadgeDto();

  @override
  String toString() {
    return 'VerifyBadgeDto[veriifyVC=$veriifyVC, vpInfoId=$vpInfoId, ]';
  }

  VerifyBadgeDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    veriifyVC = json['veriifyVC'];
    vpInfoId = json['vpInfoId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'veriifyVC': veriifyVC,
      'vpInfoId': vpInfoId
     };
  }

  static List<VerifyBadgeDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<VerifyBadgeDto>() : json.map((value) => new VerifyBadgeDto.fromJson(value)).toList();
  }

  static Map<String, VerifyBadgeDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VerifyBadgeDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VerifyBadgeDto.fromJson(value));
    }
    return map;
  }
}
