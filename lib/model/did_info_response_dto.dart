part of swagger.api;

class DidInfoResponseDto {
  
  AllOfDidInfoResponseDtoDidInfo didInfo = null;

  Object didObject = null;

  DidInfoResponseDto();

  @override
  String toString() {
    return 'DidInfoResponseDto[didInfo=$didInfo, didObject=$didObject, ]';
  }

  DidInfoResponseDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    didInfo = new AllOfDidInfoResponseDtoDidInfo.fromJson(json['didInfo']);
    didObject = new Object.fromJson(json['didObject']);
  }

  Map<String, dynamic> toJson() {
    return {
      'didInfo': didInfo,
      'didObject': didObject
     };
  }

  static List<DidInfoResponseDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<DidInfoResponseDto>() : json.map((value) => new DidInfoResponseDto.fromJson(value)).toList();
  }

  static Map<String, DidInfoResponseDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DidInfoResponseDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DidInfoResponseDto.fromJson(value));
    }
    return map;
  }
}
