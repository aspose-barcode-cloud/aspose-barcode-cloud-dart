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
[**barcodeGenerateFormPost**](GenerateApi.md#barcodeGenerateFormPost) | **POST** /barcode/generate-form | Generate barcode using POST request with parameters in url ecncoded form.


# **barcodeGenerateBarcodeTypeGet**
> MultipartFile barcodeGenerateBarcodeTypeGet(barcodeType, data, dataType, imageFormat, twoDDisplayText, textLocation, textAlignment, foregroundColor, backgroundColor, units, resolution, imageHeight, imageWidth, rotationAngle)

Generate barcode using GET request with parameters in route and query string.

### Example
```dart
import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';

final api_instance = GenerateApi();
final barcodeType = ; // EncodeBarcodeType | Type of barcode to generate.
final data = data_example; // String | String represents data to encode
final dataType = ; // EncodeDataType | Type of data to encode.  Default value:  EncodeDataType.StringData.
final imageFormat = ; // AvailableBarCodeImageFormat | Barcode output image format.  Default value: png
final twoDDisplayText = twoDDisplayText_example; // String | Text that will be displayed instead of codetext in 2D barcodes.  Used for: Aztec, Pdf417, DataMatrix, QR, MaxiCode, DotCode
final textLocation = ; // CodeLocation | Specify the displaying Text Location, set to CodeLocation.None to hide CodeText.  Default value: CodeLocation.Below.
final textAlignment = ; // TextAlignment | Text alignment.  Default value: TextAligment.Left
final foregroundColor = foregroundColor_example; // String | Specify the displaying bars and content Color.   Value: Color name from https://reference.aspose.com/drawing/net/system.drawing/color/ or ARGB value started with #.   For example: AliceBlue or #FF000000  Default value: Black.
final backgroundColor = backgroundColor_example; // String | Background color of the barcode image.  Value: Color name from https://reference.aspose.com/drawing/net/system.drawing/color/ or ARGB value started with #.   For example: AliceBlue or #FF000000  Default value: White.
final units = ; // AvailableGraphicsUnit | Common Units for all measuring in query. Default units: pixel.
final resolution = 3.4; // double | Resolution of the BarCode image.  One value for both dimensions.  Default value: 96 dpi.
final imageHeight = 3.4; // double | Height of the barcode image in given units. Default units: pixel.
final imageWidth = 3.4; // double | Width of the barcode image in given units. Default units: pixel.
final rotationAngle = 56; // int | BarCode image rotation angle, measured in degree, e.g. RotationAngle = 0 or RotationAngle = 360 means no rotation.  If RotationAngle NOT equal to 90, 180, 270 or 0, it may increase the difficulty for the scanner to read the image.  Default value: 0.

try {
    final result = api_instance.barcodeGenerateBarcodeTypeGet(barcodeType, data, dataType, imageFormat, twoDDisplayText, textLocation, textAlignment, foregroundColor, backgroundColor, units, resolution, imageHeight, imageWidth, rotationAngle);
    print(result);
} catch (e) {
    print("Exception when calling GenerateApi->barcodeGenerateBarcodeTypeGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
---- | ---- | ------------ | -----
 **barcodeType** | [**EncodeBarcodeType**](.md)| Type of barcode to generate. | 
 **data** | **String**| String represents data to encode | 
 **dataType** | [**EncodeDataType**](.md)| Type of data to encode.  Default value:  EncodeDataType.StringData. | [optional] 
 **imageFormat** | [**AvailableBarCodeImageFormat**](.md)| Barcode output image format.  Default value: png | [optional] 
 **twoDDisplayText** | **String**| Text that will be displayed instead of codetext in 2D barcodes.  Used for: Aztec, Pdf417, DataMatrix, QR, MaxiCode, DotCode | [optional] 
 **textLocation** | [**CodeLocation**](.md)| Specify the displaying Text Location, set to CodeLocation.None to hide CodeText.  Default value: CodeLocation.Below. | [optional] 
 **textAlignment** | [**TextAlignment**](.md)| Text alignment.  Default value: TextAligment.Left | [optional] 
 **foregroundColor** | **String**| Specify the displaying bars and content Color.   Value: Color name from https://reference.aspose.com/drawing/net/system.drawing/color/ or ARGB value started with #.   For example: AliceBlue or #FF000000  Default value: Black. | [optional] 
 **backgroundColor** | **String**| Background color of the barcode image.  Value: Color name from https://reference.aspose.com/drawing/net/system.drawing/color/ or ARGB value started with #.   For example: AliceBlue or #FF000000  Default value: White. | [optional] 
 **units** | [**AvailableGraphicsUnit**](.md)| Common Units for all measuring in query. Default units: pixel. | [optional] 
 **resolution** | **double**| Resolution of the BarCode image.  One value for both dimensions.  Default value: 96 dpi. | [optional] 
 **imageHeight** | **double**| Height of the barcode image in given units. Default units: pixel. | [optional] 
 **imageWidth** | **double**| Width of the barcode image in given units. Default units: pixel. | [optional] 
 **rotationAngle** | **int**| BarCode image rotation angle, measured in degree, e.g. RotationAngle &#x3D; 0 or RotationAngle &#x3D; 360 means no rotation.  If RotationAngle NOT equal to 90, 180, 270 or 0, it may increase the difficulty for the scanner to read the image.  Default value: 0. | [optional] 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png, image/bmp, image/gif, image/jpeg, image/svg+xml, image/tiff, application/json, application/xml


# **barcodeGenerateBodyPost**
> MultipartFile barcodeGenerateBodyPost(generateParams)

Generate barcode using POST request with parameters in body in json or xml format.

### Example
```dart
import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';

final api_instance = GenerateApi();
final generateParams = GenerateParams(); // GenerateParams | Parameters of generation

try {
    final result = api_instance.barcodeGenerateBodyPost(generateParams);
    print(result);
} catch (e) {
    print("Exception when calling GenerateApi->barcodeGenerateBodyPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
---- | ---- | ------------ | -----
 **generateParams** | [**GenerateParams**](GenerateParams.md)| Parameters of generation | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: image/png, image/bmp, image/gif, image/jpeg, image/svg+xml, image/tiff, application/json, application/xml


# **barcodeGenerateFormPost**
> MultipartFile barcodeGenerateFormPost(barcodeType, data, dataType, imageFormat, twoDDisplayText, textLocation, textAlignment, foregroundColor, backgroundColor, units, resolution, imageHeight, imageWidth, rotationAngle)

Generate barcode using POST request with parameters in url ecncoded form.

### Example
```dart
import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';

final api_instance = GenerateApi();
final barcodeType = ; // EncodeBarcodeType | 
final data = data_example; // String | String represents data to encode
final dataType = ; // EncodeDataType | 
final imageFormat = ; // AvailableBarCodeImageFormat | 
final twoDDisplayText = twoDDisplayText_example; // String | Text that will be displayed instead of codetext in 2D barcodes.  Used for: Aztec, Pdf417, DataMatrix, QR, MaxiCode, DotCode
final textLocation = ; // CodeLocation | 
final textAlignment = ; // TextAlignment | 
final foregroundColor = foregroundColor_example; // String | Specify the displaying bars and content Color.   Value: Color name from https://reference.aspose.com/drawing/net/system.drawing/color/ or ARGB value started with #.   For example: AliceBlue or #FF000000  Default value: Black.
final backgroundColor = backgroundColor_example; // String | Background color of the barcode image.  Value: Color name from https://reference.aspose.com/drawing/net/system.drawing/color/ or ARGB value started with #.   For example: AliceBlue or #FF000000  Default value: White.
final units = ; // AvailableGraphicsUnit | 
final resolution = 3.4; // double | Resolution of the BarCode image.  One value for both dimensions.  Default value: 96 dpi.
final imageHeight = 3.4; // double | Height of the barcode image in given units. Default units: pixel.
final imageWidth = 3.4; // double | Width of the barcode image in given units. Default units: pixel.
final rotationAngle = 56; // int | BarCode image rotation angle, measured in degree, e.g. RotationAngle = 0 or RotationAngle = 360 means no rotation.  If RotationAngle NOT equal to 90, 180, 270 or 0, it may increase the difficulty for the scanner to read the image.  Default value: 0.

try {
    final result = api_instance.barcodeGenerateFormPost(barcodeType, data, dataType, imageFormat, twoDDisplayText, textLocation, textAlignment, foregroundColor, backgroundColor, units, resolution, imageHeight, imageWidth, rotationAngle);
    print(result);
} catch (e) {
    print("Exception when calling GenerateApi->barcodeGenerateFormPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
---- | ---- | ------------ | -----
 **barcodeType** | [**EncodeBarcodeType**](EncodeBarcodeType.md)|  | 
 **data** | **String**| String represents data to encode | 
 **dataType** | [**EncodeDataType**](EncodeDataType.md)|  | [optional] 
 **imageFormat** | [**AvailableBarCodeImageFormat**](AvailableBarCodeImageFormat.md)|  | [optional] 
 **twoDDisplayText** | **String**| Text that will be displayed instead of codetext in 2D barcodes.  Used for: Aztec, Pdf417, DataMatrix, QR, MaxiCode, DotCode | [optional] 
 **textLocation** | [**CodeLocation**](CodeLocation.md)|  | [optional] 
 **textAlignment** | [**TextAlignment**](TextAlignment.md)|  | [optional] 
 **foregroundColor** | **String**| Specify the displaying bars and content Color.   Value: Color name from https://reference.aspose.com/drawing/net/system.drawing/color/ or ARGB value started with #.   For example: AliceBlue or #FF000000  Default value: Black. | [optional] 
 **backgroundColor** | **String**| Background color of the barcode image.  Value: Color name from https://reference.aspose.com/drawing/net/system.drawing/color/ or ARGB value started with #.   For example: AliceBlue or #FF000000  Default value: White. | [optional] 
 **units** | [**AvailableGraphicsUnit**](AvailableGraphicsUnit.md)|  | [optional] 
 **resolution** | **double**| Resolution of the BarCode image.  One value for both dimensions.  Default value: 96 dpi. | [optional] 
 **imageHeight** | **double**| Height of the barcode image in given units. Default units: pixel. | [optional] 
 **imageWidth** | **double**| Width of the barcode image in given units. Default units: pixel. | [optional] 
 **rotationAngle** | **int**| BarCode image rotation angle, measured in degree, e.g. RotationAngle &#x3D; 0 or RotationAngle &#x3D; 360 means no rotation.  If RotationAngle NOT equal to 90, 180, 270 or 0, it may increase the difficulty for the scanner to read the image.  Default value: 0. | [optional] 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: image/png, image/bmp, image/gif, image/jpeg, image/svg+xml, image/tiff, application/json, application/xml


