part of swagger.api;

class Verification {
  /* (必須) 検証結果の識別子 */
  String id = null;
/* (必須) 検証結果の識別や整理などの管理するにあったてメタデータとして任意で設定可能な単語のフレーズ。(例: verify-for-check) */
  String label = null;
/* (必須) VC/VPの検証結果(true: 検証に成功, false: 検証に失敗) */
  bool result = null;
/* (任意) 検証結果を作成したユーザーアカウント */
  AllOfVerificationCreatedBy createdBy = null;
/* (任意) 検証を実行したVC情報の識別子 */
  AllOfVerificationVcInfo vcInfo = null;
/* (任意) 検証を実行したVP情報の識別子 */
  AllOfVerificationVpInfo vpInfo = null;
/* (必須) 検証実行時の日時 */
  String createdAt = null;
/* (必須) 検証結果の最終更新日 */
  String updatedAt = null;

  Verification();

  @override
  String toString() {
    return 'Verification[id=$id, label=$label, result=$result, createdBy=$createdBy, vcInfo=$vcInfo, vpInfo=$vpInfo, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

  Verification.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    label = json['label'];
    result = json['result'];
    createdBy = new AllOfVerificationCreatedBy.fromJson(json['createdBy']);
    vcInfo = new AllOfVerificationVcInfo.fromJson(json['vcInfo']);
    vpInfo = new AllOfVerificationVpInfo.fromJson(json['vpInfo']);
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

  static List<Verification> listFromJson(List<dynamic> json) {
    return json == null ? new List<Verification>() : json.map((value) => new Verification.fromJson(value)).toList();
  }

  static Map<String, Verification> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Verification>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Verification.fromJson(value));
    }
    return map;
  }
}
