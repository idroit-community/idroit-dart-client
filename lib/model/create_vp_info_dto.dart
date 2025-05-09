part of swagger.api;

class CreateVpInfoDto {
  /* (必須) VPを生成する元となるVC情報の識別子の配列 */
  List<String> vcInfoIds = [];
/* (必須) VP生成時の署名に用いるDID情報の識別子 */
  String didInfoId = null;
/* (任意) VPの識別や整理などの管理するにあったてメタデータとして任意で設定可能な単語のフレーズ。(例: vc-for-project1) */
  String label = null;
/* (任意) VPの生成目的や用途などを任意で設定可能な説明文 */
  String description = null;

  CreateVpInfoDto();

  @override
  String toString() {
    return 'CreateVpInfoDto[vcInfoIds=$vcInfoIds, didInfoId=$didInfoId, label=$label, description=$description, ]';
  }

  CreateVpInfoDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    vcInfoIds = (json['vcInfoIds'] as List).map((item) => item as String).toList();
    didInfoId = json['didInfoId'];
    label = json['label'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {
      'vcInfoIds': vcInfoIds,
      'didInfoId': didInfoId,
      'label': label,
      'description': description
     };
  }

  static List<CreateVpInfoDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateVpInfoDto>() : json.map((value) => new CreateVpInfoDto.fromJson(value)).toList();
  }

  static Map<String, CreateVpInfoDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateVpInfoDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateVpInfoDto.fromJson(value));
    }
    return map;
  }
}
