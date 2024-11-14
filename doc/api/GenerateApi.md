# aspose_barcode_cloud.api.GenerateApi

## Load the API package
```dart
import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';
```

All URIs are relative to *https://barcode.qa.aspose.cloud/v4.0*

Method | HTTP request | Description
------ | ------------ | -----------
[**barcodeGenerateBarcodeTypeGet**](GenerateApi.md#barcodeGenerateBarcodeTypeGet) | **GET** /barcode/generate/{barcodeType} | Generate barcode using GET request with parameters in route and query string.
[**barcodeGenerateBodyPost**](GenerateApi.md#barcodeGenerateBodyPost) | **POST** /barcode/generate-body | Generate barcode using POST request with parameters in body in json or xml format.
[**barcodeGenerateMultipartPost**](GenerateApi.md#barcodeGenerateMultipartPost) | **POST** /barcode/generate-multipart | Generate barcode using POST request with parameters in multipart form.


# **barcodeGenerateBarcodeTypeGet**
> MultipartFile barcodeGenerateBarcodeTypeGet(barcodeType, data, dataType, imageFormat, textLocation, foregroundColor, backgroundColor, units, resolution, imageHeight, imageWidth, rotationAngle)

Generate barcode using GET request with parameters in route and query string.

### Parameters

Name | Type | Description  | Notes
---- | ---- | ------------ | -----
 **barcodeType** | [**EncodeBarcodeType**](.md)| Type of barcode to generate. | 
 **data** | **String**| String represents data to encode | 
 **dataType** | [**EncodeDataType**](.md)| Type of data to encode.  Default value:  EncodeDataType.StringData. | [optional] 
 **imageFormat** | [**BarcodeImageFormat**](.md)| Barcode output image format.  Default value: png | [optional] 
 **textLocation** | [**CodeLocation**](.md)| Specify the displaying Text Location, set to CodeLocation.None to hide CodeText.  Default value: CodeLocation.Below. | [optional] 
 **foregroundColor** | **String**| Specify the displaying bars and content Color.  Value: Color name from https://reference.aspose.com/drawing/net/system.drawing/color/ or ARGB value started with #.  For example: AliceBlue or #FF000000  Default value: Black. | [optional] 
 **backgroundColor** | **String**| Background color of the barcode image.  Value: Color name from https://reference.aspose.com/drawing/net/system.drawing/color/ or ARGB value started with #.  For example: AliceBlue or #FF000000  Default value: White. | [optional] 
 **units** | [**GraphicsUnit**](.md)| Common Units for all measuring in query. Default units: pixel. | [optional] 
 **resolution** | **double**| Resolution of the BarCode image.  One value for both dimensions.  Default value: 96 dpi.  Decimal separator is dot. | [optional] 
 **imageHeight** | **double**| Height of the barcode image in given units. Default units: pixel.  Decimal separator is dot. | [optional] 
 **imageWidth** | **double**| Width of the barcode image in given units. Default units: pixel.  Decimal separator is dot. | [optional] 
 **rotationAngle** | **int**| BarCode image rotation angle, measured in degree, e.g. RotationAngle &#x3D; 0 or RotationAngle &#x3D; 360 means no rotation.  If RotationAngle NOT equal to 90, 180, 270 or 0, it may increase the difficulty for the scanner to read the image.  Default value: 0. | [optional] 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png, image/bmp, image/gif, image/jpeg, image/svg+xml, image/tiff, application/json, application/xml


# **barcodeGenerateBodyPost**
> MultipartFile barcodeGenerateBodyPost(generateParams)

Generate barcode using POST request with parameters in body in json or xml format.

### Parameters

Name | Type | Description  | Notes
---- | ---- | ------------ | -----
 **generateParams** | [**GenerateParams**](GenerateParams.md)| Parameters of generation | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: image/png, image/bmp, image/gif, image/jpeg, image/svg+xml, image/tiff, application/json, application/xml


# **barcodeGenerateMultipartPost**
> MultipartFile barcodeGenerateMultipartPost(barcodeType, data, dataType, imageFormat, textLocation, foregroundColor, backgroundColor, units, resolution, imageHeight, imageWidth, rotationAngle)

Generate barcode using POST request with parameters in multipart form.

### Parameters

Name | Type | Description  | Notes
---- | ---- | ------------ | -----
 **barcodeType** | [**EncodeBarcodeType**](EncodeBarcodeType.md)|  | 
 **data** | **String**| String represents data to encode | 
 **dataType** | [**EncodeDataType**](EncodeDataType.md)|  | [optional] 
 **imageFormat** | [**BarcodeImageFormat**](BarcodeImageFormat.md)|  | [optional] 
 **textLocation** | [**CodeLocation**](CodeLocation.md)|  | [optional] 
 **foregroundColor** | **String**| Specify the displaying bars and content Color.  Value: Color name from https://reference.aspose.com/drawing/net/system.drawing/color/ or ARGB value started with #.  For example: AliceBlue or #FF000000  Default value: Black. | [optional] 
 **backgroundColor** | **String**| Background color of the barcode image.  Value: Color name from https://reference.aspose.com/drawing/net/system.drawing/color/ or ARGB value started with #.  For example: AliceBlue or #FF000000  Default value: White. | [optional] 
 **units** | [**GraphicsUnit**](GraphicsUnit.md)|  | [optional] 
 **resolution** | **double**| Resolution of the BarCode image.  One value for both dimensions.  Default value: 96 dpi.  Decimal separator is dot. | [optional] 
 **imageHeight** | **double**| Height of the barcode image in given units. Default units: pixel.  Decimal separator is dot. | [optional] 
 **imageWidth** | **double**| Width of the barcode image in given units. Default units: pixel.  Decimal separator is dot. | [optional] 
 **rotationAngle** | **int**| BarCode image rotation angle, measured in degree, e.g. RotationAngle &#x3D; 0 or RotationAngle &#x3D; 360 means no rotation.  If RotationAngle NOT equal to 90, 180, 270 or 0, it may increase the difficulty for the scanner to read the image.  Default value: 0. | [optional] 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: image/png, image/bmp, image/gif, image/jpeg, image/svg+xml, image/tiff, application/json, application/xml


