# aspose_barcode_cloud.model.HanXinParams

## Load the model package

```dart
import 'package:aspose_barcode_cloud/api.dart';
```
HanXin params.

## Properties

Name | Type | Description | Notes
---- | ---- | ----------- | -----
**encodeMode** | [**HanXinEncodeMode**](HanXinEncodeMode.md) | Encoding mode for XanXin barcodes. Default value: HanXinEncodeMode.Auto. | [optional] [default to null]
**errorLevel** | [**HanXinErrorLevel**](HanXinErrorLevel.md) | Allowed Han Xin error correction levels from L1 to L4. Default value: HanXinErrorLevel.L1. | [optional] [default to null]
**version** | [**HanXinVersion**](HanXinVersion.md) | Allowed Han Xin versions, Auto and Version01 - Version84. Default value: HanXinVersion.Auto. | [optional] [default to null]
**eCIEncoding** | [**ECIEncodings**](ECIEncodings.md) | Extended Channel Interpretation Identifiers. It is used to tell the barcode reader details about the used references for encoding the data in the symbol. Current implementation consists all well known charset encodings. Default value: ECIEncodings.ISO_8859_1 | [optional] [default to null]

