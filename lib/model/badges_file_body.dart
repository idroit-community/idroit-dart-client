part of swagger.api;

class BadgesFileBody {
  
  String file = null;

  BadgesFileBody();

  @override
  String toString() {
    return 'BadgesFileBody[file=$file, ]';
  }

  BadgesFileBody.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    file = json['file'];
  }

  Map<String, dynamic> toJson() {
    return {
      'file': file
     };
  }

  static List<BadgesFileBody> listFromJson(List<dynamic> json) {
    return json == null ? new List<BadgesFileBody>() : json.map((value) => new BadgesFileBody.fromJson(value)).toList();
  }

  static Map<String, BadgesFileBody> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BadgesFileBody>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BadgesFileBody.fromJson(value));
    }
    return map;
  }
}
