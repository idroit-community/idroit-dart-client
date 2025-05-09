part of swagger.api;

class AllOfVerificationsResponseDtoMeta {
  /* Total number of items */
  double totalItems = null;
/* Number of items on the current page */
  double itemCount = null;
/* Number of items per page */
  double itemsPerPage = null;
/* Total number of pages */
  double totalPages = null;
/* Current page number */
  double currentPage = null;

  AllOfVerificationsResponseDtoMeta();

  @override
  String toString() {
    return 'AllOfVerificationsResponseDtoMeta[totalItems=$totalItems, itemCount=$itemCount, itemsPerPage=$itemsPerPage, totalPages=$totalPages, currentPage=$currentPage, ]';
  }

  AllOfVerificationsResponseDtoMeta.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalItems = json['totalItems'];
    itemCount = json['itemCount'];
    itemsPerPage = json['itemsPerPage'];
    totalPages = json['totalPages'];
    currentPage = json['currentPage'];
  }

  Map<String, dynamic> toJson() {
    return {
      'totalItems': totalItems,
      'itemCount': itemCount,
      'itemsPerPage': itemsPerPage,
      'totalPages': totalPages,
      'currentPage': currentPage
     };
  }

  static List<AllOfVerificationsResponseDtoMeta> listFromJson(List<dynamic> json) {
    return json == null ? new List<AllOfVerificationsResponseDtoMeta>() : json.map((value) => new AllOfVerificationsResponseDtoMeta.fromJson(value)).toList();
  }

  static Map<String, AllOfVerificationsResponseDtoMeta> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AllOfVerificationsResponseDtoMeta>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AllOfVerificationsResponseDtoMeta.fromJson(value));
    }
    return map;
  }
}
