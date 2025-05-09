part of swagger.api;

class ConnectUsersDto {
  /* (必須) グループに紐付けを行うユーザーアカウント識別子の配列 */
  List<String> userIds = [];

  ConnectUsersDto();

  @override
  String toString() {
    return 'ConnectUsersDto[userIds=$userIds, ]';
  }

  ConnectUsersDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    userIds = (json['userIds'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'userIds': userIds
     };
  }

  static List<ConnectUsersDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<ConnectUsersDto>() : json.map((value) => new ConnectUsersDto.fromJson(value)).toList();
  }

  static Map<String, ConnectUsersDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ConnectUsersDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ConnectUsersDto.fromJson(value));
    }
    return map;
  }
}
