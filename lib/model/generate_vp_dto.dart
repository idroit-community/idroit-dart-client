part of swagger.api;

class GenerateVpDto {
  /* (必須) VPを生成する際にVCに対しての署名に用いるDIDの識別子 */
  String didInfoId = null;

  GenerateVpDto();

  @override
  String toString() {
    return 'GenerateVpDto[didInfoId=$didInfoId, ]';
  }

  GenerateVpDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    didInfoId = json['didInfoId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'didInfoId': didInfoId
     };
  }

  static List<GenerateVpDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<GenerateVpDto>() : json.map((value) => new GenerateVpDto.fromJson(value)).toList();
  }

  static Map<String, GenerateVpDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GenerateVpDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GenerateVpDto.fromJson(value));
    }
    return map;
  }
}
