part of swagger.api;

class AllOfVerificationsResponseDtoLinks {
  /* URL for the first page */
  String first = null;
/* URL for the previous page */
  Object previous = null;
/* URL for the next page */
  String next = null;
/* URL for the last page */
  String last = null;

  AllOfVerificationsResponseDtoLinks();

  @override
  String toString() {
    return 'AllOfVerificationsResponseDtoLinks[first=$first, previous=$previous, next=$next, last=$last, ]';
  }

  AllOfVerificationsResponseDtoLinks.fromJson(Map<String, dynamic> json) {
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

  static List<AllOfVerificationsResponseDtoLinks> listFromJson(List<dynamic> json) {
    return json == null ? new List<AllOfVerificationsResponseDtoLinks>() : json.map((value) => new AllOfVerificationsResponseDtoLinks.fromJson(value)).toList();
  }

  static Map<String, AllOfVerificationsResponseDtoLinks> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AllOfVerificationsResponseDtoLinks>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AllOfVerificationsResponseDtoLinks.fromJson(value));
    }
    return map;
  }
}
