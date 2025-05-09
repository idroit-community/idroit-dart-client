part of swagger.api;

class VerificationDto {
  /* (必須) 検証結果の識別や整理などの管理するにあったてメタデータとして任意で設定可能な単語のフレーズ。(例: verify-for-check) */
  String label = null;
/* (任意) 検証を実行するVC情報の識別子。VC情報の識別子を指定して検証を実行する場合は必須。 */
  String vcInfoId = null;
/* (任意) 検証を実行するVP情報の識別子。VP情報の識別子を指定して検証を実行する場合は必須。 */
  String vpInfoId = null;
/* (任意) 検証を実行するVCのJSONテキストデータ。VCのJSONテキストデータを入力して検証を実行する場合は必須。 */
  Object vcObject = null;
/* (任意) 検証を実行するVPのJSONテキストデータ。VPのJSONテキストデータを入力して検証を実行する場合は必須。 */
  Object vpObject = null;

  VerificationDto();

  @override
  String toString() {
    return 'VerificationDto[label=$label, vcInfoId=$vcInfoId, vpInfoId=$vpInfoId, vcObject=$vcObject, vpObject=$vpObject, ]';
  }

  VerificationDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    label = json['label'];
    vcInfoId = json['vcInfoId'];
    vpInfoId = json['vpInfoId'];
    vcObject = new Object.fromJson(json['vcObject']);
    vpObject = new Object.fromJson(json['vpObject']);
  }

  Map<String, dynamic> toJson() {
    return {
      'label': label,
      'vcInfoId': vcInfoId,
      'vpInfoId': vpInfoId,
      'vcObject': vcObject,
      'vpObject': vpObject
     };
  }

  static List<VerificationDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<VerificationDto>() : json.map((value) => new VerificationDto.fromJson(value)).toList();
  }

  static Map<String, VerificationDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VerificationDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VerificationDto.fromJson(value));
    }
    return map;
  }
}
