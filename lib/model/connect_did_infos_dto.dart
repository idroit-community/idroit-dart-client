part of swagger.api;

class ConnectDidInfosDto {
  /* (必須) グループに紐付けを行うDID情報の識別子の配列 */
  List<String> didInfoIds = [];

  ConnectDidInfosDto();

  @override
  String toString() {
    return 'ConnectDidInfosDto[didInfoIds=$didInfoIds, ]';
  }

  ConnectDidInfosDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    didInfoIds = (json['didInfoIds'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'didInfoIds': didInfoIds
     };
  }

  static List<ConnectDidInfosDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<ConnectDidInfosDto>() : json.map((value) => new ConnectDidInfosDto.fromJson(value)).toList();
  }

  static Map<String, ConnectDidInfosDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ConnectDidInfosDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ConnectDidInfosDto.fromJson(value));
    }
    return map;
  }
}
