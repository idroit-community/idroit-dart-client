part of swagger.api;

class ConnectVcInfosDto {
  /* (必須) グループに紐付けを行うVC情報の識別子の配列 */
  List<String> vcInfoIds = [];

  ConnectVcInfosDto();

  @override
  String toString() {
    return 'ConnectVcInfosDto[vcInfoIds=$vcInfoIds, ]';
  }

  ConnectVcInfosDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    vcInfoIds = (json['vcInfoIds'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'vcInfoIds': vcInfoIds
     };
  }

  static List<ConnectVcInfosDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<ConnectVcInfosDto>() : json.map((value) => new ConnectVcInfosDto.fromJson(value)).toList();
  }

  static Map<String, ConnectVcInfosDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ConnectVcInfosDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ConnectVcInfosDto.fromJson(value));
    }
    return map;
  }
}
