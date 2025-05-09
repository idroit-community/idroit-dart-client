part of swagger.api;

class SendMailBatchDto {
  /* (必須) メールの件名 */
  String title = null;
/* (必須) 全てのクライアントアカウントに対して送信するか (true: 全てのクライアントアカウントに送信, false: 全てのクライアントアカウントに送信しない) */
  bool forEveryClient = null;
/* (必須) 全てのユーザーアカウントに対して送信するか (true: 全てのユーザーアカウントに送信, false: 全てのユーザーアカウントに送信しない) */
  bool forEveryUser = null;
/* (任意) メールの送信対象のユーザーアカウント識別子の配列 */
  List<String> userIds = [];
/* (任意) 送信対象のグループ識別子の配列。グループを指定した場合グループに紐付くユーザーアカウントとクライアントアカウント全てにメールが送信される */
  List<String> groupIds = [];
/* (必須) メールの内容 */
  String content = null;

  SendMailBatchDto();

  @override
  String toString() {
    return 'SendMailBatchDto[title=$title, forEveryClient=$forEveryClient, forEveryUser=$forEveryUser, userIds=$userIds, groupIds=$groupIds, content=$content, ]';
  }

  SendMailBatchDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    forEveryClient = json['forEveryClient'];
    forEveryUser = json['forEveryUser'];
    userIds = (json['userIds'] as List).map((item) => item as String).toList();
    groupIds = (json['groupIds'] as List).map((item) => item as String).toList();
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'forEveryClient': forEveryClient,
      'forEveryUser': forEveryUser,
      'userIds': userIds,
      'groupIds': groupIds,
      'content': content
     };
  }

  static List<SendMailBatchDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<SendMailBatchDto>() : json.map((value) => new SendMailBatchDto.fromJson(value)).toList();
  }

  static Map<String, SendMailBatchDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SendMailBatchDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SendMailBatchDto.fromJson(value));
    }
    return map;
  }
}
