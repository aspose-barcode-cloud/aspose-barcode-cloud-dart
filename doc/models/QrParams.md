# aspose_barcode_cloud.model.QrParams

## Load the model package
```dart
import 'package:aspose_barcode_cloud/api.dart';
```

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**aspectRatio** | **double** | Height/Width ratio of 2D BarCode module. | [optional] [default to null]
**textEncoding** | **String** | Encoding of codetext. | [optional] [default to null]
**encodeType** | [**QREncodeType**](QREncodeType.md) | QR / MicroQR selector mode. Select ForceQR for standard QR symbols, Auto for MicroQR. | [optional] [default to null]
**eCIEncoding** | [**ECIEncodings**](ECIEncodings.md) | Extended Channel Interpretation Identifiers. It is used to tell the barcode reader details about the used references for encoding the data in the symbol. Current implementation consists all well known charset encodings. | [optional] [default to null]
**encodeMode** | [**QREncodeMode**](QREncodeMode.md) | QR symbology type of BarCode&#39;s encoding mode. Default value: QREncodeMode.Auto. | [optional] [default to null]
**errorLevel** | [**QRErrorLevel**](QRErrorLevel.md) | Level of Reed-Solomon error correction for QR barcode. From low to high: LevelL, LevelM, LevelQ, LevelH. see QRErrorLevel. | [optional] [default to null]
**version** | [**QRVersion**](QRVersion.md) | Version of QR Code. From Version1 to Version40 for QR code and from M1 to M4 for MicroQr. Default value is QRVersion.Auto. | [optional] [default to null]
**structuredAppend** | [**StructuredAppend**](StructuredAppend.md) | QR structured append parameters. | [optional] [default to null]


