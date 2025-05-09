part of swagger.api;

class SendMailDto {
  /* (必須) メールの件名 */
  String title = null;
/* (必須) メールの内容 */
  String content = null;
/* (任意) メールの送信対象のユーザーアカウント識別子 */
  String userId = null;

  SendMailDto();

  @override
  String toString() {
    return 'SendMailDto[title=$title, content=$content, userId=$userId, ]';
  }

  SendMailDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    content = json['content'];
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'content': content,
      'userId': userId
     };
  }

  static List<SendMailDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<SendMailDto>() : json.map((value) => new SendMailDto.fromJson(value)).toList();
  }

  static Map<String, SendMailDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SendMailDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SendMailDto.fromJson(value));
    }
    return map;
  }
}
