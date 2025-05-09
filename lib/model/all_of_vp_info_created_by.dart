part of swagger.api;

class AllOfVpInfoCreatedBy {
  /* アカウントの識別子 */
  String id = null;
/* アカウントの名前 */
  String name = null;
/* アカウントのメールアドレス */
  String email = null;
/* アカウントのパスワード(8文字以上20字未満) */
  String password = null;
/* (必須: {default: false}) アカウントの有効化フローが必要か否か(true: 必要 /false: 不要) */
  bool needActivateFlow = null;
/* ユーザーのアカウントステータス */
  String status = null;
  //enum statusEnum {  inactive,  activating,  active,  deactive,  };
/* アカウントのロール(admin/user/clinet) */
  String role = null;
  //enum roleEnum {  admin,  user,  client,  };
/* (任意) このアカウントを作成したユーザー */
  Object createdBy = null;
/* (任意) アカウントに紐付けされたDID情報の配列 */
  List<DidInfo> didInfos = [];
/* (任意) アカウントに紐付けされたVC情報の配列 */
  List<VcInfo> vcInfos = [];
/* (任意) アカウントに紐付けされたVP情報の配列 */
  List<VpInfo> vpInfos = [];
/* (任意) アカウントに紐付けされたグループの配列 */
  List<Group> groups = [];
/* (任意) ユーザーアカウントがアップロードしたファイルの配列。 */
  List<UserToken> userTokens = [];
/* (任意) このユーザーによって作成されたアカウントの配列 */
  List<User> createdUsers = [];
/* (任意) アカウントに紐付けされたVC情報の配列 */
  List<VcInfo> createdVcInfos = [];
/* (任意) アカウントに紐付けされたVP情報の配列 */
  List<VpInfo> createdVpInfos = [];
/* (任意) アカウントに作成したグループの配列 */
  List<Group> createdGroups = [];
/* (任意) アカウントが作成したDID情報の配列 */
  List<DidInfo> createdDidInfos = [];
/* (任意) ユーザーアカウントが作成したVCスキーマの配列。 */
  List<VcSchema> createdVcSchemas = [];
/* (任意) ユーザーアカウントが実行した検証結果の配列。 */
  List<Verification> createdVerifications = [];
/* (任意) Admin権限アカウントが送信したメールの配列(Adminロール以外の場合、関係のないカラム) */
  List<Mail> createdMails = [];
/* (任意) ユーザーアカウントがアップロードしたファイルの配列。 */
  List<MultipartFile> createdFiles = [];
/* ユーザーアカウントの作成日時 */
  String createdAt = null;
/* ユーザーアカウントの更新日時 */
  String updatedAt = null;

  AllOfVpInfoCreatedBy();

  @override
  String toString() {
    return 'AllOfVpInfoCreatedBy[id=$id, name=$name, email=$email, password=$password, needActivateFlow=$needActivateFlow, status=$status, role=$role, createdBy=$createdBy, didInfos=$didInfos, vcInfos=$vcInfos, vpInfos=$vpInfos, groups=$groups, userTokens=$userTokens, createdUsers=$createdUsers, createdVcInfos=$createdVcInfos, createdVpInfos=$createdVpInfos, createdGroups=$createdGroups, createdDidInfos=$createdDidInfos, createdVcSchemas=$createdVcSchemas, createdVerifications=$createdVerifications, createdMails=$createdMails, createdFiles=$createdFiles, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

  AllOfVpInfoCreatedBy.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    needActivateFlow = json['needActivateFlow'];
    status = json['status'];
    role = json['role'];
    createdBy = new Object.fromJson(json['createdBy']);
    didInfos = DidInfo.listFromJson(json['didInfos']);
    vcInfos = VcInfo.listFromJson(json['vcInfos']);
    vpInfos = VpInfo.listFromJson(json['vpInfos']);
    groups = Group.listFromJson(json['groups']);
    userTokens = UserToken.listFromJson(json['userTokens']);
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
      'password': password,
      'needActivateFlow': needActivateFlow,
      'status': status,
      'role': role,
      'createdBy': createdBy,
      'didInfos': didInfos,
      'vcInfos': vcInfos,
      'vpInfos': vpInfos,
      'groups': groups,
      'userTokens': userTokens,
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

  static List<AllOfVpInfoCreatedBy> listFromJson(List<dynamic> json) {
    return json == null ? new List<AllOfVpInfoCreatedBy>() : json.map((value) => new AllOfVpInfoCreatedBy.fromJson(value)).toList();
  }

  static Map<String, AllOfVpInfoCreatedBy> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AllOfVpInfoCreatedBy>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AllOfVpInfoCreatedBy.fromJson(value));
    }
    return map;
  }
}
