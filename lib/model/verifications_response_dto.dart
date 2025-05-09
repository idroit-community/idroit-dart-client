part of swagger.api;

class VerificationsResponseDto {
  
  List<Verification> items = [];

  AllOfVerificationsResponseDtoMeta meta = null;

  AllOfVerificationsResponseDtoLinks links = null;

  VerificationsResponseDto();

  @override
  String toString() {
    return 'VerificationsResponseDto[items=$items, meta=$meta, links=$links, ]';
  }

  VerificationsResponseDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    items = Verification.listFromJson(json['items']);
    meta = new AllOfVerificationsResponseDtoMeta.fromJson(json['meta']);
    links = new AllOfVerificationsResponseDtoLinks.fromJson(json['links']);
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items,
      'meta': meta,
      'links': links
     };
  }

  static List<VerificationsResponseDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<VerificationsResponseDto>() : json.map((value) => new VerificationsResponseDto.fromJson(value)).toList();
  }

  static Map<String, VerificationsResponseDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VerificationsResponseDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VerificationsResponseDto.fromJson(value));
    }
    return map;
  }
}
