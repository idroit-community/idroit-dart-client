part of swagger.api;



class SettingsApi {
  final ApiClient apiClient;

  SettingsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get all admins
  ///
  /// 
  Future<SettingListResponseDto> settingsControllerFindAll() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/v1/settings".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'SettingListResponseDto') as SettingListResponseDto ;
    } else {
      return null;
    }
  }
  /// Get a specific admin
  ///
  /// 
  Future<SettingResponseDto> settingsControllerFindOne(String key) async {
    Object postBody = null;

    // verify required params are set
    if(key == null) {
     throw new ApiException(400, "Missing required param: key");
    }

    // create path and map variables
    String path = "/api/v1/settings/{key}".replaceAll("{format}","json").replaceAll("{" + "key" + "}", key.toString());

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
          apiClient.deserialize(response.body, 'SettingResponseDto') as SettingResponseDto ;
    } else {
      return null;
    }
  }
}
