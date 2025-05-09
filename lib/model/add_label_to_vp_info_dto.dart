part of swagger.api;

class AddLabelToVpInfoDto {
  /* (必須) VPの識別や整理などの管理するにあったてメタデータとして任意で設定可能な単語のフレーズ。(例: vp-for-project1) */
  String label = null;

  AddLabelToVpInfoDto();

  @override
  String toString() {
    return 'AddLabelToVpInfoDto[label=$label, ]';
  }

  AddLabelToVpInfoDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    label = json['label'];
  }

  Map<String, dynamic> toJson() {
    return {
      'label': label
     };
  }

  static List<AddLabelToVpInfoDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<AddLabelToVpInfoDto>() : json.map((value) => new AddLabelToVpInfoDto.fromJson(value)).toList();
  }

  static Map<String, AddLabelToVpInfoDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AddLabelToVpInfoDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AddLabelToVpInfoDto.fromJson(value));
    }
    return map;
  }
}
