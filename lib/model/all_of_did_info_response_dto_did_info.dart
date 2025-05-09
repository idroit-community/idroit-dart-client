part of swagger.api;

class AllOfDidInfoResponseDtoDidInfo {
  /* (必須) DID情報の識別子 */
  String id = null;
/* (必須) DID情報の管理に用いるユニークな識別子 */
  String manageUuid = null;
/* (必須) DID */
  String did = null;
/* (必須) DIDメソッド */
  String method = null;
  //enum methodEnum {  key,  web,  ethr,  ethr:arbitrum:goerli,  ethr:sepolia,  };
/* (任意) DIDの識別や整理などの管理するにあったてメタデータとして任意で設定可能な単語のフレーズ。(例: did-for-project1) */
  String label = null;
/* (任意) did:webメソッドでDIDを生成する際に必要なドメイン名。DIDによって指定されたドメインがドメインネームシステム(DNS)を通じて解決されるときのホスト名。did:webメソッド以外では必要のないカラムである。 */
  String domainName = null;
/* (必須) DID情報に紐付いた秘密鍵を本アプリケーションで保管しているか否か */
  bool existPrivateKey = null;
/* (任意) DID情報の生成目的や用途など任意で設定可能な説明文 */
  String description = null;
/* (任意) DID情報に紐付いたアカウントの配列 */
  Object user = null;
/* (任意) DIDを生成したユーザーアカウント */
  Object createdBy = null;
/* (任意) 生成時に署名にDIDを用いたVP情報 */
  Object vpInfos = null;
/* (任意) DID情報に紐づいたグループの配列 */
  List<Group> groups = [];
/* (必須) DID情報の作成日時 */
  String createdAt = null;
/* (必須) DID情報の最終更新 */
  String updatedAt = null;

  AllOfDidInfoResponseDtoDidInfo();

  @override
  String toString() {
    return 'AllOfDidInfoResponseDtoDidInfo[id=$id, manageUuid=$manageUuid, did=$did, method=$method, label=$label, domainName=$domainName, existPrivateKey=$existPrivateKey, description=$description, user=$user, createdBy=$createdBy, vpInfos=$vpInfos, groups=$groups, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

  AllOfDidInfoResponseDtoDidInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    manageUuid = json['manageUuid'];
    did = json['did'];
    method = json['method'];
    label = json['label'];
    domainName = json['domainName'];
    existPrivateKey = json['existPrivateKey'];
    description = json['description'];
    user = new Object.fromJson(json['user']);
    createdBy = new Object.fromJson(json['createdBy']);
    vpInfos = new Object.fromJson(json['vpInfos']);
    groups = Group.listFromJson(json['groups']);
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'manageUuid': manageUuid,
      'did': did,
      'method': method,
      'label': label,
      'domainName': domainName,
      'existPrivateKey': existPrivateKey,
      'description': description,
      'user': user,
      'createdBy': createdBy,
      'vpInfos': vpInfos,
      'groups': groups,
      'createdAt': createdAt,
      'updatedAt': updatedAt
     };
  }

  static List<AllOfDidInfoResponseDtoDidInfo> listFromJson(List<dynamic> json) {
    return json == null ? new List<AllOfDidInfoResponseDtoDidInfo>() : json.map((value) => new AllOfDidInfoResponseDtoDidInfo.fromJson(value)).toList();
  }

  static Map<String, AllOfDidInfoResponseDtoDidInfo> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AllOfDidInfoResponseDtoDidInfo>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AllOfDidInfoResponseDtoDidInfo.fromJson(value));
    }
    return map;
  }
}
