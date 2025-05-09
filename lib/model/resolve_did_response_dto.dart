part of swagger.api;

class ResolveDidResponseDto {
  
  List<String> context = [];

  String id = null;

  List<Object> verificationMethod = [];

  List<String> assertionMethod = [];

  List<String> authentication = [];

  List<String> capabilityInvocation = [];

  List<String> capabilityDelegation = [];

  List<String> keyAgreement = [];

  ResolveDidResponseDto();

  @override
  String toString() {
    return 'ResolveDidResponseDto[context=$context, id=$id, verificationMethod=$verificationMethod, assertionMethod=$assertionMethod, authentication=$authentication, capabilityInvocation=$capabilityInvocation, capabilityDelegation=$capabilityDelegation, keyAgreement=$keyAgreement, ]';
  }

  ResolveDidResponseDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    context = (json['context'] as List).map((item) => item as String).toList();
    id = json['id'];
    verificationMethod = Object.listFromJson(json['verificationMethod']);
    assertionMethod = (json['assertionMethod'] as List).map((item) => item as String).toList();
    authentication = (json['authentication'] as List).map((item) => item as String).toList();
    capabilityInvocation = (json['capabilityInvocation'] as List).map((item) => item as String).toList();
    capabilityDelegation = (json['capabilityDelegation'] as List).map((item) => item as String).toList();
    keyAgreement = (json['keyAgreement'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'context': context,
      'id': id,
      'verificationMethod': verificationMethod,
      'assertionMethod': assertionMethod,
      'authentication': authentication,
      'capabilityInvocation': capabilityInvocation,
      'capabilityDelegation': capabilityDelegation,
      'keyAgreement': keyAgreement
     };
  }

  static List<ResolveDidResponseDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResolveDidResponseDto>() : json.map((value) => new ResolveDidResponseDto.fromJson(value)).toList();
  }

  static Map<String, ResolveDidResponseDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ResolveDidResponseDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ResolveDidResponseDto.fromJson(value));
    }
    return map;
  }
}
