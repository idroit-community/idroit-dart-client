part of swagger.api;

class RegistrationProcessDto {
  /* The password of the user */
  String password = null;

  RegistrationProcessDto();

  @override
  String toString() {
    return 'RegistrationProcessDto[password=$password, ]';
  }

  RegistrationProcessDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    return {
      'password': password
     };
  }

  static List<RegistrationProcessDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<RegistrationProcessDto>() : json.map((value) => new RegistrationProcessDto.fromJson(value)).toList();
  }

  static Map<String, RegistrationProcessDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RegistrationProcessDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RegistrationProcessDto.fromJson(value));
    }
    return map;
  }
}
