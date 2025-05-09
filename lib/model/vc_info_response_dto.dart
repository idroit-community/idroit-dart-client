part of swagger.api;

class VcInfoResponseDto {
  /* 本アプリケーションにおけるVCの管理情報 */
  AllOfVcInfoResponseDtoVcInfo vcInfo = null;
/* VCのJSONデータ */
  Object vcObject = null;

  VcInfoResponseDto();

  @override
  String toString() {
    return 'VcInfoResponseDto[vcInfo=$vcInfo, vcObject=$vcObject, ]';
  }

  VcInfoResponseDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    vcInfo = new AllOfVcInfoResponseDtoVcInfo.fromJson(json['vcInfo']);
    vcObject = new Object.fromJson(json['vcObject']);
  }

  Map<String, dynamic> toJson() {
    return {
      'vcInfo': vcInfo,
      'vcObject': vcObject
     };
  }

  static List<VcInfoResponseDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<VcInfoResponseDto>() : json.map((value) => new VcInfoResponseDto.fromJson(value)).toList();
  }

  static Map<String, VcInfoResponseDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VcInfoResponseDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VcInfoResponseDto.fromJson(value));
    }
    return map;
  }
}
