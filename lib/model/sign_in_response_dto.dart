part of swagger.api;

class SignInResponseDto {
  /* 認証用のJSON Web Token */
  String accessToken = null;

  SignInResponseDto();

  @override
  String toString() {
    return 'SignInResponseDto[accessToken=$accessToken, ]';
  }

  SignInResponseDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    accessToken = json['access_token'];
  }

  Map<String, dynamic> toJson() {
    return {
      'access_token': accessToken
     };
  }

  static List<SignInResponseDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<SignInResponseDto>() : json.map((value) => new SignInResponseDto.fromJson(value)).toList();
  }

  static Map<String, SignInResponseDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SignInResponseDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SignInResponseDto.fromJson(value));
    }
    return map;
  }
}
