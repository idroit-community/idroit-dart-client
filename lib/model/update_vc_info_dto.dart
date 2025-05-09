part of swagger.api;

class UpdateVcInfoDto {
  /* (必須) VC情報を紐づけるアカウントの識別子 */
  String userId = null;

  UpdateVcInfoDto();

  @override
  String toString() {
    return 'UpdateVcInfoDto[userId=$userId, ]';
  }

  UpdateVcInfoDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': userId
     };
  }

  static List<UpdateVcInfoDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<UpdateVcInfoDto>() : json.map((value) => new UpdateVcInfoDto.fromJson(value)).toList();
  }

  static Map<String, UpdateVcInfoDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UpdateVcInfoDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UpdateVcInfoDto.fromJson(value));
    }
    return map;
  }
}
