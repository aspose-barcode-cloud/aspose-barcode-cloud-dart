# aspose_barcode_cloud.api.StorageApi

## Load the API package
```dart
import 'package:aspose_barcode_cloud/api.dart';
```

All URIs are relative to *https://api.aspose.cloud/v3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getDiscUsage**](StorageApi.md#getDiscUsage) | **GET** /barcode/storage/disc | Get disc usage
[**getFileVersions**](StorageApi.md#getFileVersions) | **GET** /barcode/storage/version/{path} | Get file versions
[**objectExists**](StorageApi.md#objectExists) | **GET** /barcode/storage/exist/{path} | Check if file or folder exists
[**storageExists**](StorageApi.md#storageExists) | **GET** /barcode/storage/{storageName}/exist | Check if storage exists


# **getDiscUsage**
> DiscUsage getDiscUsage(storageName)

Get disc usage

### Example 
```dart
import 'package:aspose_barcode_cloud/api.dart';
// TODO Configure OAuth2 access token for authorization: JWT
//aspose_barcode_cloud.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StorageApi();
var storageName = storageName_example; // String | Storage name

try { 
    var result = api_instance.getDiscUsage(storageName);
    print(result);
} catch (e) {
    print("Exception when calling StorageApi->getDiscUsage: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storageName** | **String**| Storage name | [optional] 

### Return type

[**DiscUsage**](DiscUsage.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


# **getFileVersions**
> FileVersions getFileVersions(path, storageName)

Get file versions

### Example 
```dart
import 'package:aspose_barcode_cloud/api.dart';
// TODO Configure OAuth2 access token for authorization: JWT
//aspose_barcode_cloud.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StorageApi();
var path = path_example; // String | File path e.g. '/file.ext'
var storageName = storageName_example; // String | Storage name

try { 
    var result = api_instance.getFileVersions(path, storageName);
    print(result);
} catch (e) {
    print("Exception when calling StorageApi->getFileVersions: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| File path e.g. &#39;/file.ext&#39; | 
 **storageName** | **String**| Storage name | [optional] 

### Return type

[**FileVersions**](FileVersions.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


# **objectExists**
> ObjectExist objectExists(path, storageName, versionId)

Check if file or folder exists

### Example 
```dart
import 'package:aspose_barcode_cloud/api.dart';
// TODO Configure OAuth2 access token for authorization: JWT
//aspose_barcode_cloud.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StorageApi();
var path = path_example; // String | File or folder path e.g. '/file.ext' or '/folder'
var storageName = storageName_example; // String | Storage name
var versionId = versionId_example; // String | File version ID

try { 
    var result = api_instance.objectExists(path, storageName, versionId);
    print(result);
} catch (e) {
    print("Exception when calling StorageApi->objectExists: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| File or folder path e.g. &#39;/file.ext&#39; or &#39;/folder&#39; | 
 **storageName** | **String**| Storage name | [optional] 
 **versionId** | **String**| File version ID | [optional] 

### Return type

[**ObjectExist**](ObjectExist.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


# **storageExists**
> StorageExist storageExists(storageName)

Check if storage exists

### Example 
```dart
import 'package:aspose_barcode_cloud/api.dart';
// TODO Configure OAuth2 access token for authorization: JWT
//aspose_barcode_cloud.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StorageApi();
var storageName = storageName_example; // String | Storage name

try { 
    var result = api_instance.storageExists(storageName);
    print(result);
} catch (e) {
    print("Exception when calling StorageApi->storageExists: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storageName** | **String**| Storage name | 

### Return type

[**StorageExist**](StorageExist.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


