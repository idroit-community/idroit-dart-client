part of swagger.api;

class AddLabelToBadgeDto {
  /* (必須) Badgeの識別や整理などの管理するにあったてメタデータとして任意で設定可能な単語のフレーズ。(例: badge-for-project1) */
  String label = null;

  AddLabelToBadgeDto();

  @override
  String toString() {
    return 'AddLabelToBadgeDto[label=$label, ]';
  }

  AddLabelToBadgeDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    label = json['label'];
  }

  Map<String, dynamic> toJson() {
    return {
      'label': label
     };
  }

  static List<AddLabelToBadgeDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<AddLabelToBadgeDto>() : json.map((value) => new AddLabelToBadgeDto.fromJson(value)).toList();
  }

  static Map<String, AddLabelToBadgeDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AddLabelToBadgeDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AddLabelToBadgeDto.fromJson(value));
    }
    return map;
  }
}
