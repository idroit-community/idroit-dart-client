part of swagger.api;

class ConnectVpInfosDto {
  /* (必須) グループに紐付けを行うVP情報の識別子の配列 */
  List<String> vpInfoIds = [];

  ConnectVpInfosDto();

  @override
  String toString() {
    return 'ConnectVpInfosDto[vpInfoIds=$vpInfoIds, ]';
  }

  ConnectVpInfosDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    vpInfoIds = (json['vpInfoIds'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'vpInfoIds': vpInfoIds
     };
  }

  static List<ConnectVpInfosDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<ConnectVpInfosDto>() : json.map((value) => new ConnectVpInfosDto.fromJson(value)).toList();
  }

  static Map<String, ConnectVpInfosDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ConnectVpInfosDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ConnectVpInfosDto.fromJson(value));
    }
    return map;
  }
}
