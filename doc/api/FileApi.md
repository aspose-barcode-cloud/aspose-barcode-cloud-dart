# aspose_barcode_cloud.api.FileApi

## Load the API package
```dart
import 'package:aspose_barcode_cloud/api.dart';
```

All URIs are relative to *https://api.aspose.cloud/v3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**copyFile**](FileApi.md#copyFile) | **PUT** /barcode/storage/file/copy/{srcPath} | Copy file
[**deleteFile**](FileApi.md#deleteFile) | **DELETE** /barcode/storage/file/{path} | Delete file
[**downloadFile**](FileApi.md#downloadFile) | **GET** /barcode/storage/file/{path} | Download file
[**moveFile**](FileApi.md#moveFile) | **PUT** /barcode/storage/file/move/{srcPath} | Move file
[**uploadFile**](FileApi.md#uploadFile) | **PUT** /barcode/storage/file/{path} | Upload file


# **copyFile**
> copyFile(srcPath, destPath, srcStorageName, destStorageName, versionId)

Copy file

### Example 
```dart
import 'package:aspose_barcode_cloud/api.dart';
// TODO Configure OAuth2 access token for authorization: JWT
//aspose_barcode_cloud.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new FileApi();
var srcPath = srcPath_example; // String | Source file path e.g. '/folder/file.ext'
var destPath = destPath_example; // String | Destination file path
var srcStorageName = srcStorageName_example; // String | Source storage name
var destStorageName = destStorageName_example; // String | Destination storage name
var versionId = versionId_example; // String | File version ID to copy

try { 
    api_instance.copyFile(srcPath, destPath, srcStorageName, destStorageName, versionId);
} catch (e) {
    print("Exception when calling FileApi->copyFile: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **srcPath** | **String**| Source file path e.g. &#39;/folder/file.ext&#39; | 
 **destPath** | **String**| Destination file path | 
 **srcStorageName** | **String**| Source storage name | [optional] 
 **destStorageName** | **String**| Destination storage name | [optional] 
 **versionId** | **String**| File version ID to copy | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


# **deleteFile**
> deleteFile(path, storageName, versionId)

Delete file

### Example 
```dart
import 'package:aspose_barcode_cloud/api.dart';
// TODO Configure OAuth2 access token for authorization: JWT
//aspose_barcode_cloud.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new FileApi();
var path = path_example; // String | File path e.g. '/folder/file.ext'
var storageName = storageName_example; // String | Storage name
var versionId = versionId_example; // String | File version ID to delete

try { 
    api_instance.deleteFile(path, storageName, versionId);
} catch (e) {
    print("Exception when calling FileApi->deleteFile: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| File path e.g. &#39;/folder/file.ext&#39; | 
 **storageName** | **String**| Storage name | [optional] 
 **versionId** | **String**| File version ID to delete | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


# **downloadFile**
> MultipartFile downloadFile(path, storageName, versionId)

Download file

### Example 
```dart
import 'package:aspose_barcode_cloud/api.dart';
// TODO Configure OAuth2 access token for authorization: JWT
//aspose_barcode_cloud.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new FileApi();
var path = path_example; // String | File path e.g. '/folder/file.ext'
var storageName = storageName_example; // String | Storage name
var versionId = versionId_example; // String | File version ID to download

try { 
    var result = api_instance.downloadFile(path, storageName, versionId);
    print(result);
} catch (e) {
    print("Exception when calling FileApi->downloadFile: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| File path e.g. &#39;/folder/file.ext&#39; | 
 **storageName** | **String**| Storage name | [optional] 
 **versionId** | **String**| File version ID to download | [optional] 

### Return type

[**MultipartFile**](File.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data


# **moveFile**
> moveFile(srcPath, destPath, srcStorageName, destStorageName, versionId)

Move file

### Example 
```dart
import 'package:aspose_barcode_cloud/api.dart';
// TODO Configure OAuth2 access token for authorization: JWT
//aspose_barcode_cloud.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new FileApi();
var srcPath = srcPath_example; // String | Source file path e.g. '/src.ext'
var destPath = destPath_example; // String | Destination file path e.g. '/dest.ext'
var srcStorageName = srcStorageName_example; // String | Source storage name
var destStorageName = destStorageName_example; // String | Destination storage name
var versionId = versionId_example; // String | File version ID to move

try { 
    api_instance.moveFile(srcPath, destPath, srcStorageName, destStorageName, versionId);
} catch (e) {
    print("Exception when calling FileApi->moveFile: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **srcPath** | **String**| Source file path e.g. &#39;/src.ext&#39; | 
 **destPath** | **String**| Destination file path e.g. &#39;/dest.ext&#39; | 
 **srcStorageName** | **String**| Source storage name | [optional] 
 **destStorageName** | **String**| Destination storage name | [optional] 
 **versionId** | **String**| File version ID to move | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


# **uploadFile**
> FilesUploadResult uploadFile(path, file, storageName)

Upload file

### Example 
```dart
import 'package:aspose_barcode_cloud/api.dart';
// TODO Configure OAuth2 access token for authorization: JWT
//aspose_barcode_cloud.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new FileApi();
var path = path_example; // String | Path where to upload including filename and extension e.g. /file.ext or /Folder 1/file.ext  If the content is multipart and path does not contains the file name it tries to get them from filename parameter  from Content-Disposition header.
var file = /path/to/file.txt; // MultipartFile | File to upload
var storageName = storageName_example; // String | Storage name

try { 
    var result = api_instance.uploadFile(path, file, storageName);
    print(result);
} catch (e) {
    print("Exception when calling FileApi->uploadFile: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| Path where to upload including filename and extension e.g. /file.ext or /Folder 1/file.ext  If the content is multipart and path does not contains the file name it tries to get them from filename parameter  from Content-Disposition header. | 
 **file** | **MultipartFile**| File to upload | 
 **storageName** | **String**| Storage name | [optional] 

### Return type

[**FilesUploadResult**](FilesUploadResult.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json


