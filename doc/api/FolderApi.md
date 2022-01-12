# aspose_barcode_cloud.api.FolderApi

## Load the API package
```dart
import 'package:aspose_barcode_cloud/api.dart';
```

All URIs are relative to *https://api.aspose.cloud/v3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**copyFolder**](FolderApi.md#copyFolder) | **PUT** /barcode/storage/folder/copy/{srcPath} | Copy folder
[**createFolder**](FolderApi.md#createFolder) | **PUT** /barcode/storage/folder/{path} | Create the folder
[**deleteFolder**](FolderApi.md#deleteFolder) | **DELETE** /barcode/storage/folder/{path} | Delete folder
[**getFilesList**](FolderApi.md#getFilesList) | **GET** /barcode/storage/folder/{path} | Get all files and folders within a folder
[**moveFolder**](FolderApi.md#moveFolder) | **PUT** /barcode/storage/folder/move/{srcPath} | Move folder


# **copyFolder**
> copyFolder(srcPath, destPath, srcStorageName, destStorageName)

Copy folder

### Example 
```dart
import 'package:aspose_barcode_cloud/api.dart';
// TODO Configure OAuth2 access token for authorization: JWT
//aspose_barcode_cloud.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new FolderApi();
var srcPath = srcPath_example; // String | Source folder path e.g. '/src'
var destPath = destPath_example; // String | Destination folder path e.g. '/dst'
var srcStorageName = srcStorageName_example; // String | Source storage name
var destStorageName = destStorageName_example; // String | Destination storage name

try { 
    api_instance.copyFolder(srcPath, destPath, srcStorageName, destStorageName);
} catch (e) {
    print("Exception when calling FolderApi->copyFolder: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **srcPath** | **String**| Source folder path e.g. &#39;/src&#39; | 
 **destPath** | **String**| Destination folder path e.g. &#39;/dst&#39; | 
 **srcStorageName** | **String**| Source storage name | [optional] 
 **destStorageName** | **String**| Destination storage name | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


# **createFolder**
> createFolder(path, storageName)

Create the folder

### Example 
```dart
import 'package:aspose_barcode_cloud/api.dart';
// TODO Configure OAuth2 access token for authorization: JWT
//aspose_barcode_cloud.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new FolderApi();
var path = path_example; // String | Folder path to create e.g. 'folder_1/folder_2/'
var storageName = storageName_example; // String | Storage name

try { 
    api_instance.createFolder(path, storageName);
} catch (e) {
    print("Exception when calling FolderApi->createFolder: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| Folder path to create e.g. &#39;folder_1/folder_2/&#39; | 
 **storageName** | **String**| Storage name | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


# **deleteFolder**
> deleteFolder(path, storageName, recursive)

Delete folder

### Example 
```dart
import 'package:aspose_barcode_cloud/api.dart';
// TODO Configure OAuth2 access token for authorization: JWT
//aspose_barcode_cloud.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new FolderApi();
var path = path_example; // String | Folder path e.g. '/folder'
var storageName = storageName_example; // String | Storage name
var recursive = true; // bool | Enable to delete folders, subfolders and files

try { 
    api_instance.deleteFolder(path, storageName, recursive);
} catch (e) {
    print("Exception when calling FolderApi->deleteFolder: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| Folder path e.g. &#39;/folder&#39; | 
 **storageName** | **String**| Storage name | [optional] 
 **recursive** | **bool**| Enable to delete folders, subfolders and files | [optional] [default to false]

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


# **getFilesList**
> FilesList getFilesList(path, storageName)

Get all files and folders within a folder

### Example 
```dart
import 'package:aspose_barcode_cloud/api.dart';
// TODO Configure OAuth2 access token for authorization: JWT
//aspose_barcode_cloud.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new FolderApi();
var path = path_example; // String | Folder path e.g. '/folder'
var storageName = storageName_example; // String | Storage name

try { 
    var result = api_instance.getFilesList(path, storageName);
    print(result);
} catch (e) {
    print("Exception when calling FolderApi->getFilesList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| Folder path e.g. &#39;/folder&#39; | 
 **storageName** | **String**| Storage name | [optional] 

### Return type

[**FilesList**](FilesList.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


# **moveFolder**
> moveFolder(srcPath, destPath, srcStorageName, destStorageName)

Move folder

### Example 
```dart
import 'package:aspose_barcode_cloud/api.dart';
// TODO Configure OAuth2 access token for authorization: JWT
//aspose_barcode_cloud.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new FolderApi();
var srcPath = srcPath_example; // String | Folder path to move e.g. '/folder'
var destPath = destPath_example; // String | Destination folder path to move to e.g '/dst'
var srcStorageName = srcStorageName_example; // String | Source storage name
var destStorageName = destStorageName_example; // String | Destination storage name

try { 
    api_instance.moveFolder(srcPath, destPath, srcStorageName, destStorageName);
} catch (e) {
    print("Exception when calling FolderApi->moveFolder: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **srcPath** | **String**| Folder path to move e.g. &#39;/folder&#39; | 
 **destPath** | **String**| Destination folder path to move to e.g &#39;/dst&#39; | 
 **srcStorageName** | **String**| Source storage name | [optional] 
 **destStorageName** | **String**| Destination storage name | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


