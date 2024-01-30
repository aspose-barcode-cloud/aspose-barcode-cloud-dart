# aspose_barcode_cloud.model.ReaderParams

## Load the model package

```dart
import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';
```
Represents BarcodeReader object.

## Properties

Name | Type | Description | Notes
---- | ---- | ----------- | -----
**type** | [**DecodeBarcodeType**](DecodeBarcodeType.md) | The type of barcode to read. | [optional] [default to null]
**types** | [**List&lt;DecodeBarcodeType&gt;**](DecodeBarcodeType.md) | Multiple barcode types to read. | [optional] [default to []]
**checksumValidation** | [**ChecksumValidation**](ChecksumValidation.md) | Enable checksum validation during recognition for 1D barcodes. Default is treated as Yes for symbologies which must contain checksum, as No where checksum only possible. Checksum never used: Codabar Checksum is possible: Code39 Standard/Extended, Standard2of5, Interleaved2of5, Matrix2of5, ItalianPost25, DeutschePostIdentcode, DeutschePostLeitcode, VIN Checksum always used: Rest symbologies | [optional] [default to null]
**detectEncoding** | **bool** | A flag which force engine to detect codetext encoding for Unicode. | [optional] [default to null]
**preset** | [**PresetType**](PresetType.md) | Preset allows to configure recognition quality and speed manually. You can quickly set up Preset by embedded presets: HighPerformance, NormalQuality, HighQuality, MaxBarCodes or you can manually configure separate options. Default value of Preset is NormalQuality. | [optional] [default to null]
**rectX** | **int** | Set X of top left corner of area for recognition. | [optional] [default to null]
**rectY** | **int** | Set Y of top left corner of area for recognition. | [optional] [default to null]
**rectWidth** | **int** | Set Width of area for recognition. | [optional] [default to null]
**rectHeight** | **int** | Set Height of area for recognition. | [optional] [default to null]
**stripFNC** | **bool** | Value indicating whether FNC symbol strip must be done. | [optional] [default to null]
**timeout** | **int** | Timeout of recognition process in milliseconds. Default value is 15_000 (15 seconds). Maximum value is 30_000 (1/2 minute). In case of a timeout RequestTimeout (408) status will be returned. Try reducing the image size to avoid timeout. | [optional] [default to null]
**medianSmoothingWindowSize** | **int** | Window size for median smoothing. Typical values are 3 or 4. Default value is 3. AllowMedianSmoothing must be set. | [optional] [default to null]
**allowMedianSmoothing** | **bool** | Allows engine to enable median smoothing as additional scan. Mode helps to recognize noised barcodes. | [optional] [default to null]
**allowComplexBackground** | **bool** | Allows engine to recognize color barcodes on color background as additional scan. Extremely slow mode. | [optional] [default to null]
**allowDatamatrixIndustrialBarcodes** | **bool** | Allows engine for Datamatrix to recognize dashed industrial Datamatrix barcodes. Slow mode which helps only for dashed barcodes which consist from spots. | [optional] [default to null]
**allowDecreasedImage** | **bool** | Allows engine to recognize decreased image as additional scan. Size for decreasing is selected by internal engine algorithms. Mode helps to recognize barcodes which are noised and blurred but captured with high resolution. | [optional] [default to null]
**allowDetectScanGap** | **bool** | Allows engine to use gap between scans to increase recognition speed. Mode can make recognition problems with low height barcodes. | [optional] [default to null]
**allowIncorrectBarcodes** | **bool** | Allows engine to recognize barcodes which has incorrect checksum or incorrect values. Mode can be used to recognize damaged barcodes with incorrect text. | [optional] [default to null]
**allowInvertImage** | **bool** | Allows engine to recognize inverse color image as additional scan. Mode can be used when barcode is white on black background. | [optional] [default to null]
**allowMicroWhiteSpotsRemoving** | **bool** | Allows engine for Postal barcodes to recognize slightly noised images. Mode helps to recognize slightly damaged Postal barcodes. | [optional] [default to null]
**allowOneDFastBarcodesDetector** | **bool** | Allows engine for 1D barcodes to quickly recognize high quality barcodes which fill almost whole image. Mode helps to quickly recognize generated barcodes from Internet. | [optional] [default to null]
**allowOneDWipedBarsRestoration** | **bool** | Allows engine for 1D barcodes to recognize barcodes with single wiped/glued bars in pattern. | [optional] [default to null]
**allowQRMicroQrRestoration** | **bool** | Allows engine for QR/MicroQR to recognize damaged MicroQR barcodes. | [optional] [default to null]
**allowRegularImage** | **bool** | Allows engine to recognize regular image without any restorations as main scan. Mode to recognize image as is. | [optional] [default to null]
**allowSaltAndPepperFiltering** | **bool** | Allows engine to recognize barcodes with salt and pepper noise type. Mode can remove small noise with white and black dots. | [optional] [default to null]
**allowWhiteSpotsRemoving** | **bool** | Allows engine to recognize image without small white spots as additional scan. Mode helps to recognize noised image as well as median smoothing filtering. | [optional] [default to null]
**checkMore1DVariants** | **bool** | Allows engine to recognize 1D barcodes with checksum by checking more recognition variants. Default value: False. | [optional] [default to null]
**fastScanOnly** | **bool** | Allows engine for 1D barcodes to quickly recognize middle slice of an image and return result without using any time-consuming algorithms. Default value: False. | [optional] [default to null]
**allowAdditionalRestorations** | **bool** | Allows engine using additional image restorations to recognize corrupted barcodes. At this time, it is used only in MicroPdf417 barcode type. Default value: False. | [optional] [default to null]
**regionLikelihoodThresholdPercent** | **double** | Sets threshold for detected regions that may contain barcodes. Value 0.7 means that bottom 70% of possible regions are filtered out and not processed further. Region likelihood threshold must be between [0.05, 0.9] Use high values for clear images with few barcodes. Use low values for images with many barcodes or for noisy images. Low value may lead to a bigger recognition time. | [optional] [default to null]
**scanWindowSizes** | **List&lt;int&gt;** | Scan window sizes in pixels. Allowed sizes are 10, 15, 20, 25, 30. Scanning with small window size takes more time and provides more accuracy but may fail in detecting very big barcodes. Combining of several window sizes can improve detection quality. | [optional] [default to []]
**similarity** | **double** | Similarity coefficient depends on how homogeneous barcodes are. Use high value for for clear barcodes. Use low values to detect barcodes that ara partly damaged or not lighten evenly. Similarity coefficient must be between [0.5, 0.9] | [optional] [default to null]
**skipDiagonalSearch** | **bool** | Allows detector to skip search for diagonal barcodes. Setting it to false will increase detection time but allow to find diagonal barcodes that can be missed otherwise. Enabling of diagonal search leads to a bigger detection time. | [optional] [default to null]
**readTinyBarcodes** | **bool** | Allows engine to recognize tiny barcodes on large images. Ignored if AllowIncorrectBarcodes is set to True. Default value: False. | [optional] [default to null]
**australianPostEncodingTable** | [**CustomerInformationInterpretingType**](CustomerInformationInterpretingType.md) | Interpreting Type for the Customer Information of AustralianPost BarCode.Default is CustomerInformationInterpretingType.Other. | [optional] [default to null]
**ignoreEndingFillingPatternsForCTable** | **bool** | The flag which force AustraliaPost decoder to ignore last filling patterns in Customer Information Field during decoding as CTable method. CTable encoding method does not have any gaps in encoding table and sequence \&quot;333\&quot; of filling patterns is decoded as letter \&quot;z\&quot;. | [optional] [default to null]

