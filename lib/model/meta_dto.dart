part of swagger.api;

class MetaDto {
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

  MetaDto();

  @override
  String toString() {
    return 'MetaDto[totalItems=$totalItems, itemCount=$itemCount, itemsPerPage=$itemsPerPage, totalPages=$totalPages, currentPage=$currentPage, ]';
  }

  MetaDto.fromJson(Map<String, dynamic> json) {
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

  static List<MetaDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<MetaDto>() : json.map((value) => new MetaDto.fromJson(value)).toList();
  }

  static Map<String, MetaDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MetaDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MetaDto.fromJson(value));
    }
    return map;
  }
}
