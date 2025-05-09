part of swagger.api;

class MailsResponseDto {
  
  List<Mail> items = [];

  MetaDto meta = null;

  LinkDto links = null;

  MailsResponseDto();

  @override
  String toString() {
    return 'MailsResponseDto[items=$items, meta=$meta, links=$links, ]';
  }

  MailsResponseDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    items = Mail.listFromJson(json['items']);
    meta = new MetaDto.fromJson(json['meta']);
    links = new LinkDto.fromJson(json['links']);
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items,
      'meta': meta,
      'links': links
     };
  }

  static List<MailsResponseDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<MailsResponseDto>() : json.map((value) => new MailsResponseDto.fromJson(value)).toList();
  }

  static Map<String, MailsResponseDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MailsResponseDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MailsResponseDto.fromJson(value));
    }
    return map;
  }
}
