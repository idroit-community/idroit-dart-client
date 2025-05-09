part of swagger.api;

class VpInfoResponseDto {
  
  List<VpInfo> items = [];

  MetaDto meta = null;

  LinkDto links = null;

  VpInfoResponseDto();

  @override
  String toString() {
    return 'VpInfoResponseDto[items=$items, meta=$meta, links=$links, ]';
  }

  VpInfoResponseDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    items = VpInfo.listFromJson(json['items']);
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

  static List<VpInfoResponseDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpInfoResponseDto>() : json.map((value) => new VpInfoResponseDto.fromJson(value)).toList();
  }

  static Map<String, VpInfoResponseDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpInfoResponseDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpInfoResponseDto.fromJson(value));
    }
    return map;
  }
}
