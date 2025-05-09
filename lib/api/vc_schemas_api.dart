part of swagger.api;



class VcSchemasApi {
  final ApiClient apiClient;

  VcSchemasApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 新規VCスキーマ作成
  ///
  /// 新規VCスキーマを作成します。
  Future<VcSchemaResponseDto> vcSchemasControllerCreate(CreateVcSchemaDto body) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/api/v1/vc-schemas".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["bearer"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'VcSchemaResponseDto') as VcSchemaResponseDto ;
    } else {
      return null;
    }
  }
  /// VCスキーマ一覧取得
  ///
  /// VCスキーマを一覧として値を返します。
  Future<VcSchemasResponseDto> vcSchemasControllerFindAll({ double page, double limit, String title, String version, String description, bool isBadgeSchema }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/v1/vc-schemas".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    if(title != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "title", title));
    }
    if(version != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "version", version));
    }
    if(description != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "description", description));
    }
    if(isBadgeSchema != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "isBadgeSchema", isBadgeSchema));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["bearer"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'VcSchemasResponseDto') as VcSchemasResponseDto ;
    } else {
      return null;
    }
  }
  /// VCスキーマ情報詳細取得
  ///
  /// リクエストパラメータのidで指定された単一のVCスキーマの詳細情報の値を返します。
  Future<VcSchemaResponseDto> vcSchemasControllerFindOne(String id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v1/vc-schemas/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["bearer"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'VcSchemaResponseDto') as VcSchemaResponseDto ;
    } else {
      return null;
    }
  }
  /// VCスキーマへのグループ紐付け
  ///
  /// VCスキーマに関連するグループを紐付けます。
  Future<VcSchemaResponseDto> vcSchemasControllerUpdate(UpdateVcSchemaDto body, String id) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v1/vc-schemas/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["bearer"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'PUT',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'VcSchemaResponseDto') as VcSchemaResponseDto ;
    } else {
      return null;
    }
  }
}
