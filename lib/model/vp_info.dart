part of swagger.api;

class VpInfo {
  /* (必須) VP情報の識別子 */
  String id = null;
/* (任意) VPの識別や整理などの管理するにあったてメタデータとして任意で設定可能な単語のフレーズ */
  String label = null;
/* (必須) VPのハッシュ値。VPの保管における識別子として用いる。 */
  String hash = null;
/* (任意) VCの発行目的や用途など任意で設定可能な説明文。 */
  String description = null;
/* (必須) VPのバイナリデータ */
  String raw = null;
/* (任意) VP情報を生成したユーザーアカウント */
  AllOfVpInfoCreatedBy createdBy = null;
/* (任意) VP情報と紐付いたアカウント */
  AllOfVpInfoUser user = null;
/* (任意) VPを生成する元となるVC情報 */
  List<VcInfo> vcInfos = [];
/* (任意) VP情報に紐づいたグループの配列 */
  List<Group> groups = [];
/* (任意) VP生成時の署名に用いるDID情報の識別子 */
  AllOfVpInfoDidInfo didInfo = null;
/* (任意) VPの検証結果 */
  List<Verification> verifications = [];
/* (必須) VP情報の作成日時 */
  String createdAt = null;
/* (必須) VP情報の更新日時 */
  String updatedAt = null;

  VpInfo();

  @override
  String toString() {
    return 'VpInfo[id=$id, label=$label, hash=$hash, description=$description, raw=$raw, createdBy=$createdBy, user=$user, vcInfos=$vcInfos, groups=$groups, didInfo=$didInfo, verifications=$verifications, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

  VpInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    label = json['label'];
    hash = json['hash'];
    description = json['description'];
    raw = json['raw'];
    createdBy = new AllOfVpInfoCreatedBy.fromJson(json['createdBy']);
    user = new AllOfVpInfoUser.fromJson(json['user']);
    vcInfos = VcInfo.listFromJson(json['vcInfos']);
    groups = Group.listFromJson(json['groups']);
    didInfo = new AllOfVpInfoDidInfo.fromJson(json['didInfo']);
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
      'raw': raw,
      'createdBy': createdBy,
      'user': user,
      'vcInfos': vcInfos,
      'groups': groups,
      'didInfo': didInfo,
      'verifications': verifications,
      'createdAt': createdAt,
      'updatedAt': updatedAt
     };
  }

  static List<VpInfo> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpInfo>() : json.map((value) => new VpInfo.fromJson(value)).toList();
  }

  static Map<String, VpInfo> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpInfo>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpInfo.fromJson(value));
    }
    return map;
  }
}
