part of swagger.api;

class CreateUserDto {
  /* (必須) ユーザーアカウントの名前 */
  String name = null;
/* (必須) ユーザーアカウントのメールアドレス */
  String email = null;
/* (任意) ユーザーアカウントのパスワード(8文字以上20字未満)。\"needActivateFlow\"が\"false\"の場合は必須。 */
  String password = null;
/* (必須) アカウントのタイプ */
  String role = null;
/* (任意) アカウントの有効化フローが必要か否か。デフォルト値ではfalse。(true: 必要 /false: 不要) */
  bool needActivateFlow = null;
/* (任意) ユーザーアカウントに紐付けるグループのIDの配列 */
  List<String> groupIds = [];

  CreateUserDto();

  @override
  String toString() {
    return 'CreateUserDto[name=$name, email=$email, password=$password, role=$role, needActivateFlow=$needActivateFlow, groupIds=$groupIds, ]';
  }

  CreateUserDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    email = json['email'];
    password = json['password'];
    role = json['role'];
    needActivateFlow = json['needActivateFlow'];
    groupIds = (json['groupIds'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'password': password,
      'role': role,
      'needActivateFlow': needActivateFlow,
      'groupIds': groupIds
     };
  }

  static List<CreateUserDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateUserDto>() : json.map((value) => new CreateUserDto.fromJson(value)).toList();
  }

  static Map<String, CreateUserDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateUserDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateUserDto.fromJson(value));
    }
    return map;
  }
}
