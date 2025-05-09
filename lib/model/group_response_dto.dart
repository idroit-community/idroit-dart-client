part of swagger.api;

class GroupResponseDto {
  /* グループの識別子 */
  String id = null;
/*  グループの名前 */
  String name = null;
/* グループの状態(1: アクティブ, 0: 停止中) */
  String status = null;
  //enum statusEnum {  active,  deactive,  };
/* グループの作成目的や用途など任意で設定可能な説明文 */
  String description = null;
/* グループに紐付いたユーザーアカウントの配列 */
  List<User> users = [];
/* グループを作成したユーザーアカウント */
  AllOfGroupResponseDtoCreatedBy createdBy = null;
/* グループに紐付いたVC情報の配列 */
  List<DidInfo> didInfos = [];
/* グループに紐付いたVC情報の配列 */
  List<VcInfo> vcInfos = [];
/* グループに紐付いたVP情報の配列 */
  List<VpInfo> vpInfos = [];
/* グループに紐付いたVCスキーマの配列 */
  List<VcSchema> vcSchemas = [];
/* グループの作成日時 */
  String createdAt = null;
/* グループの最終更新日時 */
  String updatedAt = null;

  GroupResponseDto();

  @override
  String toString() {
    return 'GroupResponseDto[id=$id, name=$name, status=$status, description=$description, users=$users, createdBy=$createdBy, didInfos=$didInfos, vcInfos=$vcInfos, vpInfos=$vpInfos, vcSchemas=$vcSchemas, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

  GroupResponseDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    status = json['status'];
    description = json['description'];
    users = User.listFromJson(json['users']);
    createdBy = new AllOfGroupResponseDtoCreatedBy.fromJson(json['createdBy']);
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

  static List<GroupResponseDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<GroupResponseDto>() : json.map((value) => new GroupResponseDto.fromJson(value)).toList();
  }

  static Map<String, GroupResponseDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GroupResponseDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GroupResponseDto.fromJson(value));
    }
    return map;
  }
}
