part of swagger.api;

class VcContext {
  /* (必須) VCスキーマの識別子 */
  String id = null;
/* (必須) VCスキーマのタイトル */
  String context = null;
/* (任意) contextが紐づくVCスキーマ */
  AllOfVcContextVcSchema vcSchema = null;
/* (必須) VCスキーマの作成日時 */
  String createdAt = null;
/* (必須) VCスキーマの更新日時 */
  String updatedAt = null;

  VcContext();

  @override
  String toString() {
    return 'VcContext[id=$id, context=$context, vcSchema=$vcSchema, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

  VcContext.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    context = json['context'];
    vcSchema = new AllOfVcContextVcSchema.fromJson(json['vcSchema']);
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'context': context,
      'vcSchema': vcSchema,
      'createdAt': createdAt,
      'updatedAt': updatedAt
     };
  }

  static List<VcContext> listFromJson(List<dynamic> json) {
    return json == null ? new List<VcContext>() : json.map((value) => new VcContext.fromJson(value)).toList();
  }

  static Map<String, VcContext> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VcContext>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VcContext.fromJson(value));
    }
    return map;
  }
}
