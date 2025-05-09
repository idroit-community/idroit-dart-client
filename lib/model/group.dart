part of swagger.api;

class Group {
  /* (必須) グループの識別子 */
  String id = null;
/* (必須) グループの名前。(例: プロジェクト名や企業名など) */
  String name = null;
/* (必須) グループの状態(1: アクティブ, 0: 停止中) */
  String status = null;
  //enum statusEnum {  active,  deactive,  };
/* (任意) グループの作成目的や用途など任意で設定可能な説明文 */
  String description = null;
/* (任意) グループに紐付いたアカウントの配列 */
  List<User> users = [];
/* (必須) グループを作成したユーザーアカウント。 */
  AllOfGroupCreatedBy createdBy = null;
/* (任意) グループに紐付いたDID情報の配列 */
  List<DidInfo> didInfos = [];
/* (任意) グループに紐付いたVC情報の配列 */
  List<VcInfo> vcInfos = [];
/* (任意) グループに紐付いたVP情報の配列 */
  List<VpInfo> vpInfos = [];
/* (任意) グループに紐付いたVCスキーマの配列 */
  List<VcSchema> vcSchemas = [];
/* (必須) グループの作成日時 */
  String createdAt = null;
/* (必須) グループの最終更新日時 */
  String updatedAt = null;

  Group();

  @override
  String toString() {
    return 'Group[id=$id, name=$name, status=$status, description=$description, users=$users, createdBy=$createdBy, didInfos=$didInfos, vcInfos=$vcInfos, vpInfos=$vpInfos, vcSchemas=$vcSchemas, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

  Group.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    status = json['status'];
    description = json['description'];
    users = User.listFromJson(json['users']);
    createdBy = new AllOfGroupCreatedBy.fromJson(json['createdBy']);
    didInfos = DidInfo.listFromJson(json['didInfos']);
    vcInfos = VcInfo.listFromJson(json['vcInfos']);
    vpInfos = VpInfo.listFromJson(json['vpInfos']);
    vcSchemas = VcSchema.listFromJson(json['vcSchemas']);
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'status': status,
      'description': description,
      'users': users,
      'createdBy': createdBy,
      'didInfos': didInfos,
      'vcInfos': vcInfos,
      'vpInfos': vpInfos,
      'vcSchemas': vcSchemas,
      'createdAt': createdAt,
      'updatedAt': updatedAt
     };
  }

  static List<Group> listFromJson(List<dynamic> json) {
    return json == null ? new List<Group>() : json.map((value) => new Group.fromJson(value)).toList();
  }

  static Map<String, Group> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Group>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Group.fromJson(value));
    }
    return map;
  }
}
