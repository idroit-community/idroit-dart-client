part of swagger.api;

class DidInfosResponseDto {
  /* Array of DID info items */
  List<DidInfo> items = [];

  MetaDto meta = null;

  LinkDto links = null;

  DidInfosResponseDto();

  @override
  String toString() {
    return 'DidInfosResponseDto[items=$items, meta=$meta, links=$links, ]';
  }

  DidInfosResponseDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    items = DidInfo.listFromJson(json['items']);
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

  static List<DidInfosResponseDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<DidInfosResponseDto>() : json.map((value) => new DidInfosResponseDto.fromJson(value)).toList();
  }

  static Map<String, DidInfosResponseDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DidInfosResponseDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DidInfosResponseDto.fromJson(value));
    }
    return map;
  }
}
