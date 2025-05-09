part of swagger.api;

class UsersResponseDto {
  /* Array of user items */
  List<UserResponseDto> items = [];

  MetaDto meta = null;

  LinkDto links = null;

  UsersResponseDto();

  @override
  String toString() {
    return 'UsersResponseDto[items=$items, meta=$meta, links=$links, ]';
  }

  UsersResponseDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    items = UserResponseDto.listFromJson(json['items']);
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

  static List<UsersResponseDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<UsersResponseDto>() : json.map((value) => new UsersResponseDto.fromJson(value)).toList();
  }

  static Map<String, UsersResponseDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UsersResponseDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UsersResponseDto.fromJson(value));
    }
    return map;
  }
}
