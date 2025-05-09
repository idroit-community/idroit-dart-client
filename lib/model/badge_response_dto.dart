part of swagger.api;

class BadgeResponseDto {
  /* バッジの識別子 */
  String id = null;
/* バッジのラベル名 */
  String label = null;
/* バッジのファイル名 */
  String filename = null;
/* バッジの作成目的や用途など任意で設定可能な説明文 */
  String description = null;
/* バッジの状態(1: 利用可, 0: 利用停止中) */
  double status = null;
/* バッジに紐付いたVCスキーマの配列 */
  AllOfBadgeResponseDtoVcSchema vcSchema = null;
/* バッジに紐付いたVC情報の配列 */
  AllOfBadgeResponseDtoVcInfo vcInfo = null;
/* バッジの作成日時 */
  String createdAt = null;
/* バッジの最終更新日時 */
  String updatedAt = null;

  BadgeResponseDto();

  @override
  String toString() {
    return 'BadgeResponseDto[id=$id, label=$label, filename=$filename, description=$description, status=$status, vcSchema=$vcSchema, vcInfo=$vcInfo, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

  BadgeResponseDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    label = json['label'];
    filename = json['filename'];
    description = json['description'];
    status = json['status'];
    vcSchema = new AllOfBadgeResponseDtoVcSchema.fromJson(json['vcSchema']);
    vcInfo = new AllOfBadgeResponseDtoVcInfo.fromJson(json['vcInfo']);
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'label': label,
      'filename': filename,
      'description': description,
      'status': status,
      'vcSchema': vcSchema,
      'vcInfo': vcInfo,
      'createdAt': createdAt,
      'updatedAt': updatedAt
     };
  }

  static List<BadgeResponseDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<BadgeResponseDto>() : json.map((value) => new BadgeResponseDto.fromJson(value)).toList();
  }

  static Map<String, BadgeResponseDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BadgeResponseDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BadgeResponseDto.fromJson(value));
    }
    return map;
  }
}
