part of swagger.api;

class UserResponseDto {
  /* ユーザーアカウントの識別子 */
  String id = null;
/* ユーザーアカウントの名前 */
  String name = null;
/* ユーザーアカウントのメールアドレス */
  String email = null;
/* ユーザーアクティベーション(true: アクティブ /false: 停止中) */
  bool needActivateFlow = null;
/* ユーザーのアカウントステータス(\"inactive\": アクティブ未完了, \"acrivating\": アクティブ作業途中, \"active\": アクティブ中, \"deactive\": 論理削除済) */
  String status = null;
  //enum statusEnum {  inactive,  activating,  active,  deactive,  };
/* ユーザーのアカウントロール(\"admin\", \"user\", \"client\") */
  String role = null;
  //enum roleEnum {  admin,  user,  client,  };
/* (任意) ユーザーアカウントがアップロードしたファイルの配列。 */
  List<UserToken> userTokens = [];
/* ユーザーアカウントを作成したユーザーアカウント */
  AllOfUserResponseDtoCreatedBy createdBy = null;
/* ユーザーアカウントに紐付けられたDID情報の配列 */
  List<DidInfo> didInfos = [];
/* ユーザーアカウントに紐付けられたVC情報の配列 */
  List<VcInfo> vcInfos = [];
/* ユーザーアカウントに紐付けられたVP情報の配列 */
  List<VpInfo> vpInfos = [];
/* ユーザーアカウントが作成したグループの配列 */
  List<Group> groups = [];
/* ユーザーアカウントに紐付けされたVP情報の配列 */
  List<User> createdUsers = [];
/* ユーザーが作成したVC情報の配列 */
  List<VcInfo> createdVcInfos = [];
/* ユーザーが作成したVP情報の配列 */
  List<VpInfo> createdVpInfos = [];
/* ユーザーアカウントが作成したグループの配列 */
  List<Group> createdGroups = [];
/* ユーザーが作成したDID情報の配列 */
  List<DidInfo> createdDidInfos = [];
/* ユーザーが作成したVCスキーマの配列 */
  List<VcSchema> createdVcSchemas = [];
/* ユーザーアカウントが実行した検証結果の配列 */
  List<Verification> createdVerifications = [];
/* Admin権限アカウントが送信したメールの配列 */
  List<Mail> createdMails = [];
/* ユーザーアカウントに紐付けされたファイルの配列 */
  List<MultipartFile> createdFiles = [];
/* ユーザーアカウントの作成日時 */
  String createdAt = null;
/* ユーザーアカウントの更新日時 */
  String updatedAt = null;

  UserResponseDto();

  @override
  String toString() {
    return 'UserResponseDto[id=$id, name=$name, email=$email, needActivateFlow=$needActivateFlow, status=$status, role=$role, userTokens=$userTokens, createdBy=$createdBy, didInfos=$didInfos, vcInfos=$vcInfos, vpInfos=$vpInfos, groups=$groups, createdUsers=$createdUsers, createdVcInfos=$createdVcInfos, createdVpInfos=$createdVpInfos, createdGroups=$createdGroups, createdDidInfos=$createdDidInfos, createdVcSchemas=$createdVcSchemas, createdVerifications=$createdVerifications, createdMails=$createdMails, createdFiles=$createdFiles, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

  UserResponseDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    email = json['email'];
    needActivateFlow = json['needActivateFlow'];
    status = json['status'];
    role = json['role'];
    userTokens = UserToken.listFromJson(json['userTokens']);
    createdBy = new AllOfUserResponseDtoCreatedBy.fromJson(json['createdBy']);
    didInfos = DidInfo.listFromJson(json['didInfos']);
    vcInfos = VcInfo.listFromJson(json['vcInfos']);
    vpInfos = VpInfo.listFromJson(json['vpInfos']);
    groups = Group.listFromJson(json['groups']);
    createdUsers = User.listFromJson(json['createdUsers']);
    createdVcInfos = VcInfo.listFromJson(json['createdVcInfos']);
    createdVpInfos = VpInfo.listFromJson(json['createdVpInfos']);
    createdGroups = Group.listFromJson(json['createdGroups']);
    createdDidInfos = DidInfo.listFromJson(json['createdDidInfos']);
    createdVcSchemas = VcSchema.listFromJson(json['createdVcSchemas']);
    createdVerifications = Verification.listFromJson(json['createdVerifications']);
    createdMails = Mail.listFromJson(json['createdMails']);
    createdFiles = MultipartFile.listFromJson(json['createdFiles']);
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'needActivateFlow': needActivateFlow,
      'status': status,
      'role': role,
      'userTokens': userTokens,
      'createdBy': createdBy,
      'didInfos': didInfos,
      'vcInfos': vcInfos,
      'vpInfos': vpInfos,
      'groups': groups,
      'createdUsers': createdUsers,
      'createdVcInfos': createdVcInfos,
      'createdVpInfos': createdVpInfos,
      'createdGroups': createdGroups,
      'createdDidInfos': createdDidInfos,
      'createdVcSchemas': createdVcSchemas,
      'createdVerifications': createdVerifications,
      'createdMails': createdMails,
      'createdFiles': createdFiles,
      'createdAt': createdAt,
      'updatedAt': updatedAt
     };
  }

  static List<UserResponseDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserResponseDto>() : json.map((value) => new UserResponseDto.fromJson(value)).toList();
  }

  static Map<String, UserResponseDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserResponseDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserResponseDto.fromJson(value));
    }
    return map;
  }
}
