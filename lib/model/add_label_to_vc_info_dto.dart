part of swagger.api;

class AddLabelToVcInfoDto {
  /* (必須) VCの識別や整理などの管理するにあったてメタデータとして任意で設定可能な単語のフレーズ。(例: vc-for-project1) */
  String label = null;

  AddLabelToVcInfoDto();

  @override
  String toString() {
    return 'AddLabelToVcInfoDto[label=$label, ]';
  }

  AddLabelToVcInfoDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    label = json['label'];
  }

  Map<String, dynamic> toJson() {
    return {
      'label': label
     };
  }

  static List<AddLabelToVcInfoDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<AddLabelToVcInfoDto>() : json.map((value) => new AddLabelToVcInfoDto.fromJson(value)).toList();
  }

  static Map<String, AddLabelToVcInfoDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AddLabelToVcInfoDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AddLabelToVcInfoDto.fromJson(value));
    }
    return map;
  }
}
