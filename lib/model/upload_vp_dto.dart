part of swagger.api;

class UploadVPDto {
  /* (任意) JSON形式のVPオブジェクト。ファイルアップロードではなくテキストを用いて作成する場合のみ必須 */
  Object credentialObject = null;
/* (任意) VPの識別や整理などの管理するにあったてメタデータとして任意で設定可能な単語のフレーズ。(例: vc-for-project1) */
  String label = null;
/* (任意) VPの発行目的や用途など任意で設定可能な説明文。 */
  String description = null;

  UploadVPDto();

  @override
  String toString() {
    return 'UploadVPDto[credentialObject=$credentialObject, label=$label, description=$description, ]';
  }

  UploadVPDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    credentialObject = new Object.fromJson(json['credentialObject']);
    label = json['label'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {
      'credentialObject': credentialObject,
      'label': label,
      'description': description
     };
  }

  static List<UploadVPDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<UploadVPDto>() : json.map((value) => new UploadVPDto.fromJson(value)).toList();
  }

  static Map<String, UploadVPDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UploadVPDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UploadVPDto.fromJson(value));
    }
    return map;
  }
}
