part of swagger.api;

class Setting {
  
  Setting();

  @override
  String toString() {
    return 'Setting[]';
  }

  Setting.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Setting> listFromJson(List<dynamic> json) {
    return json == null ? new List<Setting>() : json.map((value) => new Setting.fromJson(value)).toList();
  }

  static Map<String, Setting> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Setting>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Setting.fromJson(value));
    }
    return map;
  }
}
