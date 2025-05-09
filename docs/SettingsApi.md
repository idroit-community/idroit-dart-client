# swagger.api.SettingsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**settingsControllerFindAll**](SettingsApi.md#settingsControllerFindAll) | **GET** /api/v1/settings | Get all admins
[**settingsControllerFindOne**](SettingsApi.md#settingsControllerFindOne) | **GET** /api/v1/settings/{key} | Get a specific admin

# **settingsControllerFindAll**
> SettingListResponseDto settingsControllerFindAll()

Get all admins

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new SettingsApi();

try {
    var result = api_instance.settingsControllerFindAll();
    print(result);
} catch (e) {
    print("Exception when calling SettingsApi->settingsControllerFindAll: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SettingListResponseDto**](SettingListResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **settingsControllerFindOne**
> SettingResponseDto settingsControllerFindOne(key)

Get a specific admin

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new SettingsApi();
var key = key_example; // String | 

try {
    var result = api_instance.settingsControllerFindOne(key);
    print(result);
} catch (e) {
    print("Exception when calling SettingsApi->settingsControllerFindOne: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**|  | 

### Return type

[**SettingResponseDto**](SettingResponseDto.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

