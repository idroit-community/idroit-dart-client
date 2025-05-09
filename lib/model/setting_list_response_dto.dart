part of swagger.api;

class SettingListResponseDto {
  
  List<Setting> settings = [];

  SettingListResponseDto();

  @override
  String toString() {
    return 'SettingListResponseDto[settings=$settings, ]';
  }

  SettingListResponseDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    settings = Setting.listFromJson(json['settings']);
  }

  Map<String, dynamic> toJson() {
    return {
      'settings': settings
     };
  }

  static List<SettingListResponseDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<SettingListResponseDto>() : json.map((value) => new SettingListResponseDto.fromJson(value)).toList();
  }

  static Map<String, SettingListResponseDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SettingListResponseDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SettingListResponseDto.fromJson(value));
    }
    return map;
  }
}
