# aspose_barcode_cloud.api.RecognizeApi

## Load the API package
```dart
import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';
```

All URIs are relative to *http://api.aspose.cloud/v4.0*

Method | HTTP request | Description
------ | ------------ | -----------
[**recognizeBase64PostV4**](RecognizeApi.md#recognizeBase64PostV4) | **POST** /barcode/recognize-body | Recognize barcode from file in request body using POST requests with parameters in body in json or xml format.
[**recognizeFormPostV4**](RecognizeApi.md#recognizeFormPostV4) | **POST** /barcode/recognize-multipart | Recognize barcode from file in request body using POST requests with parameters in multipart form.
[**recognizeGetV4**](RecognizeApi.md#recognizeGetV4) | **GET** /barcode/recognize | Recognize barcode from file on server using GET requests with parameters in route and query string.


# **recognizeBase64PostV4**
> BarcodeResponseList recognizeBase64PostV4(recognizeBase64Request)

Recognize barcode from file in request body using POST requests with parameters in body in json or xml format.

### Parameters

Name | Type | Description  | Notes
---- | ---- | ------------ | -----
 **recognizeBase64Request** | [**RecognizeBase64Request**](RecognizeBase64Request.md)| Barcode recognition request | 

### Return type

[**BarcodeResponseList**](BarcodeResponseList.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml


# **recognizeFormPostV4**
> BarcodeResponseList recognizeFormPostV4(barcodeType, file, recognitionMode, recognitionImageKind)

Recognize barcode from file in request body using POST requests with parameters in multipart form.

### Parameters

Name | Type | Description  | Notes
---- | ---- | ------------ | -----
 **barcodeType** | [**DecodeBarcodeType**](DecodeBarcodeType.md)|  | 
 **file** | **MultipartFile****MultipartFile**| Barcode image file | 
 **recognitionMode** | [**RecognitionMode**](RecognitionMode.md)|  | [optional] 
 **recognitionImageKind** | [**RecognitionImageKind**](RecognitionImageKind.md)|  | [optional] 

### Return type

[**BarcodeResponseList**](BarcodeResponseList.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, application/xml


# **recognizeGetV4**
> BarcodeResponseList recognizeGetV4(barcodeType, fileUrl, recognitionMode, recognitionImageKind)

Recognize barcode from file on server using GET requests with parameters in route and query string.

### Parameters

Name | Type | Description  | Notes
---- | ---- | ------------ | -----
 **barcodeType** | [**DecodeBarcodeType**](.md)| Type of barcode to recognize | 
 **fileUrl** | **String**| Url to barcode image | 
 **recognitionMode** | [**RecognitionMode**](.md)| Recognition mode | [optional] 
 **recognitionImageKind** | [**RecognitionImageKind**](.md)| Image kind for recognition | [optional] 

### Return type

[**BarcodeResponseList**](BarcodeResponseList.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml


