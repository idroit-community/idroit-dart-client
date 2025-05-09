# swagger.api.HealthApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appControllerHealth**](HealthApi.md#appControllerHealth) | **GET** /api/v1/health | ヘルスチェック

# **appControllerHealth**
> appControllerHealth()

ヘルスチェック

ヘルスチェック

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new HealthApi();

try {
    api_instance.appControllerHealth();
} catch (e) {
    print("Exception when calling HealthApi->appControllerHealth: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

