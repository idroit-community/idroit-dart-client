part of swagger.api;

class FilesResponseDto {
  /* Array of file items */
  List<MultipartFile> items = [];

  MetaDto meta = null;

  LinkDto links = null;

  FilesResponseDto();

  @override
  String toString() {
    return 'FilesResponseDto[items=$items, meta=$meta, links=$links, ]';
  }

  FilesResponseDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    items = MultipartFile.listFromJson(json['items']);
    meta = new MetaDto.fromJson(json['meta']);
    links = new LinkDto.fromJson(json['links']);
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items,
      'meta': meta,
      'links': links
     };
  }

  static List<FilesResponseDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<FilesResponseDto>() : json.map((value) => new FilesResponseDto.fromJson(value)).toList();
  }

  static Map<String, FilesResponseDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FilesResponseDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FilesResponseDto.fromJson(value));
    }
    return map;
  }
}
