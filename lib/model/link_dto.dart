part of swagger.api;

class LinkDto {
  /* URL for the first page */
  String first = null;
/* URL for the previous page */
  Object previous = null;
/* URL for the next page */
  String next = null;
/* URL for the last page */
  String last = null;

  LinkDto();

  @override
  String toString() {
    return 'LinkDto[first=$first, previous=$previous, next=$next, last=$last, ]';
  }

  LinkDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    first = json['first'];
    previous = new Object.fromJson(json['previous']);
    next = json['next'];
    last = json['last'];
  }

  Map<String, dynamic> toJson() {
    return {
      'first': first,
      'previous': previous,
      'next': next,
      'last': last
     };
  }

  static List<LinkDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<LinkDto>() : json.map((value) => new LinkDto.fromJson(value)).toList();
  }

  static Map<String, LinkDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LinkDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LinkDto.fromJson(value));
    }
    return map;
  }
}
