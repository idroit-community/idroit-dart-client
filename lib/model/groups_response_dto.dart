part of swagger.api;

class GroupsResponseDto {
  /* Array of group items */
  List<GroupResponseDto> items = [];

  MetaDto meta = null;

  LinkDto links = null;

  GroupsResponseDto();

  @override
  String toString() {
    return 'GroupsResponseDto[items=$items, meta=$meta, links=$links, ]';
  }

  GroupsResponseDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    items = GroupResponseDto.listFromJson(json['items']);
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

  static List<GroupsResponseDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<GroupsResponseDto>() : json.map((value) => new GroupsResponseDto.fromJson(value)).toList();
  }

  static Map<String, GroupsResponseDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GroupsResponseDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GroupsResponseDto.fromJson(value));
    }
    return map;
  }
}
