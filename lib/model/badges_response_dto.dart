part of swagger.api;

class BadgesResponseDto {
  /* Array of badge items */
  List<BadgeResponseDto> items = [];

  MetaDto meta = null;

  LinkDto links = null;

  BadgesResponseDto();

  @override
  String toString() {
    return 'BadgesResponseDto[items=$items, meta=$meta, links=$links, ]';
  }

  BadgesResponseDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    items = BadgeResponseDto.listFromJson(json['items']);
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

  static List<BadgesResponseDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<BadgesResponseDto>() : json.map((value) => new BadgesResponseDto.fromJson(value)).toList();
  }

  static Map<String, BadgesResponseDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BadgesResponseDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BadgesResponseDto.fromJson(value));
    }
    return map;
  }
}
