# aspose_barcode_cloud.model.DotCodeParams

## Load the model package

```dart
import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';
```
DotCode parameters.

## Properties

Name | Type | Description | Notes
---- | ---- | ----------- | -----
**aspectRatio** | **double** | Height/Width ratio of 2D BarCode module. | [optional] [default to null]
**columns** | **int** | Identifies columns count. Sum of the number of rows plus the number of columns of a DotCode symbol must be odd. Number of columns must be at least 5. | [optional] [default to null]
**encodeMode** | [**DotCodeEncodeMode**](DotCodeEncodeMode.md) | Identifies DotCode encode mode. Default value: Auto. | [optional] [default to null]
**eCIEncoding** | [**ECIEncodings**](ECIEncodings.md) | Identifies ECI encoding. Used when DotCodeEncodeMode is Auto. Default value: ISO-8859-1. | [optional] [default to null]
**isReaderInitialization** | **bool** | Indicates whether code is used for instruct reader to interpret the following data as instructions for initialization or reprogramming of the bar code reader. Default value is false. | [optional] [default to null]
**rows** | **int** | Identifies rows count. Sum of the number of rows plus the number of columns of a DotCode symbol must be odd. Number of rows must be at least 5. | [optional] [default to null]

