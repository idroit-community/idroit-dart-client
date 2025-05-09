part of swagger.api;

class VcSchemasResponseDto {
  /* Array of VC schema items */
  List<VcSchema> items = [];

  MetaDto meta = null;

  LinkDto links = null;

  VcSchemasResponseDto();

  @override
  String toString() {
    return 'VcSchemasResponseDto[items=$items, meta=$meta, links=$links, ]';
  }

  VcSchemasResponseDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    items = VcSchema.listFromJson(json['items']);
    meta = new MetaDto.fromJson(json['meta']);
    links = new LinkDto.fromJson(json['links']);
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items,
      'meta': meta,
      'links': links
     };
  }

  static List<VcSchemasResponseDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<VcSchemasResponseDto>() : json.map((value) => new VcSchemasResponseDto.fromJson(value)).toList();
  }

  static Map<String, VcSchemasResponseDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VcSchemasResponseDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VcSchemasResponseDto.fromJson(value));
    }
    return map;
  }
}
