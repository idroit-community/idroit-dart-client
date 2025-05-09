part of swagger.api;

class Mail {
  /* (必須) 送信済みメールの識別子 */
  String id = null;
/* (必須) 送信済みメールの件名 */
  String title = null;
/* (必須) 送信済みメールの内容 */
  String content = null;
/* (必須) 全てのuser権限アカウントに対して送信するか。(true: 全てのuser権限アカウントに送信, false: 全てのuser権限アカウントに送信しない) */
  bool forEveryUser = null;
/* (必須) 全てのclient権限アカウントに対して送信するか。(true: 全てのclient権限アカウントに送信, false: 全てのclient権限アカウントに送信しない) */
  bool forEveryClient = null;
/* (任意) メールの送信先となるユーザーアカウントの配列 */
  List<User> users = [];
/* (任意) メールの送信先となるグループの配列 */
  List<Group> groups = [];
/* (必須) メール送信操作を行ったAdmin権限アカウント */
  List<User> createdBy = [];
/* (必須) メールの送信日時 */
  String createdAt = null;
/* (必須) メールの送信日時 */
  String updatedAt = null;

  Mail();

  @override
  String toString() {
    return 'Mail[id=$id, title=$title, content=$content, forEveryUser=$forEveryUser, forEveryClient=$forEveryClient, users=$users, groups=$groups, createdBy=$createdBy, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

  Mail.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    title = json['title'];
    content = json['content'];
    forEveryUser = json['forEveryUser'];
    forEveryClient = json['forEveryClient'];
    users = User.listFromJson(json['users']);
    groups = Group.listFromJson(json['groups']);
    createdBy = User.listFromJson(json['createdBy']);
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'forEveryUser': forEveryUser,
      'forEveryClient': forEveryClient,
      'users': users,
      'groups': groups,
      'createdBy': createdBy,
      'createdAt': createdAt,
      'updatedAt': updatedAt
     };
  }

  static List<Mail> listFromJson(List<dynamic> json) {
    return json == null ? new List<Mail>() : json.map((value) => new Mail.fromJson(value)).toList();
  }

  static Map<String, Mail> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Mail>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Mail.fromJson(value));
    }
    return map;
  }
}
