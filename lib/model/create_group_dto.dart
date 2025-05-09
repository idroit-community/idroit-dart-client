part of swagger.api;

class CreateGroupDto {
  /* (必須) グループの名前。(例: プロジェクト名や企業名など) */
  String name = null;
/* (任意) グループの作成目的や用途など任意で設定可能な説明文 */
  String description = null;

  CreateGroupDto();

  @override
  String toString() {
    return 'CreateGroupDto[name=$name, description=$description, ]';
  }

  CreateGroupDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description
     };
  }

  static List<CreateGroupDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateGroupDto>() : json.map((value) => new CreateGroupDto.fromJson(value)).toList();
  }

  static Map<String, CreateGroupDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateGroupDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateGroupDto.fromJson(value));
    }
    return map;
  }
}
