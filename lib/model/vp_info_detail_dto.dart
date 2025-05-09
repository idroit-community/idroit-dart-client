part of swagger.api;

class VpInfoDetailDto {
  /* VP情報 */
  AllOfVpInfoDetailDtoVpInfo vpInfo = null;

  Object vpObject = null;

  VpInfoDetailDto();

  @override
  String toString() {
    return 'VpInfoDetailDto[vpInfo=$vpInfo, vpObject=$vpObject, ]';
  }

  VpInfoDetailDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    vpInfo = new AllOfVpInfoDetailDtoVpInfo.fromJson(json['vpInfo']);
    vpObject = new Object.fromJson(json['vpObject']);
  }

  Map<String, dynamic> toJson() {
    return {
      'vpInfo': vpInfo,
      'vpObject': vpObject
     };
  }

  static List<VpInfoDetailDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpInfoDetailDto>() : json.map((value) => new VpInfoDetailDto.fromJson(value)).toList();
  }

  static Map<String, VpInfoDetailDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpInfoDetailDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpInfoDetailDto.fromJson(value));
    }
    return map;
  }
}
