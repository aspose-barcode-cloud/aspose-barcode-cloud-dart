# aspose_barcode_cloud.model.BarcodeImageParams

## Load the model package

```dart
import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';
```
Barcode image optional parameters

## Properties

Name | Type | Description | Notes
---- | ---- | ----------- | -----
**imageFormat** | [**AvailableBarCodeImageFormat**](AvailableBarCodeImageFormat.md) |  | [optional] 
**twoDDisplayText** | **String** | Text that will be displayed instead of codetext in 2D barcodes.  Used for: Aztec, Pdf417, DataMatrix, QR, MaxiCode, DotCode | [optional] 
**textLocation** | [**CodeLocation**](CodeLocation.md) |  | [optional] 
**textAlignment** | [**TextAlignment**](TextAlignment.md) |  | [optional] 
**foregroundColor** | **String** | Specify the displaying bars and content Color.   Value: Color name from https://reference.aspose.com/drawing/net/system.drawing/color/ or ARGB value started with #.   For example: Color.AliceBlue or #FF000000  Default value: Color.Black. | [optional] 
**backgroundColor** | **String** | Background color of the barcode image.  Value: Color name from https://reference.aspose.com/drawing/net/system.drawing/color/ or ARGB value started with #.   For example: Color.AliceBlue or #FF000000  Default value: Color.White. | [optional] 
**units** | [**AvailableGraphicsUnit**](AvailableGraphicsUnit.md) |  | [optional] 
**resolution** | **double** | Resolution of the BarCode image.  One value for both dimensions.  Default value: 96 dpi. | [optional] 
**imageHeight** | **double** | Height of the barcode image in given units. Default units: pixel. | [optional] 
**imageWidth** | **double** | Width of the barcode image in given units. Default units: pixel. | [optional] 
**rotationAngle** | **int** | BarCode image rotation angle, measured in degree, e.g. RotationAngle &#x3D; 0 or RotationAngle &#x3D; 360 means no rotation.  If RotationAngle NOT equal to 90, 180, 270 or 0, it may increase the difficulty for the scanner to read the image.  Default value: 0. | [optional] 
