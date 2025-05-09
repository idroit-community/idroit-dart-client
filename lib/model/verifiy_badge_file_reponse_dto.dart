part of swagger.api;

class VerifiyBadgeFileReponseDto {
  /* (任意)  */
  bool result = false;
/* (任意)  */
  bool filename = false;

  VerifiyBadgeFileReponseDto();

  @override
  String toString() {
    return 'VerifiyBadgeFileReponseDto[result=$result, filename=$filename, ]';
  }

  VerifiyBadgeFileReponseDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    result = json['result'];
    filename = json['filename'];
  }

  Map<String, dynamic> toJson() {
    return {
      'result': result,
      'filename': filename
     };
  }

  static List<VerifiyBadgeFileReponseDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<VerifiyBadgeFileReponseDto>() : json.map((value) => new VerifiyBadgeFileReponseDto.fromJson(value)).toList();
  }

  static Map<String, VerifiyBadgeFileReponseDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VerifiyBadgeFileReponseDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VerifiyBadgeFileReponseDto.fromJson(value));
    }
    return map;
  }
}
