part of swagger.api;

class SettingResponseDto {
  /* The ID of the user */
  String id = null;
/* setting key name */
  String key = null;
/* setting value name */
  String value = null;
/* string, number or boolean */
  String type = null;

  SettingResponseDto();

  @override
  String toString() {
    return 'SettingResponseDto[id=$id, key=$key, value=$value, type=$type, ]';
  }

  SettingResponseDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    key = json['key'];
    value = json['value'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'key': key,
      'value': value,
      'type': type
     };
  }

  static List<SettingResponseDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<SettingResponseDto>() : json.map((value) => new SettingResponseDto.fromJson(value)).toList();
  }

  static Map<String, SettingResponseDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SettingResponseDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SettingResponseDto.fromJson(value));
    }
    return map;
  }
}
