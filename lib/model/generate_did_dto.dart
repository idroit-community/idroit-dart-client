part of swagger.api;

class GenerateDidDto {
  /* (必須) 新規生成するDIDのメソッド。(現在対応するDIDメソッド: \"key\", \"ether\", \"ethr:sepolia\", \"ethr:arbitrum:goerli\", \"web\") */
  List<String> didMethod = null;
  //enum didMethodEnum {  key,  web,  ethr:sepolia,  ethr,  ethr:arbitrum:goerli,  };
/* (任意) DIDの識別や整理などの管理するにあったてメタデータとして任意で設定可能な単語のフレーズ。(例: did-for-project1) */
  String label = null;
/* (任意) did:webメソッドでDIDを生成する際に必要なドメイン名。DIDによって指定されたドメインがドメインネームシステム(DNS)を通じて解決されるときのホスト名。did:webメソッド以外では必要のないパラメータなため任意の項目である。 */
  String domainName = null;
/* (任意) DIDの生成目的や用途など任意で設定可能な説明文。 */
  String description = null;

  GenerateDidDto();

  @override
  String toString() {
    return 'GenerateDidDto[didMethod=$didMethod, label=$label, domainName=$domainName, description=$description, ]';
  }

  GenerateDidDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    didMethod = (json['didMethod'] as List).map((item) => item as String).toList();
    label = json['label'];
    domainName = json['domainName'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {
      'didMethod': didMethod,
      'label': label,
      'domainName': domainName,
      'description': description
     };
  }

  static List<GenerateDidDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<GenerateDidDto>() : json.map((value) => new GenerateDidDto.fromJson(value)).toList();
  }

  static Map<String, GenerateDidDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GenerateDidDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GenerateDidDto.fromJson(value));
    }
    return map;
  }
}
