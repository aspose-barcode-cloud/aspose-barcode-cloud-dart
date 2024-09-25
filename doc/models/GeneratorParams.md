# aspose_barcode_cloud.model.GeneratorParams

## Load the model package

```dart
import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';
```
Represents extended BarcodeGenerator params.

## Properties

Name | Type | Description | Notes
---- | ---- | ----------- | -----
**typeOfBarcode** | [**EncodeBarcodeType**](EncodeBarcodeType.md) | Type of barcode to generate. | [default to null]
**text** | **String** | Text to encode. | [default to null]
**twoDDisplayText** | **String** | Text that will be displayed instead of codetext in 2D barcodes. Used for: Aztec, Pdf417, DataMatrix, QR, MaxiCode, DotCode | [optional] [default to null]
**textLocation** | [**CodeLocation**](CodeLocation.md) | Specify the displaying Text Location, set to CodeLocation.None to hide CodeText. Default value: CodeLocation.Below. | [optional] [default to null]
**textAlignment** | [**TextAlignment**](TextAlignment.md) | Text alignment. | [optional] [default to null]
**textColor** | **String** | Specify the displaying CodeText&#39;s Color. Default value: black. Use named colors like: red, green, blue Or HTML colors like: #FF0000, #00FF00, #0000FF | [optional] [default to null]
**font** | [**FontParams**](FontParams.md) | Specify the displaying Text&#39;s font. Default value: Arial 5pt regular. Ignored if FontSizeMode is set to FontSizeMode.Auto. | [optional] [default to null]
**fontSizeMode** | [**FontMode**](FontMode.md) | Specify FontSizeMode. If FontSizeMode is set to Auto, font size will be calculated automatically based on xDimension value. It is recommended to use FontSizeMode.Auto especially in AutoSizeMode.Nearest or AutoSizeMode.Interpolation. Default value: FontSizeMode.Auto. | [optional] [default to null]
**noWrap** | **bool** | Specify word wraps (line breaks) within text. Default value: false. | [optional] [default to null]
**resolution** | **double** | Resolution of the BarCode image. One value for both dimensions. Default value: 96 dpi. | [optional] [default to null]
**resolutionX** | **double** | DEPRECATED: Use &#39;Resolution&#39; instead. | [optional] [default to null]
**resolutionY** | **double** | DEPRECATED: Use &#39;Resolution&#39; instead. | [optional] [default to null]
**dimensionX** | **double** | The smallest width of the unit of BarCode bars or spaces. Increase this will increase the whole barcode image width. Ignored if AutoSizeMode property is set to AutoSizeMode.Nearest or AutoSizeMode.Interpolation. | [optional] [default to null]
**textSpace** | **double** | Space between the CodeText and the BarCode in Unit value. Default value: 2pt. Ignored for EAN8, EAN13, UPCE, UPCA, ISBN, ISMN, ISSN, UpcaGs1DatabarCoupon. | [optional] [default to null]
**units** | [**AvailableGraphicsUnit**](AvailableGraphicsUnit.md) | Common Units for all measuring in query. Default units: pixel. | [optional] [default to null]
**sizeMode** | [**AutoSizeMode**](AutoSizeMode.md) | Specifies the different types of automatic sizing modes. Default value: AutoSizeMode.None. | [optional] [default to null]
**barHeight** | **double** | Height of the barcode in given units. Default units: pixel. | [optional] [default to null]
**imageHeight** | **double** | Height of the barcode image in given units. Default units: pixel. | [optional] [default to null]
**imageWidth** | **double** | Width of the barcode image in given units. Default units: pixel. | [optional] [default to null]
**rotationAngle** | **double** | BarCode image rotation angle, measured in degree, e.g. RotationAngle &#x3D; 0 or RotationAngle &#x3D; 360 means no rotation. If RotationAngle NOT equal to 90, 180, 270 or 0, it may increase the difficulty for the scanner to read the image. Default value: 0. | [optional] [default to null]
**padding** | [**Padding**](Padding.md) | Barcode paddings. Default value: 5pt 5pt 5pt 5pt. | [optional] [default to null]
**captionAbove** | [**CaptionParams**](CaptionParams.md) | Additional caption above barcode. | [optional] [default to null]
**captionBelow** | [**CaptionParams**](CaptionParams.md) | Additional caption below barcode. | [optional] [default to null]
**backColor** | **String** | Background color of the barcode image. Default value: white. Use named colors like: red, green, blue Or HTML colors like: #FF0000, #00FF00, #0000FF | [optional] [default to null]
**barColor** | **String** | Bars color. Default value: black. Use named colors like: red, green, blue Or HTML colors like: #FF0000, #00FF00, #0000FF | [optional] [default to null]
**borderColor** | **String** | Border color. Default value: black. Use named colors like: red, green, blue Or HTML colors like: #FF0000, #00FF00, #0000FF | [optional] [default to null]
**borderWidth** | **double** | Border width. Default value: 0. Ignored if Visible is set to false. | [optional] [default to null]
**borderDashStyle** | [**BorderDashStyle**](BorderDashStyle.md) | Border dash style. Default value: BorderDashStyle.Solid. | [optional] [default to null]
**borderVisible** | **bool** | Border visibility. If false than parameter Width is always ignored (0). Default value: false. | [optional] [default to null]
**enableChecksum** | [**EnableChecksum**](EnableChecksum.md) | Enable checksum during generation 1D barcodes. Default is treated as Yes for symbology which must contain checksum, as No where checksum only possible. Checksum is possible: Code39 Standard/Extended, Standard2of5, Interleaved2of5, Matrix2of5, ItalianPost25, DeutschePostIdentcode, DeutschePostLeitcode, VIN, Codabar Checksum always used: Rest symbology | [optional] [default to null]
**enableEscape** | **bool** | Indicates whether explains the character \&quot;\\\&quot; as an escape character in CodeText property. Used for Pdf417, DataMatrix, Code128 only If the EnableEscape is true, \&quot;\\\&quot; will be explained as a special escape character. Otherwise, \&quot;\\\&quot; acts as normal characters. Aspose.BarCode supports input decimal ascii code and mnemonic for ASCII control-code characters. For example, \\013 and \\\\CR stands for CR. | [optional] [default to null]
**filledBars** | **bool** | Value indicating whether bars are filled. Only for 1D barcodes. Default value: true. | [optional] [default to null]
**alwaysShowChecksum** | **bool** | Always display checksum digit in the human readable text for Code128 and GS1Code128 barcodes. | [optional] [default to null]
**wideNarrowRatio** | **double** | Wide bars to Narrow bars ratio. Default value: 3, that is, wide bars are 3 times as wide as narrow bars. Used for ITF, PZN, PharmaCode, Standard2of5, Interleaved2of5, Matrix2of5, ItalianPost25, IATA2of5, VIN, DeutschePost, OPC, Code32, DataLogic2of5, PatchCode, Code39Extended, Code39Standard | [optional] [default to null]
**validateText** | **bool** | Only for 1D barcodes. If codetext is incorrect and value set to true - exception will be thrown. Otherwise codetext will be corrected to match barcode&#39;s specification. Exception always will be thrown for: Databar symbology if codetext is incorrect. Exception always will not be thrown for: AustraliaPost, SingaporePost, Code39Extended, Code93Extended, Code16K, Code128 symbology if codetext is incorrect. | [optional] [default to null]
**supplementData** | **String** | Supplement parameters. Used for Interleaved2of5, Standard2of5, EAN13, EAN8, UPCA, UPCE, ISBN, ISSN, ISMN. | [optional] [default to null]
**supplementSpace** | **double** | Space between main the BarCode and supplement BarCode. | [optional] [default to null]
**barWidthReduction** | **double** | Bars reduction value that is used to compensate ink spread while printing. | [optional] [default to null]
**useAntiAlias** | **bool** | Indicates whether is used anti-aliasing mode to render image. Anti-aliasing mode is applied to barcode and text drawing. | [optional] [default to null]
**australianPost** | [**AustralianPostParams**](AustralianPostParams.md) | AustralianPost params. | [optional] [default to null]
**aztec** | [**AztecParams**](AztecParams.md) | Aztec params. | [optional] [default to null]
**codabar** | [**CodabarParams**](CodabarParams.md) | Codabar params. | [optional] [default to null]
**codablock** | [**CodablockParams**](CodablockParams.md) | Codablock params. | [optional] [default to null]
**code16K** | [**Code16KParams**](Code16KParams.md) | Code16K params. | [optional] [default to null]
**coupon** | [**CouponParams**](CouponParams.md) | Coupon params. | [optional] [default to null]
**dataBar** | [**DataBarParams**](DataBarParams.md) | DataBar params. | [optional] [default to null]
**dataMatrix** | [**DataMatrixParams**](DataMatrixParams.md) | DataMatrix params. | [optional] [default to null]
**dotCode** | [**DotCodeParams**](DotCodeParams.md) | DotCode params. | [optional] [default to null]
**ITF** | [**ITFParams**](ITFParams.md) | ITF params. | [optional] [default to null]
**maxiCode** | [**MaxiCodeParams**](MaxiCodeParams.md) | MaxiCode params. | [optional] [default to null]
**pdf417** | [**Pdf417Params**](Pdf417Params.md) | Pdf417 params. | [optional] [default to null]
**postal** | [**PostalParams**](PostalParams.md) | Postal params. | [optional] [default to null]
**QR** | [**QrParams**](QrParams.md) | QR params. | [optional] [default to null]
**patchCode** | [**PatchCodeParams**](PatchCodeParams.md) | PatchCode params. | [optional] [default to null]
**code128** | [**Code128Params**](Code128Params.md) | Code128 parameters | [optional] [default to null]
**hanXin** | [**HanXinParams**](HanXinParams.md) | HanXin params. | [optional] [default to null]

