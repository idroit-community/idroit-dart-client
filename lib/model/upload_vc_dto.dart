part of swagger.api;

class UploadVCDto {
  /* (任意) JSON形式のVCオブジェクト。ファイルアップロードではなくテキストを用いて作成する場合のみ必須 */
  Object credentialObject = null;
/* (任意) VCの識別や整理などの管理するにあったてメタデータとして任意で設定可能な単語のフレーズ。(例: vc-for-project1) */
  String label = null;
/* (任意) VCの発行目的や用途など任意で設定可能な説明文。 */
  String description = null;

  UploadVCDto();

  @override
  String toString() {
    return 'UploadVCDto[credentialObject=$credentialObject, label=$label, description=$description, ]';
  }

  UploadVCDto.fromJson(Map<String, dynamic> json) {
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

  static List<UploadVCDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<UploadVCDto>() : json.map((value) => new UploadVCDto.fromJson(value)).toList();
  }

  static Map<String, UploadVCDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UploadVCDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UploadVCDto.fromJson(value));
    }
    return map;
  }
}
