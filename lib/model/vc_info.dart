part of swagger.api;

class VcInfo {
  /* (必須) VC情報の識別子 */
  String id = null;
/* (任意) VCの識別や整理などの管理するにあったてメタデータとして任意で設定可能な単語のフレーズ。(例: vc-for-project1) */
  String label = null;
/* (必須) VCのハッシュ値。VCの保管における識別子として用いる。 */
  String hash = null;
/* (任意) VCの発行目的や用途など任意で設定可能な説明文。 */
  String description = null;
/* (任意) VC情報を生成したユーザーアカウント */
  AllOfVcInfoCreatedBy createdBy = null;
/* (任意) 発行したVCの元となるVCスキーマ */
  AllOfVcInfoVcSchema vcSchema = null;
/* (任意) VC情報と紐付いたアカウント */
  AllOfVcInfoUser user = null;
/* (任意) このVCを元に生成したVP情報の配列 */
  List<VpInfo> vpInfos = [];
/* (任意) VC情報に紐づいたグループの配列 */
  List<Group> groups = [];
/* (任意) VC情報と紐付いたバッジ */
  AllOfVcInfoBadge badge = null;
/* (任意) このVCの検証結果の配列。 */
  List<Verification> verifications = [];
/* (必須) VC情報の作成日時 */
  String createdAt = null;
/* (必須) VC情報の更新日時 */
  String updatedAt = null;

  VcInfo();

  @override
  String toString() {
    return 'VcInfo[id=$id, label=$label, hash=$hash, description=$description, createdBy=$createdBy, vcSchema=$vcSchema, user=$user, vpInfos=$vpInfos, groups=$groups, badge=$badge, verifications=$verifications, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

  VcInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    label = json['label'];
    hash = json['hash'];
    description = json['description'];
    createdBy = new AllOfVcInfoCreatedBy.fromJson(json['createdBy']);
    vcSchema = new AllOfVcInfoVcSchema.fromJson(json['vcSchema']);
    user = new AllOfVcInfoUser.fromJson(json['user']);
    vpInfos = VpInfo.listFromJson(json['vpInfos']);
    groups = Group.listFromJson(json['groups']);
    badge = new AllOfVcInfoBadge.fromJson(json['badge']);
    verifications = Verification.listFromJson(json['verifications']);
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'label': label,
      'hash': hash,
      'description': description,
      'createdBy': createdBy,
      'vcSchema': vcSchema,
      'user': user,
      'vpInfos': vpInfos,
      'groups': groups,
      'badge': badge,
      'verifications': verifications,
      'createdAt': createdAt,
      'updatedAt': updatedAt
     };
  }

  static List<VcInfo> listFromJson(List<dynamic> json) {
    return json == null ? new List<VcInfo>() : json.map((value) => new VcInfo.fromJson(value)).toList();
  }

  static Map<String, VcInfo> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VcInfo>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VcInfo.fromJson(value));
    }
    return map;
  }
}
