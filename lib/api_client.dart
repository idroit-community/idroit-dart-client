part of swagger.api;

class QueryParam {
  String name;
  String value;

  QueryParam(this.name, this.value);
}

class ApiClient {

  String basePath;
  var client = new BrowserClient();

  Map<String, String> _defaultHeaderMap = {};
  Map<String, Authentication> _authentications = {};

  final _RegList = new RegExp(r'^List<(.*)>$');
  final _RegMap = new RegExp(r'^Map<String,(.*)>$');

  ApiClient({this.basePath: "/"}) {
    // Setup authentications (key: authentication name, value: authentication).
  }

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  dynamic _deserialize(dynamic value, String targetType) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'AddLabelToBadgeDto':
          return new AddLabelToBadgeDto.fromJson(value);
        case 'AddLabelToDidInfoDto':
          return new AddLabelToDidInfoDto.fromJson(value);
        case 'AddLabelToVcInfoDto':
          return new AddLabelToVcInfoDto.fromJson(value);
        case 'AddLabelToVpInfoDto':
          return new AddLabelToVpInfoDto.fromJson(value);
        case 'AllOfBadgeResponseDtoVcInfo':
          return new AllOfBadgeResponseDtoVcInfo.fromJson(value);
        case 'AllOfBadgeResponseDtoVcSchema':
          return new AllOfBadgeResponseDtoVcSchema.fromJson(value);
        case 'AllOfBadgeVcInfo':
          return new AllOfBadgeVcInfo.fromJson(value);
        case 'AllOfBadgeVcSchema':
          return new AllOfBadgeVcSchema.fromJson(value);
        case 'AllOfDidInfoCreatedBy':
          return new AllOfDidInfoCreatedBy.fromJson(value);
        case 'AllOfDidInfoResponseDtoDidInfo':
          return new AllOfDidInfoResponseDtoDidInfo.fromJson(value);
        case 'AllOfDidInfoUser':
          return new AllOfDidInfoUser.fromJson(value);
        case 'AllOfDidInfoVpInfos':
          return new AllOfDidInfoVpInfos.fromJson(value);
        case 'AllOfFileCreatedBy':
          return new AllOfFileCreatedBy.fromJson(value);
        case 'AllOfFileResponseDtoCreatedBy':
          return new AllOfFileResponseDtoCreatedBy.fromJson(value);
        case 'AllOfFileVcSchema':
          return new AllOfFileVcSchema.fromJson(value);
        case 'AllOfGroupCreatedBy':
          return new AllOfGroupCreatedBy.fromJson(value);
        case 'AllOfGroupResponseDtoCreatedBy':
          return new AllOfGroupResponseDtoCreatedBy.fromJson(value);
        case 'AllOfUserCreatedBy':
          return new AllOfUserCreatedBy.fromJson(value);
        case 'AllOfUserResponseDtoCreatedBy':
          return new AllOfUserResponseDtoCreatedBy.fromJson(value);
        case 'AllOfVcContextVcSchema':
          return new AllOfVcContextVcSchema.fromJson(value);
        case 'AllOfVcInfoBadge':
          return new AllOfVcInfoBadge.fromJson(value);
        case 'AllOfVcInfoCreatedBy':
          return new AllOfVcInfoCreatedBy.fromJson(value);
        case 'AllOfVcInfoResponseDtoVcInfo':
          return new AllOfVcInfoResponseDtoVcInfo.fromJson(value);
        case 'AllOfVcInfoUser':
          return new AllOfVcInfoUser.fromJson(value);
        case 'AllOfVcInfoVcSchema':
          return new AllOfVcInfoVcSchema.fromJson(value);
        case 'AllOfVcSchemaCreatedBy':
          return new AllOfVcSchemaCreatedBy.fromJson(value);
        case 'AllOfVcSchemaFile':
          return new AllOfVcSchemaFile.fromJson(value);
        case 'AllOfVcSchemaPropertyVcSchema':
          return new AllOfVcSchemaPropertyVcSchema.fromJson(value);
        case 'AllOfVcSchemaResponseDtoCreatedBy':
          return new AllOfVcSchemaResponseDtoCreatedBy.fromJson(value);
        case 'AllOfVcSchemaResponseDtoFile':
          return new AllOfVcSchemaResponseDtoFile.fromJson(value);
        case 'AllOfVerificationCreatedBy':
          return new AllOfVerificationCreatedBy.fromJson(value);
        case 'AllOfVerificationResponseDtoCreatedBy':
          return new AllOfVerificationResponseDtoCreatedBy.fromJson(value);
        case 'AllOfVerificationResponseDtoVcInfo':
          return new AllOfVerificationResponseDtoVcInfo.fromJson(value);
        case 'AllOfVerificationResponseDtoVpInfo':
          return new AllOfVerificationResponseDtoVpInfo.fromJson(value);
        case 'AllOfVerificationVcInfo':
          return new AllOfVerificationVcInfo.fromJson(value);
        case 'AllOfVerificationVpInfo':
          return new AllOfVerificationVpInfo.fromJson(value);
        case 'AllOfVerificationsResponseDtoLinks':
          return new AllOfVerificationsResponseDtoLinks.fromJson(value);
        case 'AllOfVerificationsResponseDtoMeta':
          return new AllOfVerificationsResponseDtoMeta.fromJson(value);
        case 'AllOfVpInfoCreatedBy':
          return new AllOfVpInfoCreatedBy.fromJson(value);
        case 'AllOfVpInfoDetailDtoVpInfo':
          return new AllOfVpInfoDetailDtoVpInfo.fromJson(value);
        case 'AllOfVpInfoDidInfo':
          return new AllOfVpInfoDidInfo.fromJson(value);
        case 'AllOfVpInfoUser':
          return new AllOfVpInfoUser.fromJson(value);
        case 'Badge':
          return new Badge.fromJson(value);
        case 'BadgeResponseDto':
          return new BadgeResponseDto.fromJson(value);
        case 'BadgesFileBody':
          return new BadgesFileBody.fromJson(value);
        case 'BadgesResponseDto':
          return new BadgesResponseDto.fromJson(value);
        case 'ConnectDidInfosDto':
          return new ConnectDidInfosDto.fromJson(value);
        case 'ConnectUsersDto':
          return new ConnectUsersDto.fromJson(value);
        case 'ConnectVcInfosDto':
          return new ConnectVcInfosDto.fromJson(value);
        case 'ConnectVcSchemasDto':
          return new ConnectVcSchemasDto.fromJson(value);
        case 'ConnectVpInfosDto':
          return new ConnectVpInfosDto.fromJson(value);
        case 'CreateBadgeDto':
          return new CreateBadgeDto.fromJson(value);
        case 'CreateDidDto':
          return new CreateDidDto.fromJson(value);
        case 'CreateGroupDto':
          return new CreateGroupDto.fromJson(value);
        case 'CreateUserDto':
          return new CreateUserDto.fromJson(value);
        case 'CreateVcInfoDto':
          return new CreateVcInfoDto.fromJson(value);
        case 'CreateVcSchemaDto':
          return new CreateVcSchemaDto.fromJson(value);
        case 'CreateVpInfoDto':
          return new CreateVpInfoDto.fromJson(value);
        case 'DidInfo':
          return new DidInfo.fromJson(value);
        case 'DidInfoResponseDto':
          return new DidInfoResponseDto.fromJson(value);
        case 'DidInfosResponseDto':
          return new DidInfosResponseDto.fromJson(value);
        case 'File':
          return new File.fromJson(value);
        case 'FileResponseDto':
          return new FileResponseDto.fromJson(value);
        case 'FilesResponseDto':
          return new FilesResponseDto.fromJson(value);
        case 'GenerateDidDto':
          return new GenerateDidDto.fromJson(value);
        case 'GenerateVpDto':
          return new GenerateVpDto.fromJson(value);
        case 'GetProfileResponseDto':
          return new GetProfileResponseDto.fromJson(value);
        case 'Group':
          return new Group.fromJson(value);
        case 'GroupResponseDto':
          return new GroupResponseDto.fromJson(value);
        case 'GroupsResponseDto':
          return new GroupsResponseDto.fromJson(value);
        case 'IssueVcInfoDto':
          return new IssueVcInfoDto.fromJson(value);
        case 'LinkDto':
          return new LinkDto.fromJson(value);
        case 'Mail':
          return new Mail.fromJson(value);
        case 'MailsResponseDto':
          return new MailsResponseDto.fromJson(value);
        case 'MetaDto':
          return new MetaDto.fromJson(value);
        case 'RegisterDidDto':
          return new RegisterDidDto.fromJson(value);
        case 'RegistrationProcessDto':
          return new RegistrationProcessDto.fromJson(value);
        case 'ResolveDidDto':
          return new ResolveDidDto.fromJson(value);
        case 'ResolveDidResponseDto':
          return new ResolveDidResponseDto.fromJson(value);
        case 'SendMailBatchDto':
          return new SendMailBatchDto.fromJson(value);
        case 'SendMailDto':
          return new SendMailDto.fromJson(value);
        case 'Setting':
          return new Setting.fromJson(value);
        case 'SettingListResponseDto':
          return new SettingListResponseDto.fromJson(value);
        case 'SettingResponseDto':
          return new SettingResponseDto.fromJson(value);
        case 'SignInDto':
          return new SignInDto.fromJson(value);
        case 'SignInResponseDto':
          return new SignInResponseDto.fromJson(value);
        case 'UpdateVcInfoDto':
          return new UpdateVcInfoDto.fromJson(value);
        case 'UpdateVcSchemaDto':
          return new UpdateVcSchemaDto.fromJson(value);
        case 'UploadVCDto':
          return new UploadVCDto.fromJson(value);
        case 'UploadVPDto':
          return new UploadVPDto.fromJson(value);
        case 'User':
          return new User.fromJson(value);
        case 'UserResponseDto':
          return new UserResponseDto.fromJson(value);
        case 'UserToken':
          return new UserToken.fromJson(value);
        case 'UsersResponseDto':
          return new UsersResponseDto.fromJson(value);
        case 'V1FilesBody':
          return new V1FilesBody.fromJson(value);
        case 'VcContext':
          return new VcContext.fromJson(value);
        case 'VcInfo':
          return new VcInfo.fromJson(value);
        case 'VcInfoResponseDto':
          return new VcInfoResponseDto.fromJson(value);
        case 'VcInfosResponseDto':
          return new VcInfosResponseDto.fromJson(value);
        case 'VcSchema':
          return new VcSchema.fromJson(value);
        case 'VcSchemaProperty':
          return new VcSchemaProperty.fromJson(value);
        case 'VcSchemaResponseDto':
          return new VcSchemaResponseDto.fromJson(value);
        case 'VcSchemasResponseDto':
          return new VcSchemasResponseDto.fromJson(value);
        case 'Verification':
          return new Verification.fromJson(value);
        case 'VerificationDto':
          return new VerificationDto.fromJson(value);
        case 'VerificationResponseDto':
          return new VerificationResponseDto.fromJson(value);
        case 'VerificationsResponseDto':
          return new VerificationsResponseDto.fromJson(value);
        case 'VerifiyBadgeFileReponseDto':
          return new VerifiyBadgeFileReponseDto.fromJson(value);
        case 'VerifiyBadgeReponseDto':
          return new VerifiyBadgeReponseDto.fromJson(value);
        case 'VerifyBadgeDto':
          return new VerifyBadgeDto.fromJson(value);
        case 'VpInfo':
          return new VpInfo.fromJson(value);
        case 'VpInfoDetailDto':
          return new VpInfoDetailDto.fromJson(value);
        case 'VpInfoResponseDto':
          return new VpInfoResponseDto.fromJson(value);
        default:
          {
            Match match;
            if (value is List &&
                (match = _RegList.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return value.map((v) => _deserialize(v, newTargetType)).toList();
            } else if (value is Map &&
                (match = _RegMap.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return new Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, newTargetType)));
            }
          }
      }
    } catch (e, stack) {
      throw new ApiException.withInner(500, 'Exception during deserialization.', e, stack);
    }
    throw new ApiException(500, 'Could not find a suitable class for deserialization');
  }

  dynamic deserialize(String jsonVal, String targetType) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') return jsonVal;

    var decodedJson = json.decode(jsonVal);
    return _deserialize(decodedJson, targetType);
  }

  String serialize(Object obj) {
    String serialized = '';
    if (obj == null) {
      serialized = '';
    } else {
      serialized = json.encode(obj);
    }
    return serialized;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi' a key might appear multiple times.
  Future<Response> invokeAPI(String path,
                             String method,
                             Iterable<QueryParam> queryParams,
                             Object body,
                             Map<String, String> headerParams,
                             Map<String, String> formParams,
                             String contentType,
                             List<String> authNames) async {

    _updateParamsForAuth(authNames, queryParams, headerParams);

    var ps = queryParams.where((p) => p.value != null).map((p) => '${Uri.encodeComponent(p.name)}=${Uri.encodeComponent(p.value)}');
    String queryString = ps.isNotEmpty ?
                         '?' + ps.join('&') :
                         '';

    String url = basePath + path + queryString;

    headerParams.addAll(_defaultHeaderMap);
    headerParams['Content-Type'] = contentType;

    if(body is MultipartRequest) {
      var request = new MultipartRequest(method, Uri.parse(url));
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      var response = await client.send(request);
      return Response.fromStream(response);
    } else {
      var msgBody = contentType == "application/x-www-form-urlencoded" ? formParams : serialize(body);
      switch(method) {
        case "POST":
          return client.post(url, headers: headerParams, body: msgBody);
        case "PUT":
          return client.put(url, headers: headerParams, body: msgBody);
        case "DELETE":
          return client.delete(url, headers: headerParams);
        case "PATCH":
          return client.patch(url, headers: headerParams, body: msgBody);
        default:
          return client.get(url, headers: headerParams);
      }
    }
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(List<String> authNames, List<QueryParam> queryParams, Map<String, String> headerParams) {
    authNames.forEach((authName) {
      Authentication auth = _authentications[authName];
      if (auth == null) throw new ArgumentError("Authentication undefined: " + authName);
      auth.applyToParams(queryParams, headerParams);
    });
  }

  void setAccessToken(String accessToken) {
    _authentications.forEach((key, auth) {
      if (auth is OAuth) {
        auth.setAccessToken(accessToken);
      }
    });
  }
}
