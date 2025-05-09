part of swagger.api;

class ConnectVcSchemasDto {
  /* (必須) グループに紐付けを行うVCスキーマ識別子の配列 */
  List<String> vcSchemaIds = [];

  ConnectVcSchemasDto();

  @override
  String toString() {
    return 'ConnectVcSchemasDto[vcSchemaIds=$vcSchemaIds, ]';
  }

  ConnectVcSchemasDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    vcSchemaIds = (json['vcSchemaIds'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'vcSchemaIds': vcSchemaIds
     };
  }

  static List<ConnectVcSchemasDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<ConnectVcSchemasDto>() : json.map((value) => new ConnectVcSchemasDto.fromJson(value)).toList();
  }

  static Map<String, ConnectVcSchemasDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ConnectVcSchemasDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ConnectVcSchemasDto.fromJson(value));
    }
    return map;
  }
}
