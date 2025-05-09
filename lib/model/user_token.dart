part of swagger.api;

class UserToken {
  
  UserToken();

  @override
  String toString() {
    return 'UserToken[]';
  }

  UserToken.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<UserToken> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserToken>() : json.map((value) => new UserToken.fromJson(value)).toList();
  }

  static Map<String, UserToken> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserToken>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserToken.fromJson(value));
    }
    return map;
  }
}
