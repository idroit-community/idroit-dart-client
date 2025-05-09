part of swagger.api;

class SignInDto {
  /* (必須) アカウントログインに用いるメールアドレス。 */
  String email = null;
/* (必須) アカウントログインに用いるパスワード */
  String password = null;

  SignInDto();

  @override
  String toString() {
    return 'SignInDto[email=$email, password=$password, ]';
  }

  SignInDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password
     };
  }

  static List<SignInDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<SignInDto>() : json.map((value) => new SignInDto.fromJson(value)).toList();
  }

  static Map<String, SignInDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SignInDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SignInDto.fromJson(value));
    }
    return map;
  }
}
