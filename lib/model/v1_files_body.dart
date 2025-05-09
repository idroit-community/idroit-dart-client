part of swagger.api;

class V1FilesBody {
  
  String file = null;

  V1FilesBody();

  @override
  String toString() {
    return 'V1FilesBody[file=$file, ]';
  }

  V1FilesBody.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    file = json['file'];
  }

  Map<String, dynamic> toJson() {
    return {
      'file': file
     };
  }

  static List<V1FilesBody> listFromJson(List<dynamic> json) {
    return json == null ? new List<V1FilesBody>() : json.map((value) => new V1FilesBody.fromJson(value)).toList();
  }

  static Map<String, V1FilesBody> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V1FilesBody>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new V1FilesBody.fromJson(value));
    }
    return map;
  }
}
