# aspose_barcode_cloud.api.RecognizeApi

## Load the API package
```dart
import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';
```

All URIs are relative to *https://barcode.qa.aspose.cloud/v4.0*

Method | HTTP request | Description
------ | ------------ | -----------
[**barcodeRecognizeBarcodeTypeGet**](RecognizeApi.md#barcodeRecognizeBarcodeTypeGet) | **GET** /barcode/recognize/{barcodeType} | Recognize barcode from file on server using GET requests with parameters in route and query string.
[**barcodeRecognizeBodyPost**](RecognizeApi.md#barcodeRecognizeBodyPost) | **POST** /barcode/recognize-body | Recognize barcode from file in request body using POST requests with parameters in body in json or xml format.
[**barcodeRecognizeFormPost**](RecognizeApi.md#barcodeRecognizeFormPost) | **POST** /barcode/recognize-form | Recognize barcode from file in request body using POST requests with parameters in multipart form.


# **barcodeRecognizeBarcodeTypeGet**
> BarcodeResponseList barcodeRecognizeBarcodeTypeGet(barcodeType, fileUrl, recognitionMode, imageKind)

Recognize barcode from file on server using GET requests with parameters in route and query string.

### Example
```dart
import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';

final api_instance = RecognizeApi();
final barcodeType = ; // DecodeBarcodeType | Type of barcode to recognize
final fileUrl = fileUrl_example; // String | Url to barcode image
final recognitionMode = ; // RecognitionMode | Recognition mode
final imageKind = ; // RecognitionImageKind | Image kind

try {
    final result = api_instance.barcodeRecognizeBarcodeTypeGet(barcodeType, fileUrl, recognitionMode, imageKind);
    print(result);
} catch (e) {
    print("Exception when calling RecognizeApi->barcodeRecognizeBarcodeTypeGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
---- | ---- | ------------ | -----
 **barcodeType** | [**DecodeBarcodeType**](.md)| Type of barcode to recognize | 
 **fileUrl** | **String**| Url to barcode image | 
 **recognitionMode** | [**RecognitionMode**](.md)| Recognition mode | [optional] 
 **imageKind** | [**RecognitionImageKind**](.md)| Image kind | [optional] 

### Return type

[**BarcodeResponseList**](BarcodeResponseList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml


# **barcodeRecognizeBodyPost**
> BarcodeResponseList barcodeRecognizeBodyPost(recognizeBase64Request)

Recognize barcode from file in request body using POST requests with parameters in body in json or xml format.

### Example
```dart
import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';

final api_instance = RecognizeApi();
final recognizeBase64Request = RecognizeBase64Request(); // RecognizeBase64Request | Barcode recognition request

try {
    final result = api_instance.barcodeRecognizeBodyPost(recognizeBase64Request);
    print(result);
} catch (e) {
    print("Exception when calling RecognizeApi->barcodeRecognizeBodyPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
---- | ---- | ------------ | -----
 **recognizeBase64Request** | [**RecognizeBase64Request**](RecognizeBase64Request.md)| Barcode recognition request | 

### Return type

[**BarcodeResponseList**](BarcodeResponseList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml


# **barcodeRecognizeFormPost**
> BarcodeResponseList barcodeRecognizeFormPost(barcodeType, file, recognitionMode, imageKind)

Recognize barcode from file in request body using POST requests with parameters in multipart form.

### Example
```dart
import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';

final api_instance = RecognizeApi();
final barcodeType = ; // DecodeBarcodeType | 
final file = BINARY_DATA_HERE; // MultipartFile | 
final recognitionMode = ; // RecognitionMode | 
final imageKind = ; // RecognitionImageKind | 

try {
    final result = api_instance.barcodeRecognizeFormPost(barcodeType, file, recognitionMode, imageKind);
    print(result);
} catch (e) {
    print("Exception when calling RecognizeApi->barcodeRecognizeFormPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
---- | ---- | ------------ | -----
 **barcodeType** | [**DecodeBarcodeType**](DecodeBarcodeType.md)|  | 
 **file** | **MultipartFile****MultipartFile**|  | 
 **recognitionMode** | [**RecognitionMode**](RecognitionMode.md)|  | [optional] 
 **imageKind** | [**RecognitionImageKind**](RecognitionImageKind.md)|  | [optional] 

### Return type

[**BarcodeResponseList**](BarcodeResponseList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, application/xml


