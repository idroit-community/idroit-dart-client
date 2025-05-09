part of swagger.api;

class VcSchemaProperty {
  /* The ID of the vcSchema */
  String id = null;
/* property Index number */
  double propIndex = null;
/* property Name of credentialSubject */
  String propName = null;
/* property Type of credentialSubject */
  String propType = null;
/* parent property */
  double parentObjectIndex = null;
/* The VcSchema is origin */
  AllOfVcSchemaPropertyVcSchema vcSchema = null;
/* The date the user was created */
  String createdAt = null;
/* The date the user was last updated */
  String updatedAt = null;

  VcSchemaProperty();

  @override
  String toString() {
    return 'VcSchemaProperty[id=$id, propIndex=$propIndex, propName=$propName, propType=$propType, parentObjectIndex=$parentObjectIndex, vcSchema=$vcSchema, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

  VcSchemaProperty.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    propIndex = json['propIndex'];
    propName = json['propName'];
    propType = json['propType'];
    parentObjectIndex = json['parentObjectIndex'];
    vcSchema = new AllOfVcSchemaPropertyVcSchema.fromJson(json['vcSchema']);
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'propIndex': propIndex,
      'propName': propName,
      'propType': propType,
      'parentObjectIndex': parentObjectIndex,
      'vcSchema': vcSchema,
      'createdAt': createdAt,
      'updatedAt': updatedAt
     };
  }

  static List<VcSchemaProperty> listFromJson(List<dynamic> json) {
    return json == null ? new List<VcSchemaProperty>() : json.map((value) => new VcSchemaProperty.fromJson(value)).toList();
  }

  static Map<String, VcSchemaProperty> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VcSchemaProperty>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VcSchemaProperty.fromJson(value));
    }
    return map;
  }
}
