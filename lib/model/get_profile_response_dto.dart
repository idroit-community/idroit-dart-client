part of swagger.api;

class GetProfileResponseDto {
  /* アカウントの識別子 */
  String userId = null;
/* アカウントの名前 */
  String name = null;
/* アカウントのメールアドレス */
  String email = null;
/* アカウントロール(\"admin\", \"user\", \"client\") */
  String role = null;
  //enum roleEnum {  admin,  user,  client,  };
/* JWTが発行された日時 */
  double iat = null;
/* JWTが失効する日時 */
  double exp = null;

  GetProfileResponseDto();

  @override
  String toString() {
    return 'GetProfileResponseDto[userId=$userId, name=$name, email=$email, role=$role, iat=$iat, exp=$exp, ]';
  }

  GetProfileResponseDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    userId = json['userId'];
    name = json['name'];
    email = json['email'];
    role = json['role'];
    iat = json['iat'];
    exp = json['exp'];
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'name': name,
      'email': email,
      'role': role,
      'iat': iat,
      'exp': exp
     };
  }

  static List<GetProfileResponseDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetProfileResponseDto>() : json.map((value) => new GetProfileResponseDto.fromJson(value)).toList();
  }

  static Map<String, GetProfileResponseDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetProfileResponseDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetProfileResponseDto.fromJson(value));
    }
    return map;
  }
}
