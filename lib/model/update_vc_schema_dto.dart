part of swagger.api;

class UpdateVcSchemaDto {
  /* (必須) VCスキーマを紐づけるグループ識別子の配列。 */
  List<String> groupIds = [];
/* (必須) VCスキーマを紐づけるcontext項目の配列。 */
  List<String> contexts = [];

  UpdateVcSchemaDto();

  @override
  String toString() {
    return 'UpdateVcSchemaDto[groupIds=$groupIds, contexts=$contexts, ]';
  }

  UpdateVcSchemaDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    groupIds = (json['groupIds'] as List).map((item) => item as String).toList();
    contexts = (json['contexts'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'groupIds': groupIds,
      'contexts': contexts
     };
  }

  static List<UpdateVcSchemaDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<UpdateVcSchemaDto>() : json.map((value) => new UpdateVcSchemaDto.fromJson(value)).toList();
  }

  static Map<String, UpdateVcSchemaDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UpdateVcSchemaDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UpdateVcSchemaDto.fromJson(value));
    }
    return map;
  }
}
