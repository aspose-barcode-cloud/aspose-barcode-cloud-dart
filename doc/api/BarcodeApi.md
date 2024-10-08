# aspose_barcode_cloud.api.BarcodeApi

## Load the API package
```dart
import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';
```

All URIs are relative to *https://api.aspose.cloud/v3.0*

Method | HTTP request | Description
------ | ------------ | -----------
[**getBarcodeGenerate**](BarcodeApi.md#getBarcodeGenerate) | **GET** /barcode/generate | Generate barcode.
[**getBarcodeRecognize**](BarcodeApi.md#getBarcodeRecognize) | **GET** /barcode/{name}/recognize | Recognize barcode from a file on server.
[**postBarcodeRecognizeFromUrlOrContent**](BarcodeApi.md#postBarcodeRecognizeFromUrlOrContent) | **POST** /barcode/recognize | Recognize barcode from an url or from request body. Request body can contain raw data bytes of the image with content-type \&quot;application/octet-stream\&quot;. An image can also be passed as a form field.
[**postGenerateMultiple**](BarcodeApi.md#postGenerateMultiple) | **POST** /barcode/generateMultiple | Generate multiple barcodes and return in response stream
[**putBarcodeGenerateFile**](BarcodeApi.md#putBarcodeGenerateFile) | **PUT** /barcode/{name}/generate | Generate barcode and save on server (from query params or from file with json or xml content)
[**putBarcodeRecognizeFromBody**](BarcodeApi.md#putBarcodeRecognizeFromBody) | **PUT** /barcode/{name}/recognize | Recognition of a barcode from file on server with parameters in body.
[**putGenerateMultiple**](BarcodeApi.md#putGenerateMultiple) | **PUT** /barcode/{name}/generateMultiple | Generate image with multiple barcodes and put new file on server
[**scanBarcode**](BarcodeApi.md#scanBarcode) | **POST** /barcode/scan | Quickly scan a barcode from an image.


# **getBarcodeGenerate**
> MultipartFile getBarcodeGenerate(type, text, twoDDisplayText, textLocation, textAlignment, textColor, noWrap, resolution, resolutionX, resolutionY, dimensionX, textSpace, units, sizeMode, barHeight, imageHeight, imageWidth, rotationAngle, backColor, barColor, borderColor, borderWidth, borderDashStyle, borderVisible, enableChecksum, enableEscape, filledBars, alwaysShowChecksum, wideNarrowRatio, validateText, supplementData, supplementSpace, barWidthReduction, useAntiAlias, format)

Generate barcode.

### Example
```dart
import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';
// TODO Configure OAuth2 access token for authorization: JWT
//aspose_barcode_cloud.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = BarcodeApi();
final type = type_example; // String | Type of barcode to generate.
final text = text_example; // String | Text to encode.
final twoDDisplayText = twoDDisplayText_example; // String | Text that will be displayed instead of codetext in 2D barcodes. Used for: Aztec, Pdf417, DataMatrix, QR, MaxiCode, DotCode
final textLocation = textLocation_example; // String | Specify the displaying Text Location, set to CodeLocation.None to hide CodeText. Default value: CodeLocation.Below.
final textAlignment = textAlignment_example; // String | Text alignment.
final textColor = textColor_example; // String | Specify the displaying CodeText's Color. Default value: black. Use named colors like: red, green, blue Or HTML colors like: #FF0000, #00FF00, #0000FF
final noWrap = true; // bool | Specify word wraps (line breaks) within text. Default value: false.
final resolution = 1.2; // double | Resolution of the BarCode image. One value for both dimensions. Default value: 96 dpi.
final resolutionX = 1.2; // double | DEPRECATED: Use 'Resolution' instead.
final resolutionY = 1.2; // double | DEPRECATED: Use 'Resolution' instead.
final dimensionX = 1.2; // double | The smallest width of the unit of BarCode bars or spaces. Increase this will increase the whole barcode image width. Ignored if AutoSizeMode property is set to AutoSizeMode.Nearest or AutoSizeMode.Interpolation.
final textSpace = 1.2; // double | Space between the CodeText and the BarCode in Unit value. Default value: 2pt. Ignored for EAN8, EAN13, UPCE, UPCA, ISBN, ISMN, ISSN, UpcaGs1DatabarCoupon.
final units = units_example; // String | Common Units for all measuring in query. Default units: pixel.
final sizeMode = sizeMode_example; // String | Specifies the different types of automatic sizing modes. Default value: AutoSizeMode.None.
final barHeight = 1.2; // double | Height of the barcode in given units. Default units: pixel.
final imageHeight = 1.2; // double | Height of the barcode image in given units. Default units: pixel.
final imageWidth = 1.2; // double | Width of the barcode image in given units. Default units: pixel.
final rotationAngle = 1.2; // double | BarCode image rotation angle, measured in degree, e.g. RotationAngle = 0 or RotationAngle = 360 means no rotation. If RotationAngle NOT equal to 90, 180, 270 or 0, it may increase the difficulty for the scanner to read the image. Default value: 0.
final backColor = backColor_example; // String | Background color of the barcode image. Default value: white. Use named colors like: red, green, blue Or HTML colors like: #FF0000, #00FF00, #0000FF
final barColor = barColor_example; // String | Bars color. Default value: black. Use named colors like: red, green, blue Or HTML colors like: #FF0000, #00FF00, #0000FF
final borderColor = borderColor_example; // String | Border color. Default value: black. Use named colors like: red, green, blue Or HTML colors like: #FF0000, #00FF00, #0000FF
final borderWidth = 1.2; // double | Border width. Default value: 0. Ignored if Visible is set to false.
final borderDashStyle = borderDashStyle_example; // String | Border dash style. Default value: BorderDashStyle.Solid.
final borderVisible = true; // bool | Border visibility. If false than parameter Width is always ignored (0). Default value: false.
final enableChecksum = enableChecksum_example; // String | Enable checksum during generation 1D barcodes. Default is treated as Yes for symbology which must contain checksum, as No where checksum only possible. Checksum is possible: Code39 Standard/Extended, Standard2of5, Interleaved2of5, Matrix2of5, ItalianPost25, DeutschePostIdentcode, DeutschePostLeitcode, VIN, Codabar Checksum always used: Rest symbology
final enableEscape = true; // bool | Indicates whether explains the character \"\\\" as an escape character in CodeText property. Used for Pdf417, DataMatrix, Code128 only If the EnableEscape is true, \"\\\" will be explained as a special escape character. Otherwise, \"\\\" acts as normal characters. Aspose.BarCode supports input decimal ascii code and mnemonic for ASCII control-code characters. For example, \\013 and \\\\CR stands for CR.
final filledBars = true; // bool | Value indicating whether bars are filled. Only for 1D barcodes. Default value: true.
final alwaysShowChecksum = true; // bool | Always display checksum digit in the human readable text for Code128 and GS1Code128 barcodes.
final wideNarrowRatio = 1.2; // double | Wide bars to Narrow bars ratio. Default value: 3, that is, wide bars are 3 times as wide as narrow bars. Used for ITF, PZN, PharmaCode, Standard2of5, Interleaved2of5, Matrix2of5, ItalianPost25, IATA2of5, VIN, DeutschePost, OPC, Code32, DataLogic2of5, PatchCode, Code39Extended, Code39Standard
final validateText = true; // bool | Only for 1D barcodes. If codetext is incorrect and value set to true - exception will be thrown. Otherwise codetext will be corrected to match barcode's specification. Exception always will be thrown for: Databar symbology if codetext is incorrect. Exception always will not be thrown for: AustraliaPost, SingaporePost, Code39Extended, Code93Extended, Code16K, Code128 symbology if codetext is incorrect.
final supplementData = supplementData_example; // String | Supplement parameters. Used for Interleaved2of5, Standard2of5, EAN13, EAN8, UPCA, UPCE, ISBN, ISSN, ISMN.
final supplementSpace = 1.2; // double | Space between main the BarCode and supplement BarCode.
final barWidthReduction = 1.2; // double | Bars reduction value that is used to compensate ink spread while printing.
final useAntiAlias = true; // bool | Indicates whether is used anti-aliasing mode to render image. Anti-aliasing mode is applied to barcode and text drawing.
final format = format_example; // String | Result image format.

try {
    final result = api_instance.getBarcodeGenerate(type, text, twoDDisplayText, textLocation, textAlignment, textColor, noWrap, resolution, resolutionX, resolutionY, dimensionX, textSpace, units, sizeMode, barHeight, imageHeight, imageWidth, rotationAngle, backColor, barColor, borderColor, borderWidth, borderDashStyle, borderVisible, enableChecksum, enableEscape, filledBars, alwaysShowChecksum, wideNarrowRatio, validateText, supplementData, supplementSpace, barWidthReduction, useAntiAlias, format);
    print(result);
} catch (e) {
    print("Exception when calling BarcodeApi->getBarcodeGenerate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
---- | ---- | ------------ | -----
 **type** | **String**| Type of barcode to generate. | 
 **text** | **String**| Text to encode. | 
 **twoDDisplayText** | **String**| Text that will be displayed instead of codetext in 2D barcodes. Used for: Aztec, Pdf417, DataMatrix, QR, MaxiCode, DotCode | [optional] 
 **textLocation** | **String**| Specify the displaying Text Location, set to CodeLocation.None to hide CodeText. Default value: CodeLocation.Below. | [optional] 
 **textAlignment** | **String**| Text alignment. | [optional] 
 **textColor** | **String**| Specify the displaying CodeText&#39;s Color. Default value: black. Use named colors like: red, green, blue Or HTML colors like: #FF0000, #00FF00, #0000FF | [optional] 
 **noWrap** | **bool**| Specify word wraps (line breaks) within text. Default value: false. | [optional] 
 **resolution** | **double**| Resolution of the BarCode image. One value for both dimensions. Default value: 96 dpi. | [optional] 
 **resolutionX** | **double**| DEPRECATED: Use &#39;Resolution&#39; instead. | [optional] 
 **resolutionY** | **double**| DEPRECATED: Use &#39;Resolution&#39; instead. | [optional] 
 **dimensionX** | **double**| The smallest width of the unit of BarCode bars or spaces. Increase this will increase the whole barcode image width. Ignored if AutoSizeMode property is set to AutoSizeMode.Nearest or AutoSizeMode.Interpolation. | [optional] 
 **textSpace** | **double**| Space between the CodeText and the BarCode in Unit value. Default value: 2pt. Ignored for EAN8, EAN13, UPCE, UPCA, ISBN, ISMN, ISSN, UpcaGs1DatabarCoupon. | [optional] 
 **units** | **String**| Common Units for all measuring in query. Default units: pixel. | [optional] 
 **sizeMode** | **String**| Specifies the different types of automatic sizing modes. Default value: AutoSizeMode.None. | [optional] 
 **barHeight** | **double**| Height of the barcode in given units. Default units: pixel. | [optional] 
 **imageHeight** | **double**| Height of the barcode image in given units. Default units: pixel. | [optional] 
 **imageWidth** | **double**| Width of the barcode image in given units. Default units: pixel. | [optional] 
 **rotationAngle** | **double**| BarCode image rotation angle, measured in degree, e.g. RotationAngle &#x3D; 0 or RotationAngle &#x3D; 360 means no rotation. If RotationAngle NOT equal to 90, 180, 270 or 0, it may increase the difficulty for the scanner to read the image. Default value: 0. | [optional] 
 **backColor** | **String**| Background color of the barcode image. Default value: white. Use named colors like: red, green, blue Or HTML colors like: #FF0000, #00FF00, #0000FF | [optional] 
 **barColor** | **String**| Bars color. Default value: black. Use named colors like: red, green, blue Or HTML colors like: #FF0000, #00FF00, #0000FF | [optional] 
 **borderColor** | **String**| Border color. Default value: black. Use named colors like: red, green, blue Or HTML colors like: #FF0000, #00FF00, #0000FF | [optional] 
 **borderWidth** | **double**| Border width. Default value: 0. Ignored if Visible is set to false. | [optional] 
 **borderDashStyle** | **String**| Border dash style. Default value: BorderDashStyle.Solid. | [optional] 
 **borderVisible** | **bool**| Border visibility. If false than parameter Width is always ignored (0). Default value: false. | [optional] 
 **enableChecksum** | **String**| Enable checksum during generation 1D barcodes. Default is treated as Yes for symbology which must contain checksum, as No where checksum only possible. Checksum is possible: Code39 Standard/Extended, Standard2of5, Interleaved2of5, Matrix2of5, ItalianPost25, DeutschePostIdentcode, DeutschePostLeitcode, VIN, Codabar Checksum always used: Rest symbology | [optional] 
 **enableEscape** | **bool**| Indicates whether explains the character \&quot;\\\&quot; as an escape character in CodeText property. Used for Pdf417, DataMatrix, Code128 only If the EnableEscape is true, \&quot;\\\&quot; will be explained as a special escape character. Otherwise, \&quot;\\\&quot; acts as normal characters. Aspose.BarCode supports input decimal ascii code and mnemonic for ASCII control-code characters. For example, \\013 and \\\\CR stands for CR. | [optional] 
 **filledBars** | **bool**| Value indicating whether bars are filled. Only for 1D barcodes. Default value: true. | [optional] 
 **alwaysShowChecksum** | **bool**| Always display checksum digit in the human readable text for Code128 and GS1Code128 barcodes. | [optional] 
 **wideNarrowRatio** | **double**| Wide bars to Narrow bars ratio. Default value: 3, that is, wide bars are 3 times as wide as narrow bars. Used for ITF, PZN, PharmaCode, Standard2of5, Interleaved2of5, Matrix2of5, ItalianPost25, IATA2of5, VIN, DeutschePost, OPC, Code32, DataLogic2of5, PatchCode, Code39Extended, Code39Standard | [optional] 
 **validateText** | **bool**| Only for 1D barcodes. If codetext is incorrect and value set to true - exception will be thrown. Otherwise codetext will be corrected to match barcode&#39;s specification. Exception always will be thrown for: Databar symbology if codetext is incorrect. Exception always will not be thrown for: AustraliaPost, SingaporePost, Code39Extended, Code93Extended, Code16K, Code128 symbology if codetext is incorrect. | [optional] 
 **supplementData** | **String**| Supplement parameters. Used for Interleaved2of5, Standard2of5, EAN13, EAN8, UPCA, UPCE, ISBN, ISSN, ISMN. | [optional] 
 **supplementSpace** | **double**| Space between main the BarCode and supplement BarCode. | [optional] 
 **barWidthReduction** | **double**| Bars reduction value that is used to compensate ink spread while printing. | [optional] 
 **useAntiAlias** | **bool**| Indicates whether is used anti-aliasing mode to render image. Anti-aliasing mode is applied to barcode and text drawing. | [optional] 
 **format** | **String**| Result image format. | [optional] 

### Return type

[**MultipartFile**](File.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: image/png, image/bmp, image/gif, image/jpeg, image/svg+xml, image/tiff


# **getBarcodeRecognize**
> BarcodeResponseList getBarcodeRecognize(name, type, types, checksumValidation, detectEncoding, preset, rectX, rectY, rectWidth, rectHeight, stripFNC, timeout, medianSmoothingWindowSize, allowMedianSmoothing, allowComplexBackground, allowDatamatrixIndustrialBarcodes, allowDecreasedImage, allowDetectScanGap, allowIncorrectBarcodes, allowInvertImage, allowMicroWhiteSpotsRemoving, allowOneDFastBarcodesDetector, allowOneDWipedBarsRestoration, allowQRMicroQrRestoration, allowRegularImage, allowSaltAndPepperFiltering, allowWhiteSpotsRemoving, checkMore1DVariants, fastScanOnly, allowAdditionalRestorations, regionLikelihoodThresholdPercent, scanWindowSizes, similarity, skipDiagonalSearch, readTinyBarcodes, australianPostEncodingTable, ignoreEndingFillingPatternsForCTable, storage, folder)

Recognize barcode from a file on server.

### Example
```dart
import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';
// TODO Configure OAuth2 access token for authorization: JWT
//aspose_barcode_cloud.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = BarcodeApi();
final name = name_example; // String | The image file name.
final type = type_example; // String | The type of barcode to read.
final types = []; // List<DecodeBarcodeType> | Multiple barcode types to read.
final checksumValidation = checksumValidation_example; // String | Enable checksum validation during recognition for 1D barcodes. Default is treated as Yes for symbologies which must contain checksum, as No where checksum only possible. Checksum never used: Codabar Checksum is possible: Code39 Standard/Extended, Standard2of5, Interleaved2of5, Matrix2of5, ItalianPost25, DeutschePostIdentcode, DeutschePostLeitcode, VIN Checksum always used: Rest symbologies
final detectEncoding = true; // bool | A flag which force engine to detect codetext encoding for Unicode.
final preset = preset_example; // String | Preset allows to configure recognition quality and speed manually. You can quickly set up Preset by embedded presets: HighPerformance, NormalQuality, HighQuality, MaxBarCodes or you can manually configure separate options. Default value of Preset is NormalQuality.
final rectX = 56; // int | Set X of top left corner of area for recognition.
final rectY = 56; // int | Set Y of top left corner of area for recognition.
final rectWidth = 56; // int | Set Width of area for recognition.
final rectHeight = 56; // int | Set Height of area for recognition.
final stripFNC = true; // bool | Value indicating whether FNC symbol strip must be done.
final timeout = 56; // int | Timeout of recognition process in milliseconds. Default value is 15_000 (15 seconds). Maximum value is 30_000 (1/2 minute). In case of a timeout RequestTimeout (408) status will be returned. Try reducing the image size to avoid timeout.
final medianSmoothingWindowSize = 56; // int | Window size for median smoothing. Typical values are 3 or 4. Default value is 3. AllowMedianSmoothing must be set.
final allowMedianSmoothing = true; // bool | Allows engine to enable median smoothing as additional scan. Mode helps to recognize noised barcodes.
final allowComplexBackground = true; // bool | Allows engine to recognize color barcodes on color background as additional scan. Extremely slow mode.
final allowDatamatrixIndustrialBarcodes = true; // bool | Allows engine for Datamatrix to recognize dashed industrial Datamatrix barcodes. Slow mode which helps only for dashed barcodes which consist from spots.
final allowDecreasedImage = true; // bool | Allows engine to recognize decreased image as additional scan. Size for decreasing is selected by internal engine algorithms. Mode helps to recognize barcodes which are noised and blurred but captured with high resolution.
final allowDetectScanGap = true; // bool | Allows engine to use gap between scans to increase recognition speed. Mode can make recognition problems with low height barcodes.
final allowIncorrectBarcodes = true; // bool | Allows engine to recognize barcodes which has incorrect checksum or incorrect values. Mode can be used to recognize damaged barcodes with incorrect text.
final allowInvertImage = true; // bool | Allows engine to recognize inverse color image as additional scan. Mode can be used when barcode is white on black background.
final allowMicroWhiteSpotsRemoving = true; // bool | Allows engine for Postal barcodes to recognize slightly noised images. Mode helps to recognize slightly damaged Postal barcodes.
final allowOneDFastBarcodesDetector = true; // bool | Allows engine for 1D barcodes to quickly recognize high quality barcodes which fill almost whole image. Mode helps to quickly recognize generated barcodes from Internet.
final allowOneDWipedBarsRestoration = true; // bool | Allows engine for 1D barcodes to recognize barcodes with single wiped/glued bars in pattern.
final allowQRMicroQrRestoration = true; // bool | Allows engine for QR/MicroQR to recognize damaged MicroQR barcodes.
final allowRegularImage = true; // bool | Allows engine to recognize regular image without any restorations as main scan. Mode to recognize image as is.
final allowSaltAndPepperFiltering = true; // bool | Allows engine to recognize barcodes with salt and pepper noise type. Mode can remove small noise with white and black dots.
final allowWhiteSpotsRemoving = true; // bool | Allows engine to recognize image without small white spots as additional scan. Mode helps to recognize noised image as well as median smoothing filtering.
final checkMore1DVariants = true; // bool | Allows engine to recognize 1D barcodes with checksum by checking more recognition variants. Default value: False.
final fastScanOnly = true; // bool | Allows engine for 1D barcodes to quickly recognize middle slice of an image and return result without using any time-consuming algorithms. Default value: False.
final allowAdditionalRestorations = true; // bool | Allows engine using additional image restorations to recognize corrupted barcodes. At this time, it is used only in MicroPdf417 barcode type. Default value: False.
final regionLikelihoodThresholdPercent = 1.2; // double | Sets threshold for detected regions that may contain barcodes. Value 0.7 means that bottom 70% of possible regions are filtered out and not processed further. Region likelihood threshold must be between [0.05, 0.9] Use high values for clear images with few barcodes. Use low values for images with many barcodes or for noisy images. Low value may lead to a bigger recognition time.
final scanWindowSizes = []; // List<int> | Scan window sizes in pixels. Allowed sizes are 10, 15, 20, 25, 30. Scanning with small window size takes more time and provides more accuracy but may fail in detecting very big barcodes. Combining of several window sizes can improve detection quality.
final similarity = 1.2; // double | Similarity coefficient depends on how homogeneous barcodes are. Use high value for clear barcodes. Use low values to detect barcodes that ara partly damaged or not lighten evenly. Similarity coefficient must be between [0.5, 0.9]
final skipDiagonalSearch = true; // bool | Allows detector to skip search for diagonal barcodes. Setting it to false will increase detection time but allow to find diagonal barcodes that can be missed otherwise. Enabling of diagonal search leads to a bigger detection time.
final readTinyBarcodes = true; // bool | Allows engine to recognize tiny barcodes on large images. Ignored if AllowIncorrectBarcodes is set to True. Default value: False.
final australianPostEncodingTable = australianPostEncodingTable_example; // String | Interpreting Type for the Customer Information of AustralianPost BarCode.Default is CustomerInformationInterpretingType.Other.
final ignoreEndingFillingPatternsForCTable = true; // bool | The flag which force AustraliaPost decoder to ignore last filling patterns in Customer Information Field during decoding as CTable method. CTable encoding method does not have any gaps in encoding table and sequence \"333\" of filling patterns is decoded as letter \"z\".
final storage = storage_example; // String | The image storage.
final folder = folder_example; // String | The image folder.

try {
    final result = api_instance.getBarcodeRecognize(name, type, types, checksumValidation, detectEncoding, preset, rectX, rectY, rectWidth, rectHeight, stripFNC, timeout, medianSmoothingWindowSize, allowMedianSmoothing, allowComplexBackground, allowDatamatrixIndustrialBarcodes, allowDecreasedImage, allowDetectScanGap, allowIncorrectBarcodes, allowInvertImage, allowMicroWhiteSpotsRemoving, allowOneDFastBarcodesDetector, allowOneDWipedBarsRestoration, allowQRMicroQrRestoration, allowRegularImage, allowSaltAndPepperFiltering, allowWhiteSpotsRemoving, checkMore1DVariants, fastScanOnly, allowAdditionalRestorations, regionLikelihoodThresholdPercent, scanWindowSizes, similarity, skipDiagonalSearch, readTinyBarcodes, australianPostEncodingTable, ignoreEndingFillingPatternsForCTable, storage, folder);
    print(result);
} catch (e) {
    print("Exception when calling BarcodeApi->getBarcodeRecognize: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
---- | ---- | ------------ | -----
 **name** | **String**| The image file name. | 
 **type** | **String**| The type of barcode to read. | [optional] 
 **types** | [**List&lt;DecodeBarcodeType&gt;**](DecodeBarcodeType.md)| Multiple barcode types to read. | [optional] 
 **checksumValidation** | **String**| Enable checksum validation during recognition for 1D barcodes. Default is treated as Yes for symbologies which must contain checksum, as No where checksum only possible. Checksum never used: Codabar Checksum is possible: Code39 Standard/Extended, Standard2of5, Interleaved2of5, Matrix2of5, ItalianPost25, DeutschePostIdentcode, DeutschePostLeitcode, VIN Checksum always used: Rest symbologies | [optional] 
 **detectEncoding** | **bool**| A flag which force engine to detect codetext encoding for Unicode. | [optional] 
 **preset** | **String**| Preset allows to configure recognition quality and speed manually. You can quickly set up Preset by embedded presets: HighPerformance, NormalQuality, HighQuality, MaxBarCodes or you can manually configure separate options. Default value of Preset is NormalQuality. | [optional] 
 **rectX** | **int**| Set X of top left corner of area for recognition. | [optional] 
 **rectY** | **int**| Set Y of top left corner of area for recognition. | [optional] 
 **rectWidth** | **int**| Set Width of area for recognition. | [optional] 
 **rectHeight** | **int**| Set Height of area for recognition. | [optional] 
 **stripFNC** | **bool**| Value indicating whether FNC symbol strip must be done. | [optional] 
 **timeout** | **int**| Timeout of recognition process in milliseconds. Default value is 15_000 (15 seconds). Maximum value is 30_000 (1/2 minute). In case of a timeout RequestTimeout (408) status will be returned. Try reducing the image size to avoid timeout. | [optional] 
 **medianSmoothingWindowSize** | **int**| Window size for median smoothing. Typical values are 3 or 4. Default value is 3. AllowMedianSmoothing must be set. | [optional] 
 **allowMedianSmoothing** | **bool**| Allows engine to enable median smoothing as additional scan. Mode helps to recognize noised barcodes. | [optional] 
 **allowComplexBackground** | **bool**| Allows engine to recognize color barcodes on color background as additional scan. Extremely slow mode. | [optional] 
 **allowDatamatrixIndustrialBarcodes** | **bool**| Allows engine for Datamatrix to recognize dashed industrial Datamatrix barcodes. Slow mode which helps only for dashed barcodes which consist from spots. | [optional] 
 **allowDecreasedImage** | **bool**| Allows engine to recognize decreased image as additional scan. Size for decreasing is selected by internal engine algorithms. Mode helps to recognize barcodes which are noised and blurred but captured with high resolution. | [optional] 
 **allowDetectScanGap** | **bool**| Allows engine to use gap between scans to increase recognition speed. Mode can make recognition problems with low height barcodes. | [optional] 
 **allowIncorrectBarcodes** | **bool**| Allows engine to recognize barcodes which has incorrect checksum or incorrect values. Mode can be used to recognize damaged barcodes with incorrect text. | [optional] 
 **allowInvertImage** | **bool**| Allows engine to recognize inverse color image as additional scan. Mode can be used when barcode is white on black background. | [optional] 
 **allowMicroWhiteSpotsRemoving** | **bool**| Allows engine for Postal barcodes to recognize slightly noised images. Mode helps to recognize slightly damaged Postal barcodes. | [optional] 
 **allowOneDFastBarcodesDetector** | **bool**| Allows engine for 1D barcodes to quickly recognize high quality barcodes which fill almost whole image. Mode helps to quickly recognize generated barcodes from Internet. | [optional] 
 **allowOneDWipedBarsRestoration** | **bool**| Allows engine for 1D barcodes to recognize barcodes with single wiped/glued bars in pattern. | [optional] 
 **allowQRMicroQrRestoration** | **bool**| Allows engine for QR/MicroQR to recognize damaged MicroQR barcodes. | [optional] 
 **allowRegularImage** | **bool**| Allows engine to recognize regular image without any restorations as main scan. Mode to recognize image as is. | [optional] 
 **allowSaltAndPepperFiltering** | **bool**| Allows engine to recognize barcodes with salt and pepper noise type. Mode can remove small noise with white and black dots. | [optional] 
 **allowWhiteSpotsRemoving** | **bool**| Allows engine to recognize image without small white spots as additional scan. Mode helps to recognize noised image as well as median smoothing filtering. | [optional] 
 **checkMore1DVariants** | **bool**| Allows engine to recognize 1D barcodes with checksum by checking more recognition variants. Default value: False. | [optional] 
 **fastScanOnly** | **bool**| Allows engine for 1D barcodes to quickly recognize middle slice of an image and return result without using any time-consuming algorithms. Default value: False. | [optional] 
 **allowAdditionalRestorations** | **bool**| Allows engine using additional image restorations to recognize corrupted barcodes. At this time, it is used only in MicroPdf417 barcode type. Default value: False. | [optional] 
 **regionLikelihoodThresholdPercent** | **double**| Sets threshold for detected regions that may contain barcodes. Value 0.7 means that bottom 70% of possible regions are filtered out and not processed further. Region likelihood threshold must be between [0.05, 0.9] Use high values for clear images with few barcodes. Use low values for images with many barcodes or for noisy images. Low value may lead to a bigger recognition time. | [optional] 
 **scanWindowSizes** | [**List&lt;int&gt;**](int.md)| Scan window sizes in pixels. Allowed sizes are 10, 15, 20, 25, 30. Scanning with small window size takes more time and provides more accuracy but may fail in detecting very big barcodes. Combining of several window sizes can improve detection quality. | [optional] 
 **similarity** | **double**| Similarity coefficient depends on how homogeneous barcodes are. Use high value for clear barcodes. Use low values to detect barcodes that ara partly damaged or not lighten evenly. Similarity coefficient must be between [0.5, 0.9] | [optional] 
 **skipDiagonalSearch** | **bool**| Allows detector to skip search for diagonal barcodes. Setting it to false will increase detection time but allow to find diagonal barcodes that can be missed otherwise. Enabling of diagonal search leads to a bigger detection time. | [optional] 
 **readTinyBarcodes** | **bool**| Allows engine to recognize tiny barcodes on large images. Ignored if AllowIncorrectBarcodes is set to True. Default value: False. | [optional] 
 **australianPostEncodingTable** | **String**| Interpreting Type for the Customer Information of AustralianPost BarCode.Default is CustomerInformationInterpretingType.Other. | [optional] 
 **ignoreEndingFillingPatternsForCTable** | **bool**| The flag which force AustraliaPost decoder to ignore last filling patterns in Customer Information Field during decoding as CTable method. CTable encoding method does not have any gaps in encoding table and sequence \&quot;333\&quot; of filling patterns is decoded as letter \&quot;z\&quot;. | [optional] 
 **storage** | **String**| The image storage. | [optional] 
 **folder** | **String**| The image folder. | [optional] 

### Return type

[**BarcodeResponseList**](BarcodeResponseList.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


# **postBarcodeRecognizeFromUrlOrContent**
> BarcodeResponseList postBarcodeRecognizeFromUrlOrContent(type, types, checksumValidation, detectEncoding, preset, rectX, rectY, rectWidth, rectHeight, stripFNC, timeout, medianSmoothingWindowSize, allowMedianSmoothing, allowComplexBackground, allowDatamatrixIndustrialBarcodes, allowDecreasedImage, allowDetectScanGap, allowIncorrectBarcodes, allowInvertImage, allowMicroWhiteSpotsRemoving, allowOneDFastBarcodesDetector, allowOneDWipedBarsRestoration, allowQRMicroQrRestoration, allowRegularImage, allowSaltAndPepperFiltering, allowWhiteSpotsRemoving, checkMore1DVariants, fastScanOnly, allowAdditionalRestorations, regionLikelihoodThresholdPercent, scanWindowSizes, similarity, skipDiagonalSearch, readTinyBarcodes, australianPostEncodingTable, ignoreEndingFillingPatternsForCTable, url, image)

Recognize barcode from an url or from request body. Request body can contain raw data bytes of the image with content-type \"application/octet-stream\". An image can also be passed as a form field.

### Example
```dart
import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';
// TODO Configure OAuth2 access token for authorization: JWT
//aspose_barcode_cloud.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = BarcodeApi();
final type = type_example; // String | The type of barcode to read.
final types = []; // List<DecodeBarcodeType> | Multiple barcode types to read.
final checksumValidation = checksumValidation_example; // String | Enable checksum validation during recognition for 1D barcodes. Default is treated as Yes for symbologies which must contain checksum, as No where checksum only possible. Checksum never used: Codabar Checksum is possible: Code39 Standard/Extended, Standard2of5, Interleaved2of5, Matrix2of5, ItalianPost25, DeutschePostIdentcode, DeutschePostLeitcode, VIN Checksum always used: Rest symbologies
final detectEncoding = true; // bool | A flag which force engine to detect codetext encoding for Unicode.
final preset = preset_example; // String | Preset allows to configure recognition quality and speed manually. You can quickly set up Preset by embedded presets: HighPerformance, NormalQuality, HighQuality, MaxBarCodes or you can manually configure separate options. Default value of Preset is NormalQuality.
final rectX = 56; // int | Set X of top left corner of area for recognition.
final rectY = 56; // int | Set Y of top left corner of area for recognition.
final rectWidth = 56; // int | Set Width of area for recognition.
final rectHeight = 56; // int | Set Height of area for recognition.
final stripFNC = true; // bool | Value indicating whether FNC symbol strip must be done.
final timeout = 56; // int | Timeout of recognition process in milliseconds. Default value is 15_000 (15 seconds). Maximum value is 30_000 (1/2 minute). In case of a timeout RequestTimeout (408) status will be returned. Try reducing the image size to avoid timeout.
final medianSmoothingWindowSize = 56; // int | Window size for median smoothing. Typical values are 3 or 4. Default value is 3. AllowMedianSmoothing must be set.
final allowMedianSmoothing = true; // bool | Allows engine to enable median smoothing as additional scan. Mode helps to recognize noised barcodes.
final allowComplexBackground = true; // bool | Allows engine to recognize color barcodes on color background as additional scan. Extremely slow mode.
final allowDatamatrixIndustrialBarcodes = true; // bool | Allows engine for Datamatrix to recognize dashed industrial Datamatrix barcodes. Slow mode which helps only for dashed barcodes which consist from spots.
final allowDecreasedImage = true; // bool | Allows engine to recognize decreased image as additional scan. Size for decreasing is selected by internal engine algorithms. Mode helps to recognize barcodes which are noised and blurred but captured with high resolution.
final allowDetectScanGap = true; // bool | Allows engine to use gap between scans to increase recognition speed. Mode can make recognition problems with low height barcodes.
final allowIncorrectBarcodes = true; // bool | Allows engine to recognize barcodes which has incorrect checksum or incorrect values. Mode can be used to recognize damaged barcodes with incorrect text.
final allowInvertImage = true; // bool | Allows engine to recognize inverse color image as additional scan. Mode can be used when barcode is white on black background.
final allowMicroWhiteSpotsRemoving = true; // bool | Allows engine for Postal barcodes to recognize slightly noised images. Mode helps to recognize slightly damaged Postal barcodes.
final allowOneDFastBarcodesDetector = true; // bool | Allows engine for 1D barcodes to quickly recognize high quality barcodes which fill almost whole image. Mode helps to quickly recognize generated barcodes from Internet.
final allowOneDWipedBarsRestoration = true; // bool | Allows engine for 1D barcodes to recognize barcodes with single wiped/glued bars in pattern.
final allowQRMicroQrRestoration = true; // bool | Allows engine for QR/MicroQR to recognize damaged MicroQR barcodes.
final allowRegularImage = true; // bool | Allows engine to recognize regular image without any restorations as main scan. Mode to recognize image as is.
final allowSaltAndPepperFiltering = true; // bool | Allows engine to recognize barcodes with salt and pepper noise type. Mode can remove small noise with white and black dots.
final allowWhiteSpotsRemoving = true; // bool | Allows engine to recognize image without small white spots as additional scan. Mode helps to recognize noised image as well as median smoothing filtering.
final checkMore1DVariants = true; // bool | Allows engine to recognize 1D barcodes with checksum by checking more recognition variants. Default value: False.
final fastScanOnly = true; // bool | Allows engine for 1D barcodes to quickly recognize middle slice of an image and return result without using any time-consuming algorithms. Default value: False.
final allowAdditionalRestorations = true; // bool | Allows engine using additional image restorations to recognize corrupted barcodes. At this time, it is used only in MicroPdf417 barcode type. Default value: False.
final regionLikelihoodThresholdPercent = 1.2; // double | Sets threshold for detected regions that may contain barcodes. Value 0.7 means that bottom 70% of possible regions are filtered out and not processed further. Region likelihood threshold must be between [0.05, 0.9] Use high values for clear images with few barcodes. Use low values for images with many barcodes or for noisy images. Low value may lead to a bigger recognition time.
final scanWindowSizes = []; // List<int> | Scan window sizes in pixels. Allowed sizes are 10, 15, 20, 25, 30. Scanning with small window size takes more time and provides more accuracy but may fail in detecting very big barcodes. Combining of several window sizes can improve detection quality.
final similarity = 1.2; // double | Similarity coefficient depends on how homogeneous barcodes are. Use high value for clear barcodes. Use low values to detect barcodes that ara partly damaged or not lighten evenly. Similarity coefficient must be between [0.5, 0.9]
final skipDiagonalSearch = true; // bool | Allows detector to skip search for diagonal barcodes. Setting it to false will increase detection time but allow to find diagonal barcodes that can be missed otherwise. Enabling of diagonal search leads to a bigger detection time.
final readTinyBarcodes = true; // bool | Allows engine to recognize tiny barcodes on large images. Ignored if AllowIncorrectBarcodes is set to True. Default value: False.
final australianPostEncodingTable = australianPostEncodingTable_example; // String | Interpreting Type for the Customer Information of AustralianPost BarCode.Default is CustomerInformationInterpretingType.Other.
final ignoreEndingFillingPatternsForCTable = true; // bool | The flag which force AustraliaPost decoder to ignore last filling patterns in Customer Information Field during decoding as CTable method. CTable encoding method does not have any gaps in encoding table and sequence \"333\" of filling patterns is decoded as letter \"z\".
final url = url_example; // String | The image file url.
final image = /path/to/file.txt; // MultipartFile | Image data

try {
    final result = api_instance.postBarcodeRecognizeFromUrlOrContent(type, types, checksumValidation, detectEncoding, preset, rectX, rectY, rectWidth, rectHeight, stripFNC, timeout, medianSmoothingWindowSize, allowMedianSmoothing, allowComplexBackground, allowDatamatrixIndustrialBarcodes, allowDecreasedImage, allowDetectScanGap, allowIncorrectBarcodes, allowInvertImage, allowMicroWhiteSpotsRemoving, allowOneDFastBarcodesDetector, allowOneDWipedBarsRestoration, allowQRMicroQrRestoration, allowRegularImage, allowSaltAndPepperFiltering, allowWhiteSpotsRemoving, checkMore1DVariants, fastScanOnly, allowAdditionalRestorations, regionLikelihoodThresholdPercent, scanWindowSizes, similarity, skipDiagonalSearch, readTinyBarcodes, australianPostEncodingTable, ignoreEndingFillingPatternsForCTable, url, image);
    print(result);
} catch (e) {
    print("Exception when calling BarcodeApi->postBarcodeRecognizeFromUrlOrContent: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
---- | ---- | ------------ | -----
 **type** | **String**| The type of barcode to read. | [optional] 
 **types** | [**List&lt;DecodeBarcodeType&gt;**](DecodeBarcodeType.md)| Multiple barcode types to read. | [optional] 
 **checksumValidation** | **String**| Enable checksum validation during recognition for 1D barcodes. Default is treated as Yes for symbologies which must contain checksum, as No where checksum only possible. Checksum never used: Codabar Checksum is possible: Code39 Standard/Extended, Standard2of5, Interleaved2of5, Matrix2of5, ItalianPost25, DeutschePostIdentcode, DeutschePostLeitcode, VIN Checksum always used: Rest symbologies | [optional] 
 **detectEncoding** | **bool**| A flag which force engine to detect codetext encoding for Unicode. | [optional] 
 **preset** | **String**| Preset allows to configure recognition quality and speed manually. You can quickly set up Preset by embedded presets: HighPerformance, NormalQuality, HighQuality, MaxBarCodes or you can manually configure separate options. Default value of Preset is NormalQuality. | [optional] 
 **rectX** | **int**| Set X of top left corner of area for recognition. | [optional] 
 **rectY** | **int**| Set Y of top left corner of area for recognition. | [optional] 
 **rectWidth** | **int**| Set Width of area for recognition. | [optional] 
 **rectHeight** | **int**| Set Height of area for recognition. | [optional] 
 **stripFNC** | **bool**| Value indicating whether FNC symbol strip must be done. | [optional] 
 **timeout** | **int**| Timeout of recognition process in milliseconds. Default value is 15_000 (15 seconds). Maximum value is 30_000 (1/2 minute). In case of a timeout RequestTimeout (408) status will be returned. Try reducing the image size to avoid timeout. | [optional] 
 **medianSmoothingWindowSize** | **int**| Window size for median smoothing. Typical values are 3 or 4. Default value is 3. AllowMedianSmoothing must be set. | [optional] 
 **allowMedianSmoothing** | **bool**| Allows engine to enable median smoothing as additional scan. Mode helps to recognize noised barcodes. | [optional] 
 **allowComplexBackground** | **bool**| Allows engine to recognize color barcodes on color background as additional scan. Extremely slow mode. | [optional] 
 **allowDatamatrixIndustrialBarcodes** | **bool**| Allows engine for Datamatrix to recognize dashed industrial Datamatrix barcodes. Slow mode which helps only for dashed barcodes which consist from spots. | [optional] 
 **allowDecreasedImage** | **bool**| Allows engine to recognize decreased image as additional scan. Size for decreasing is selected by internal engine algorithms. Mode helps to recognize barcodes which are noised and blurred but captured with high resolution. | [optional] 
 **allowDetectScanGap** | **bool**| Allows engine to use gap between scans to increase recognition speed. Mode can make recognition problems with low height barcodes. | [optional] 
 **allowIncorrectBarcodes** | **bool**| Allows engine to recognize barcodes which has incorrect checksum or incorrect values. Mode can be used to recognize damaged barcodes with incorrect text. | [optional] 
 **allowInvertImage** | **bool**| Allows engine to recognize inverse color image as additional scan. Mode can be used when barcode is white on black background. | [optional] 
 **allowMicroWhiteSpotsRemoving** | **bool**| Allows engine for Postal barcodes to recognize slightly noised images. Mode helps to recognize slightly damaged Postal barcodes. | [optional] 
 **allowOneDFastBarcodesDetector** | **bool**| Allows engine for 1D barcodes to quickly recognize high quality barcodes which fill almost whole image. Mode helps to quickly recognize generated barcodes from Internet. | [optional] 
 **allowOneDWipedBarsRestoration** | **bool**| Allows engine for 1D barcodes to recognize barcodes with single wiped/glued bars in pattern. | [optional] 
 **allowQRMicroQrRestoration** | **bool**| Allows engine for QR/MicroQR to recognize damaged MicroQR barcodes. | [optional] 
 **allowRegularImage** | **bool**| Allows engine to recognize regular image without any restorations as main scan. Mode to recognize image as is. | [optional] 
 **allowSaltAndPepperFiltering** | **bool**| Allows engine to recognize barcodes with salt and pepper noise type. Mode can remove small noise with white and black dots. | [optional] 
 **allowWhiteSpotsRemoving** | **bool**| Allows engine to recognize image without small white spots as additional scan. Mode helps to recognize noised image as well as median smoothing filtering. | [optional] 
 **checkMore1DVariants** | **bool**| Allows engine to recognize 1D barcodes with checksum by checking more recognition variants. Default value: False. | [optional] 
 **fastScanOnly** | **bool**| Allows engine for 1D barcodes to quickly recognize middle slice of an image and return result without using any time-consuming algorithms. Default value: False. | [optional] 
 **allowAdditionalRestorations** | **bool**| Allows engine using additional image restorations to recognize corrupted barcodes. At this time, it is used only in MicroPdf417 barcode type. Default value: False. | [optional] 
 **regionLikelihoodThresholdPercent** | **double**| Sets threshold for detected regions that may contain barcodes. Value 0.7 means that bottom 70% of possible regions are filtered out and not processed further. Region likelihood threshold must be between [0.05, 0.9] Use high values for clear images with few barcodes. Use low values for images with many barcodes or for noisy images. Low value may lead to a bigger recognition time. | [optional] 
 **scanWindowSizes** | [**List&lt;int&gt;**](int.md)| Scan window sizes in pixels. Allowed sizes are 10, 15, 20, 25, 30. Scanning with small window size takes more time and provides more accuracy but may fail in detecting very big barcodes. Combining of several window sizes can improve detection quality. | [optional] 
 **similarity** | **double**| Similarity coefficient depends on how homogeneous barcodes are. Use high value for clear barcodes. Use low values to detect barcodes that ara partly damaged or not lighten evenly. Similarity coefficient must be between [0.5, 0.9] | [optional] 
 **skipDiagonalSearch** | **bool**| Allows detector to skip search for diagonal barcodes. Setting it to false will increase detection time but allow to find diagonal barcodes that can be missed otherwise. Enabling of diagonal search leads to a bigger detection time. | [optional] 
 **readTinyBarcodes** | **bool**| Allows engine to recognize tiny barcodes on large images. Ignored if AllowIncorrectBarcodes is set to True. Default value: False. | [optional] 
 **australianPostEncodingTable** | **String**| Interpreting Type for the Customer Information of AustralianPost BarCode.Default is CustomerInformationInterpretingType.Other. | [optional] 
 **ignoreEndingFillingPatternsForCTable** | **bool**| The flag which force AustraliaPost decoder to ignore last filling patterns in Customer Information Field during decoding as CTable method. CTable encoding method does not have any gaps in encoding table and sequence \&quot;333\&quot; of filling patterns is decoded as letter \&quot;z\&quot;. | [optional] 
 **url** | **String**| The image file url. | [optional] 
 **image** | **MultipartFile**| Image data | [optional] 

### Return type

[**BarcodeResponseList**](BarcodeResponseList.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/x-www-form-urlencoded, application/octet-stream
 - **Accept**: application/json


# **postGenerateMultiple**
> MultipartFile postGenerateMultiple(generatorParamsList, format)

Generate multiple barcodes and return in response stream

### Example
```dart
import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';
// TODO Configure OAuth2 access token for authorization: JWT
//aspose_barcode_cloud.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = BarcodeApi();
final generatorParamsList = GeneratorParamsList(); // GeneratorParamsList | List of barcodes
final format = format_example; // String | Format to return stream in

try {
    final result = api_instance.postGenerateMultiple(generatorParamsList, format);
    print(result);
} catch (e) {
    print("Exception when calling BarcodeApi->postGenerateMultiple: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
---- | ---- | ------------ | -----
 **generatorParamsList** | [**GeneratorParamsList**](GeneratorParamsList.md)| List of barcodes | 
 **format** | **String**| Format to return stream in | [optional] [default to png]

### Return type

[**MultipartFile**](File.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: image/png, image/bmp, image/gif, image/jpeg, image/svg+xml, image/tiff


# **putBarcodeGenerateFile**
> ResultImageInfo putBarcodeGenerateFile(name, type, text, twoDDisplayText, textLocation, textAlignment, textColor, noWrap, resolution, resolutionX, resolutionY, dimensionX, textSpace, units, sizeMode, barHeight, imageHeight, imageWidth, rotationAngle, backColor, barColor, borderColor, borderWidth, borderDashStyle, borderVisible, enableChecksum, enableEscape, filledBars, alwaysShowChecksum, wideNarrowRatio, validateText, supplementData, supplementSpace, barWidthReduction, useAntiAlias, storage, folder, format)

Generate barcode and save on server (from query params or from file with json or xml content)

### Example
```dart
import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';
// TODO Configure OAuth2 access token for authorization: JWT
//aspose_barcode_cloud.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = BarcodeApi();
final name = name_example; // String | The image file name.
final type = type_example; // String | Type of barcode to generate.
final text = text_example; // String | Text to encode.
final twoDDisplayText = twoDDisplayText_example; // String | Text that will be displayed instead of codetext in 2D barcodes. Used for: Aztec, Pdf417, DataMatrix, QR, MaxiCode, DotCode
final textLocation = textLocation_example; // String | Specify the displaying Text Location, set to CodeLocation.None to hide CodeText. Default value: CodeLocation.Below.
final textAlignment = textAlignment_example; // String | Text alignment.
final textColor = textColor_example; // String | Specify the displaying CodeText's Color. Default value: black. Use named colors like: red, green, blue Or HTML colors like: #FF0000, #00FF00, #0000FF
final noWrap = true; // bool | Specify word wraps (line breaks) within text. Default value: false.
final resolution = 1.2; // double | Resolution of the BarCode image. One value for both dimensions. Default value: 96 dpi.
final resolutionX = 1.2; // double | DEPRECATED: Use 'Resolution' instead.
final resolutionY = 1.2; // double | DEPRECATED: Use 'Resolution' instead.
final dimensionX = 1.2; // double | The smallest width of the unit of BarCode bars or spaces. Increase this will increase the whole barcode image width. Ignored if AutoSizeMode property is set to AutoSizeMode.Nearest or AutoSizeMode.Interpolation.
final textSpace = 1.2; // double | Space between the CodeText and the BarCode in Unit value. Default value: 2pt. Ignored for EAN8, EAN13, UPCE, UPCA, ISBN, ISMN, ISSN, UpcaGs1DatabarCoupon.
final units = units_example; // String | Common Units for all measuring in query. Default units: pixel.
final sizeMode = sizeMode_example; // String | Specifies the different types of automatic sizing modes. Default value: AutoSizeMode.None.
final barHeight = 1.2; // double | Height of the barcode in given units. Default units: pixel.
final imageHeight = 1.2; // double | Height of the barcode image in given units. Default units: pixel.
final imageWidth = 1.2; // double | Width of the barcode image in given units. Default units: pixel.
final rotationAngle = 1.2; // double | BarCode image rotation angle, measured in degree, e.g. RotationAngle = 0 or RotationAngle = 360 means no rotation. If RotationAngle NOT equal to 90, 180, 270 or 0, it may increase the difficulty for the scanner to read the image. Default value: 0.
final backColor = backColor_example; // String | Background color of the barcode image. Default value: white. Use named colors like: red, green, blue Or HTML colors like: #FF0000, #00FF00, #0000FF
final barColor = barColor_example; // String | Bars color. Default value: black. Use named colors like: red, green, blue Or HTML colors like: #FF0000, #00FF00, #0000FF
final borderColor = borderColor_example; // String | Border color. Default value: black. Use named colors like: red, green, blue Or HTML colors like: #FF0000, #00FF00, #0000FF
final borderWidth = 1.2; // double | Border width. Default value: 0. Ignored if Visible is set to false.
final borderDashStyle = borderDashStyle_example; // String | Border dash style. Default value: BorderDashStyle.Solid.
final borderVisible = true; // bool | Border visibility. If false than parameter Width is always ignored (0). Default value: false.
final enableChecksum = enableChecksum_example; // String | Enable checksum during generation 1D barcodes. Default is treated as Yes for symbology which must contain checksum, as No where checksum only possible. Checksum is possible: Code39 Standard/Extended, Standard2of5, Interleaved2of5, Matrix2of5, ItalianPost25, DeutschePostIdentcode, DeutschePostLeitcode, VIN, Codabar Checksum always used: Rest symbology
final enableEscape = true; // bool | Indicates whether explains the character \"\\\" as an escape character in CodeText property. Used for Pdf417, DataMatrix, Code128 only If the EnableEscape is true, \"\\\" will be explained as a special escape character. Otherwise, \"\\\" acts as normal characters. Aspose.BarCode supports input decimal ascii code and mnemonic for ASCII control-code characters. For example, \\013 and \\\\CR stands for CR.
final filledBars = true; // bool | Value indicating whether bars are filled. Only for 1D barcodes. Default value: true.
final alwaysShowChecksum = true; // bool | Always display checksum digit in the human readable text for Code128 and GS1Code128 barcodes.
final wideNarrowRatio = 1.2; // double | Wide bars to Narrow bars ratio. Default value: 3, that is, wide bars are 3 times as wide as narrow bars. Used for ITF, PZN, PharmaCode, Standard2of5, Interleaved2of5, Matrix2of5, ItalianPost25, IATA2of5, VIN, DeutschePost, OPC, Code32, DataLogic2of5, PatchCode, Code39Extended, Code39Standard
final validateText = true; // bool | Only for 1D barcodes. If codetext is incorrect and value set to true - exception will be thrown. Otherwise codetext will be corrected to match barcode's specification. Exception always will be thrown for: Databar symbology if codetext is incorrect. Exception always will not be thrown for: AustraliaPost, SingaporePost, Code39Extended, Code93Extended, Code16K, Code128 symbology if codetext is incorrect.
final supplementData = supplementData_example; // String | Supplement parameters. Used for Interleaved2of5, Standard2of5, EAN13, EAN8, UPCA, UPCE, ISBN, ISSN, ISMN.
final supplementSpace = 1.2; // double | Space between main the BarCode and supplement BarCode.
final barWidthReduction = 1.2; // double | Bars reduction value that is used to compensate ink spread while printing.
final useAntiAlias = true; // bool | Indicates whether is used anti-aliasing mode to render image. Anti-aliasing mode is applied to barcode and text drawing.
final storage = storage_example; // String | Image's storage.
final folder = folder_example; // String | Image's folder.
final format = format_example; // String | The image format.

try {
    final result = api_instance.putBarcodeGenerateFile(name, type, text, twoDDisplayText, textLocation, textAlignment, textColor, noWrap, resolution, resolutionX, resolutionY, dimensionX, textSpace, units, sizeMode, barHeight, imageHeight, imageWidth, rotationAngle, backColor, barColor, borderColor, borderWidth, borderDashStyle, borderVisible, enableChecksum, enableEscape, filledBars, alwaysShowChecksum, wideNarrowRatio, validateText, supplementData, supplementSpace, barWidthReduction, useAntiAlias, storage, folder, format);
    print(result);
} catch (e) {
    print("Exception when calling BarcodeApi->putBarcodeGenerateFile: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
---- | ---- | ------------ | -----
 **name** | **String**| The image file name. | 
 **type** | **String**| Type of barcode to generate. | 
 **text** | **String**| Text to encode. | 
 **twoDDisplayText** | **String**| Text that will be displayed instead of codetext in 2D barcodes. Used for: Aztec, Pdf417, DataMatrix, QR, MaxiCode, DotCode | [optional] 
 **textLocation** | **String**| Specify the displaying Text Location, set to CodeLocation.None to hide CodeText. Default value: CodeLocation.Below. | [optional] 
 **textAlignment** | **String**| Text alignment. | [optional] 
 **textColor** | **String**| Specify the displaying CodeText&#39;s Color. Default value: black. Use named colors like: red, green, blue Or HTML colors like: #FF0000, #00FF00, #0000FF | [optional] 
 **noWrap** | **bool**| Specify word wraps (line breaks) within text. Default value: false. | [optional] 
 **resolution** | **double**| Resolution of the BarCode image. One value for both dimensions. Default value: 96 dpi. | [optional] 
 **resolutionX** | **double**| DEPRECATED: Use &#39;Resolution&#39; instead. | [optional] 
 **resolutionY** | **double**| DEPRECATED: Use &#39;Resolution&#39; instead. | [optional] 
 **dimensionX** | **double**| The smallest width of the unit of BarCode bars or spaces. Increase this will increase the whole barcode image width. Ignored if AutoSizeMode property is set to AutoSizeMode.Nearest or AutoSizeMode.Interpolation. | [optional] 
 **textSpace** | **double**| Space between the CodeText and the BarCode in Unit value. Default value: 2pt. Ignored for EAN8, EAN13, UPCE, UPCA, ISBN, ISMN, ISSN, UpcaGs1DatabarCoupon. | [optional] 
 **units** | **String**| Common Units for all measuring in query. Default units: pixel. | [optional] 
 **sizeMode** | **String**| Specifies the different types of automatic sizing modes. Default value: AutoSizeMode.None. | [optional] 
 **barHeight** | **double**| Height of the barcode in given units. Default units: pixel. | [optional] 
 **imageHeight** | **double**| Height of the barcode image in given units. Default units: pixel. | [optional] 
 **imageWidth** | **double**| Width of the barcode image in given units. Default units: pixel. | [optional] 
 **rotationAngle** | **double**| BarCode image rotation angle, measured in degree, e.g. RotationAngle &#x3D; 0 or RotationAngle &#x3D; 360 means no rotation. If RotationAngle NOT equal to 90, 180, 270 or 0, it may increase the difficulty for the scanner to read the image. Default value: 0. | [optional] 
 **backColor** | **String**| Background color of the barcode image. Default value: white. Use named colors like: red, green, blue Or HTML colors like: #FF0000, #00FF00, #0000FF | [optional] 
 **barColor** | **String**| Bars color. Default value: black. Use named colors like: red, green, blue Or HTML colors like: #FF0000, #00FF00, #0000FF | [optional] 
 **borderColor** | **String**| Border color. Default value: black. Use named colors like: red, green, blue Or HTML colors like: #FF0000, #00FF00, #0000FF | [optional] 
 **borderWidth** | **double**| Border width. Default value: 0. Ignored if Visible is set to false. | [optional] 
 **borderDashStyle** | **String**| Border dash style. Default value: BorderDashStyle.Solid. | [optional] 
 **borderVisible** | **bool**| Border visibility. If false than parameter Width is always ignored (0). Default value: false. | [optional] 
 **enableChecksum** | **String**| Enable checksum during generation 1D barcodes. Default is treated as Yes for symbology which must contain checksum, as No where checksum only possible. Checksum is possible: Code39 Standard/Extended, Standard2of5, Interleaved2of5, Matrix2of5, ItalianPost25, DeutschePostIdentcode, DeutschePostLeitcode, VIN, Codabar Checksum always used: Rest symbology | [optional] 
 **enableEscape** | **bool**| Indicates whether explains the character \&quot;\\\&quot; as an escape character in CodeText property. Used for Pdf417, DataMatrix, Code128 only If the EnableEscape is true, \&quot;\\\&quot; will be explained as a special escape character. Otherwise, \&quot;\\\&quot; acts as normal characters. Aspose.BarCode supports input decimal ascii code and mnemonic for ASCII control-code characters. For example, \\013 and \\\\CR stands for CR. | [optional] 
 **filledBars** | **bool**| Value indicating whether bars are filled. Only for 1D barcodes. Default value: true. | [optional] 
 **alwaysShowChecksum** | **bool**| Always display checksum digit in the human readable text for Code128 and GS1Code128 barcodes. | [optional] 
 **wideNarrowRatio** | **double**| Wide bars to Narrow bars ratio. Default value: 3, that is, wide bars are 3 times as wide as narrow bars. Used for ITF, PZN, PharmaCode, Standard2of5, Interleaved2of5, Matrix2of5, ItalianPost25, IATA2of5, VIN, DeutschePost, OPC, Code32, DataLogic2of5, PatchCode, Code39Extended, Code39Standard | [optional] 
 **validateText** | **bool**| Only for 1D barcodes. If codetext is incorrect and value set to true - exception will be thrown. Otherwise codetext will be corrected to match barcode&#39;s specification. Exception always will be thrown for: Databar symbology if codetext is incorrect. Exception always will not be thrown for: AustraliaPost, SingaporePost, Code39Extended, Code93Extended, Code16K, Code128 symbology if codetext is incorrect. | [optional] 
 **supplementData** | **String**| Supplement parameters. Used for Interleaved2of5, Standard2of5, EAN13, EAN8, UPCA, UPCE, ISBN, ISSN, ISMN. | [optional] 
 **supplementSpace** | **double**| Space between main the BarCode and supplement BarCode. | [optional] 
 **barWidthReduction** | **double**| Bars reduction value that is used to compensate ink spread while printing. | [optional] 
 **useAntiAlias** | **bool**| Indicates whether is used anti-aliasing mode to render image. Anti-aliasing mode is applied to barcode and text drawing. | [optional] 
 **storage** | **String**| Image&#39;s storage. | [optional] 
 **folder** | **String**| Image&#39;s folder. | [optional] 
 **format** | **String**| The image format. | [optional] 

### Return type

[**ResultImageInfo**](ResultImageInfo.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/x-www-form-urlencoded, application/json, application/xml
 - **Accept**: application/json


# **putBarcodeRecognizeFromBody**
> BarcodeResponseList putBarcodeRecognizeFromBody(name, readerParams, type, storage, folder)

Recognition of a barcode from file on server with parameters in body.

### Example
```dart
import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';
// TODO Configure OAuth2 access token for authorization: JWT
//aspose_barcode_cloud.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = BarcodeApi();
final name = name_example; // String | The image file name.
final readerParams = ReaderParams(); // ReaderParams | BarcodeReader object with parameters.
final type = type_example; // String | 
final storage = storage_example; // String | The storage name
final folder = folder_example; // String | The image folder.

try {
    final result = api_instance.putBarcodeRecognizeFromBody(name, readerParams, type, storage, folder);
    print(result);
} catch (e) {
    print("Exception when calling BarcodeApi->putBarcodeRecognizeFromBody: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
---- | ---- | ------------ | -----
 **name** | **String**| The image file name. | 
 **readerParams** | [**ReaderParams**](ReaderParams.md)| BarcodeReader object with parameters. | 
 **type** | **String**|  | [optional] 
 **storage** | **String**| The storage name | [optional] 
 **folder** | **String**| The image folder. | [optional] 

### Return type

[**BarcodeResponseList**](BarcodeResponseList.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


# **putGenerateMultiple**
> ResultImageInfo putGenerateMultiple(name, generatorParamsList, format, folder, storage)

Generate image with multiple barcodes and put new file on server

### Example
```dart
import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';
// TODO Configure OAuth2 access token for authorization: JWT
//aspose_barcode_cloud.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = BarcodeApi();
final name = name_example; // String | New filename
final generatorParamsList = GeneratorParamsList(); // GeneratorParamsList | List of barcodes
final format = format_example; // String | Format of file
final folder = folder_example; // String | Folder to place file to
final storage = storage_example; // String | The storage name

try {
    final result = api_instance.putGenerateMultiple(name, generatorParamsList, format, folder, storage);
    print(result);
} catch (e) {
    print("Exception when calling BarcodeApi->putGenerateMultiple: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
---- | ---- | ------------ | -----
 **name** | **String**| New filename | 
 **generatorParamsList** | [**GeneratorParamsList**](GeneratorParamsList.md)| List of barcodes | 
 **format** | **String**| Format of file | [optional] [default to png]
 **folder** | **String**| Folder to place file to | [optional] 
 **storage** | **String**| The storage name | [optional] 

### Return type

[**ResultImageInfo**](ResultImageInfo.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json


# **scanBarcode**
> BarcodeResponseList scanBarcode(imageFile, decodeTypes, timeout, checksumValidation)

Quickly scan a barcode from an image.

### Example
```dart
import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';
// TODO Configure OAuth2 access token for authorization: JWT
//aspose_barcode_cloud.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = BarcodeApi();
final imageFile = /path/to/file.txt; // MultipartFile | Image as file
final decodeTypes = []; // List<DecodeBarcodeType> | Types of barcode to recognize
final timeout = 56; // int | Timeout of recognition process in milliseconds.  Default value is 15_000 (15 seconds).  Maximum value is 30_000 (1/2 minute).  In case of a timeout RequestTimeout (408) status will be returned.  Try reducing the image size to avoid timeout.
final checksumValidation = checksumValidation_example; // String | Checksum validation setting. Default is ON.

try {
    final result = api_instance.scanBarcode(imageFile, decodeTypes, timeout, checksumValidation);
    print(result);
} catch (e) {
    print("Exception when calling BarcodeApi->scanBarcode: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
---- | ---- | ------------ | -----
 **imageFile** | **MultipartFile**| Image as file | 
 **decodeTypes** | [**List&lt;DecodeBarcodeType&gt;**](DecodeBarcodeType.md)| Types of barcode to recognize | [optional] 
 **timeout** | **int**| Timeout of recognition process in milliseconds.  Default value is 15_000 (15 seconds).  Maximum value is 30_000 (1/2 minute).  In case of a timeout RequestTimeout (408) status will be returned.  Try reducing the image size to avoid timeout. | [optional] 
 **checksumValidation** | **String**| Checksum validation setting. Default is ON. | [optional] 

### Return type

[**BarcodeResponseList**](BarcodeResponseList.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json


