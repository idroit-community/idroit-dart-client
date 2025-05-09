part of swagger.api;

class VcInfosResponseDto {
  /* Array of VC info items */
  List<VcInfo> items = [];

  MetaDto meta = null;

  LinkDto links = null;

  VcInfosResponseDto();

  @override
  String toString() {
    return 'VcInfosResponseDto[items=$items, meta=$meta, links=$links, ]';
  }

  VcInfosResponseDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    items = VcInfo.listFromJson(json['items']);
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

  static List<VcInfosResponseDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<VcInfosResponseDto>() : json.map((value) => new VcInfosResponseDto.fromJson(value)).toList();
  }

  static Map<String, VcInfosResponseDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VcInfosResponseDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VcInfosResponseDto.fromJson(value));
    }
    return map;
  }
}
