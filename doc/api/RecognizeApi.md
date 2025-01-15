# aspose_barcode_cloud.api.RecognizeApi

## Load the API package
```dart
import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';
```

All URIs are relative to *https://api.aspose.cloud/v4.0*

Method | HTTP request | Description
------ | ------------ | -----------
[**recognize**](RecognizeApi.md#recognize) | **GET** /barcode/recognize | Recognize barcode from file on server using GET requests with parameters in route and query string.
[**recognizeBase64**](RecognizeApi.md#recognizeBase64) | **POST** /barcode/recognize-body | Recognize barcode from file in request body using POST requests with parameters in body in json or xml format.
[**recognizeMultipart**](RecognizeApi.md#recognizeMultipart) | **POST** /barcode/recognize-multipart | Recognize barcode from file in request body using POST requests with parameters in multipart form.


# **recognize**
> BarcodeResponseList recognize(barcodeType, fileUrl, recognitionMode, recognitionImageKind)

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


# **recognizeBase64**
> BarcodeResponseList recognizeBase64(recognizeBase64Request)

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


# **recognizeMultipart**
> BarcodeResponseList recognizeMultipart(barcodeType, file, recognitionMode, recognitionImageKind)

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


