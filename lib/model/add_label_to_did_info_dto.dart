part of swagger.api;

class AddLabelToDidInfoDto {
  /* (必須) DIDの識別や整理などの管理するにあったてメタデータとして任意で設定可能な単語のフレーズ。(例: did-for-project1) */
  String label = null;

  AddLabelToDidInfoDto();

  @override
  String toString() {
    return 'AddLabelToDidInfoDto[label=$label, ]';
  }

  AddLabelToDidInfoDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    label = json['label'];
  }

  Map<String, dynamic> toJson() {
    return {
      'label': label
     };
  }

  static List<AddLabelToDidInfoDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<AddLabelToDidInfoDto>() : json.map((value) => new AddLabelToDidInfoDto.fromJson(value)).toList();
  }

  static Map<String, AddLabelToDidInfoDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AddLabelToDidInfoDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AddLabelToDidInfoDto.fromJson(value));
    }
    return map;
  }
}
