# aspose_barcode_cloud.model.BarcodeImageParams

## Load the model package

```dart
import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';
```
Barcode image optional parameters

## Properties

Name | Type | Description | Notes
---- | ---- | ----------- | -----
**imageFormat** | [**BarcodeImageFormat**](BarcodeImageFormat.md) |  | [optional] 
**textLocation** | [**CodeLocation**](CodeLocation.md) |  | [optional] 
**foregroundColor** | **String** | Specify the displaying bars and content Color.  Value: Color name from https://reference.aspose.com/drawing/net/system.drawing/color/ or ARGB value started with #.  For example: AliceBlue or #FF000000  Default value: Black. | [optional] [default to &#39;Black&#39;]
**backgroundColor** | **String** | Background color of the barcode image.  Value: Color name from https://reference.aspose.com/drawing/net/system.drawing/color/ or ARGB value started with #.  For example: AliceBlue or #FF000000  Default value: White. | [optional] [default to &#39;White&#39;]
**units** | [**GraphicsUnit**](GraphicsUnit.md) |  | [optional] 
**resolution** | **double** | Resolution of the BarCode image.  One value for both dimensions.  Default value: 96 dpi.  Decimal separator is dot. | [optional] 
**imageHeight** | **double** | Height of the barcode image in given units. Default units: pixel.  Decimal separator is dot. | [optional] 
**imageWidth** | **double** | Width of the barcode image in given units. Default units: pixel.  Decimal separator is dot. | [optional] 
**rotationAngle** | **int** | BarCode image rotation angle, measured in degree, e.g. RotationAngle &#x3D; 0 or RotationAngle &#x3D; 360 means no rotation.  If RotationAngle NOT equal to 90, 180, 270 or 0, it may increase the difficulty for the scanner to read the image.  Default value: 0. | [optional] 

