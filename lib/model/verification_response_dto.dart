part of swagger.api;

class VerificationResponseDto {
  /* 検証結果の識別子 */
  String id = null;
/* 検証結果の識別や整理などの管理するにあったてメタデータとして任意で設定可能な単語のフレーズ。(例: verify-for-check) */
  String label = null;
/* (必須) VC/VPの検証結果(true: 検証に成功, false: 検証に失敗) */
  bool result = null;
/* グループを作成したユーザーアカウント */
  AllOfVerificationResponseDtoCreatedBy createdBy = null;
/* 検証を実行したVC情報の識別子 */
  AllOfVerificationResponseDtoVcInfo vcInfo = null;
/* 検証を実行したVP情報の識別子 */
  AllOfVerificationResponseDtoVpInfo vpInfo = null;
/* 検証実行時の日時 */
  String createdAt = null;
/* 検証結果の最終更新日 */
  String updatedAt = null;

  VerificationResponseDto();

  @override
  String toString() {
    return 'VerificationResponseDto[id=$id, label=$label, result=$result, createdBy=$createdBy, vcInfo=$vcInfo, vpInfo=$vpInfo, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

  VerificationResponseDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    label = json['label'];
    result = json['result'];
    createdBy = new AllOfVerificationResponseDtoCreatedBy.fromJson(json['createdBy']);
    vcInfo = new AllOfVerificationResponseDtoVcInfo.fromJson(json['vcInfo']);
    vpInfo = new AllOfVerificationResponseDtoVpInfo.fromJson(json['vpInfo']);
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'label': label,
      'result': result,
      'createdBy': createdBy,
      'vcInfo': vcInfo,
      'vpInfo': vpInfo,
      'createdAt': createdAt,
      'updatedAt': updatedAt
     };
  }

  static List<VerificationResponseDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<VerificationResponseDto>() : json.map((value) => new VerificationResponseDto.fromJson(value)).toList();
  }

  static Map<String, VerificationResponseDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VerificationResponseDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VerificationResponseDto.fromJson(value));
    }
    return map;
  }
}
