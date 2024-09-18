# aspose_barcode_cloud.api.ScanApi

## Load the API package
```dart
import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';
```

All URIs are relative to *https://barcode.qa.aspose.cloud/v4.0*

Method | HTTP request | Description
------ | ------------ | -----------
[**barcodeScanBodyPost**](ScanApi.md#barcodeScanBodyPost) | **POST** /barcode/scan-body | Scan barcode from file in request body using POST requests with parameter in body in json or xml format.
[**barcodeScanFormPost**](ScanApi.md#barcodeScanFormPost) | **POST** /barcode/scan-form | Scan barcode from file in request body using POST requests with parameter in multipart form.
[**barcodeScanGet**](ScanApi.md#barcodeScanGet) | **GET** /barcode/scan | Scan barcode from file on server using GET requests with parameter in query string.


# **barcodeScanBodyPost**
> BarcodeResponseList barcodeScanBodyPost(scanBase64Request)

Scan barcode from file in request body using POST requests with parameter in body in json or xml format.

### Example
```dart
import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';

final api_instance = ScanApi();
final scanBase64Request = ScanBase64Request(); // ScanBase64Request | Barcode scan request

try {
    final result = api_instance.barcodeScanBodyPost(scanBase64Request);
    print(result);
} catch (e) {
    print("Exception when calling ScanApi->barcodeScanBodyPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
---- | ---- | ------------ | -----
 **scanBase64Request** | [**ScanBase64Request**](ScanBase64Request.md)| Barcode scan request | 

### Return type

[**BarcodeResponseList**](BarcodeResponseList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml


# **barcodeScanFormPost**
> BarcodeResponseList barcodeScanFormPost(file)

Scan barcode from file in request body using POST requests with parameter in multipart form.

### Example
```dart
import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';

final api_instance = ScanApi();
final file = BINARY_DATA_HERE; // MultipartFile | 

try {
    final result = api_instance.barcodeScanFormPost(file);
    print(result);
} catch (e) {
    print("Exception when calling ScanApi->barcodeScanFormPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
---- | ---- | ------------ | -----
 **file** | **MultipartFile****MultipartFile**|  | 

### Return type

[**BarcodeResponseList**](BarcodeResponseList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, application/xml


# **barcodeScanGet**
> BarcodeResponseList barcodeScanGet(fileUrl)

Scan barcode from file on server using GET requests with parameter in query string.

### Example
```dart
import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';

final api_instance = ScanApi();
final fileUrl = fileUrl_example; // String | Url to barcode image

try {
    final result = api_instance.barcodeScanGet(fileUrl);
    print(result);
} catch (e) {
    print("Exception when calling ScanApi->barcodeScanGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
---- | ---- | ------------ | -----
 **fileUrl** | **String**| Url to barcode image | 

### Return type

[**BarcodeResponseList**](BarcodeResponseList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml


