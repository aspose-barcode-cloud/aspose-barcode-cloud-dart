part of aspose_barcode_cloud.api;

// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
class ReaderParams {
  /* The type of barcode to read. */
  DecodeBarcodeType? type = null;

/* Enable checksum validation during recognition for 1D barcodes. Default is treated as Yes for symbologies which must contain checksum, as No where checksum only possible. Checksum never used: Codabar Checksum is possible: Code39 Standard/Extended, Standard2of5, Interleaved2of5, Matrix2of5, ItalianPost25, DeutschePostIdentcode, DeutschePostLeitcode, VIN Checksum always used: Rest symbologies */
  ChecksumValidation? checksumValidation = null;

/* A flag which force engine to detect codetext encoding for Unicode. */
  bool? detectEncoding = null;

/* Preset allows to configure recognition quality and speed manually. You can quickly set up Preset by embedded presets: HighPerformance, NormalQuality, HighQuality, MaxBarCodes or you can manually configure separate options. Default value of Preset is NormalQuality. */
  PresetType? preset = null;

/* Set X of top left corner of area for recognition. */
  int? rectX = null;

/* Set Y of top left corner of area for recognition. */
  int? rectY = null;

/* Set Width of area for recognition. */
  int? rectWidth = null;

/* Set Height of area for recognition. */
  int? rectHeight = null;

/* Value indicating whether FNC symbol strip must be done. */
  bool? stripFNC = null;

/* Timeout of recognition process in milliseconds. Default value is 15_000 (15 seconds). Maximum value is 60_000 (1 minute). In case of a timeout RequestTimeout (408) status will be returned. Try reducing the image size to avoid timeout. */
  int? timeout = null;

/* Window size for median smoothing. Typical values are 3 or 4. Default value is 3. AllowMedianSmoothing must be set. */
  int? medianSmoothingWindowSize = null;

/* Allows engine to enable median smoothing as additional scan. Mode helps to recognize noised barcodes. */
  bool? allowMedianSmoothing = null;

/* Allows engine to recognize color barcodes on color background as additional scan. Extremely slow mode. */
  bool? allowComplexBackground = null;

/* Allows engine for Datamatrix to recognize dashed industrial Datamatrix barcodes. Slow mode which helps only for dashed barcodes which consist from spots. */
  bool? allowDatamatrixIndustrialBarcodes = null;

/* Allows engine to recognize decreased image as additional scan. Size for decreasing is selected by internal engine algorithms. Mode helps to recognize barcodes which are noised and blurred but captured with high resolution. */
  bool? allowDecreasedImage = null;

/* Allows engine to use gap between scans to increase recognition speed. Mode can make recognition problems with low height barcodes. */
  bool? allowDetectScanGap = null;

/* Allows engine to recognize barcodes which has incorrect checksum or incorrect values. Mode can be used to recognize damaged barcodes with incorrect text. */
  bool? allowIncorrectBarcodes = null;

/* Allows engine to recognize inverse color image as additional scan. Mode can be used when barcode is white on black background. */
  bool? allowInvertImage = null;

/* Allows engine for Postal barcodes to recognize slightly noised images. Mode helps to recognize slightly damaged Postal barcodes. */
  bool? allowMicroWhiteSpotsRemoving = null;

/* Allows engine for 1D barcodes to quickly recognize high quality barcodes which fill almost whole image. Mode helps to quickly recognize generated barcodes from Internet. */
  bool? allowOneDFastBarcodesDetector = null;

/* Allows engine for 1D barcodes to recognize barcodes with single wiped/glued bars in pattern. */
  bool? allowOneDWipedBarsRestoration = null;

/* Allows engine for QR/MicroQR to recognize damaged MicroQR barcodes. */
  bool? allowQRMicroQrRestoration = null;

/* Allows engine to recognize regular image without any restorations as main scan. Mode to recognize image as is. */
  bool? allowRegularImage = null;

/* Allows engine to recognize barcodes with salt and pepper noise type. Mode can remove small noise with white and black dots. */
  bool? allowSaltAndPepperFiltering = null;

/* Allows engine to recognize image without small white spots as additional scan. Mode helps to recognize noised image as well as median smoothing filtering. */
  bool? allowWhiteSpotsRemoving = null;

/* Allows engine to recognize 1D barcodes with checksum by checking more recognition variants. Default value: False. */
  bool? checkMore1DVariants = null;

/* Allows engine for 1D barcodes to quickly recognize middle slice of an image and return result without using any time-consuming algorithms. Default value: False. */
  bool? fastScanOnly = null;

/* Allows engine using additional image restorations to recognize corrupted barcodes. At this time, it is used only in MicroPdf417 barcode type. Default value: False. */
  bool? allowAdditionalRestorations = null;

/* Sets threshold for detected regions that may contain barcodes. Value 0.7 means that bottom 70% of possible regions are filtered out and not processed further. Region likelihood threshold must be between [0.05, 0.9] Use high values for clear images with few barcodes. Use low values for images with many barcodes or for noisy images. Low value may lead to a bigger recognition time. */
  double? regionLikelihoodThresholdPercent = null;

/* Scan window sizes in pixels. Allowed sizes are 10, 15, 20, 25, 30. Scanning with small window size takes more time and provides more accuracy but may fail in detecting very big barcodes. Combining of several window sizes can improve detection quality. */
  List<int>? scanWindowSizes = [];

/* Similarity coefficient depends on how homogeneous barcodes are. Use high value for for clear barcodes. Use low values to detect barcodes that ara partly damaged or not lighten evenly. Similarity coefficient must be between [0.5, 0.9] */
  double? similarity = null;

/* Allows detector to skip search for diagonal barcodes. Setting it to false will increase detection time but allow to find diagonal barcodes that can be missed otherwise. Enabling of diagonal search leads to a bigger detection time. */
  bool? skipDiagonalSearch = null;

/* Allows engine to recognize tiny barcodes on large images. Ignored if AllowIncorrectBarcodes is set to True. Default value: False. */
  bool? readTinyBarcodes = null;

/* Interpreting Type for the Customer Information of AustralianPost BarCode.Default is CustomerInformationInterpretingType.Other. */
  CustomerInformationInterpretingType? australianPostEncodingTable = null;

/* The flag which force AustraliaPost decoder to ignore last filling patterns in Customer Information Field during decoding as CTable method. CTable encoding method does not have any gaps in encoding table and sequence \"333\" of filling patterns is decoded as letter \"z\". */
  bool? ignoreEndingFillingPatternsForCTable = null;

  ReaderParams();

  @override
  String toString() {
    return 'ReaderParams[type=$type, checksumValidation=$checksumValidation, detectEncoding=$detectEncoding, preset=$preset, rectX=$rectX, rectY=$rectY, rectWidth=$rectWidth, rectHeight=$rectHeight, stripFNC=$stripFNC, timeout=$timeout, medianSmoothingWindowSize=$medianSmoothingWindowSize, allowMedianSmoothing=$allowMedianSmoothing, allowComplexBackground=$allowComplexBackground, allowDatamatrixIndustrialBarcodes=$allowDatamatrixIndustrialBarcodes, allowDecreasedImage=$allowDecreasedImage, allowDetectScanGap=$allowDetectScanGap, allowIncorrectBarcodes=$allowIncorrectBarcodes, allowInvertImage=$allowInvertImage, allowMicroWhiteSpotsRemoving=$allowMicroWhiteSpotsRemoving, allowOneDFastBarcodesDetector=$allowOneDFastBarcodesDetector, allowOneDWipedBarsRestoration=$allowOneDWipedBarsRestoration, allowQRMicroQrRestoration=$allowQRMicroQrRestoration, allowRegularImage=$allowRegularImage, allowSaltAndPepperFiltering=$allowSaltAndPepperFiltering, allowWhiteSpotsRemoving=$allowWhiteSpotsRemoving, checkMore1DVariants=$checkMore1DVariants, fastScanOnly=$fastScanOnly, allowAdditionalRestorations=$allowAdditionalRestorations, regionLikelihoodThresholdPercent=$regionLikelihoodThresholdPercent, scanWindowSizes=$scanWindowSizes, similarity=$similarity, skipDiagonalSearch=$skipDiagonalSearch, readTinyBarcodes=$readTinyBarcodes, australianPostEncodingTable=$australianPostEncodingTable, ignoreEndingFillingPatternsForCTable=$ignoreEndingFillingPatternsForCTable, ]';
  }

  ReaderParams.fromJson(Map<String, dynamic> json) {
    type = DecodeBarcodeType.fromJson(json['type']);
    checksumValidation =
        ChecksumValidation.fromJson(json['checksumValidation']);
    detectEncoding = json['detectEncoding'];
    preset = PresetType.fromJson(json['preset']);
    rectX = json['rectX'];
    rectY = json['rectY'];
    rectWidth = json['rectWidth'];
    rectHeight = json['rectHeight'];
    stripFNC = json['stripFNC'];
    timeout = json['timeout'];
    medianSmoothingWindowSize = json['medianSmoothingWindowSize'];
    allowMedianSmoothing = json['allowMedianSmoothing'];
    allowComplexBackground = json['allowComplexBackground'];
    allowDatamatrixIndustrialBarcodes =
        json['allowDatamatrixIndustrialBarcodes'];
    allowDecreasedImage = json['allowDecreasedImage'];
    allowDetectScanGap = json['allowDetectScanGap'];
    allowIncorrectBarcodes = json['allowIncorrectBarcodes'];
    allowInvertImage = json['allowInvertImage'];
    allowMicroWhiteSpotsRemoving = json['allowMicroWhiteSpotsRemoving'];
    allowOneDFastBarcodesDetector = json['allowOneDFastBarcodesDetector'];
    allowOneDWipedBarsRestoration = json['allowOneDWipedBarsRestoration'];
    allowQRMicroQrRestoration = json['allowQRMicroQrRestoration'];
    allowRegularImage = json['allowRegularImage'];
    allowSaltAndPepperFiltering = json['allowSaltAndPepperFiltering'];
    allowWhiteSpotsRemoving = json['allowWhiteSpotsRemoving'];
    checkMore1DVariants = json['checkMore1DVariants'];
    fastScanOnly = json['fastScanOnly'];
    allowAdditionalRestorations = json['allowAdditionalRestorations'];
    regionLikelihoodThresholdPercent =
        json['regionLikelihoodThresholdPercent'] == null
            ? null
            : json['regionLikelihoodThresholdPercent'].toDouble();
    scanWindowSizes =
        (json['scanWindowSizes'] as List).map((item) => item as int).toList();
    similarity =
        json['similarity'] == null ? null : json['similarity'].toDouble();
    skipDiagonalSearch = json['skipDiagonalSearch'];
    readTinyBarcodes = json['readTinyBarcodes'];
    australianPostEncodingTable = CustomerInformationInterpretingType.fromJson(
        json['australianPostEncodingTable']);
    ignoreEndingFillingPatternsForCTable =
        json['ignoreEndingFillingPatternsForCTable'];
  }

  Map<String, dynamic> toJson() {
    return {
      'Type': type,
      'ChecksumValidation': checksumValidation,
      'DetectEncoding': detectEncoding,
      'Preset': preset,
      'RectX': rectX,
      'RectY': rectY,
      'RectWidth': rectWidth,
      'RectHeight': rectHeight,
      'StripFNC': stripFNC,
      'Timeout': timeout,
      'MedianSmoothingWindowSize': medianSmoothingWindowSize,
      'AllowMedianSmoothing': allowMedianSmoothing,
      'AllowComplexBackground': allowComplexBackground,
      'AllowDatamatrixIndustrialBarcodes': allowDatamatrixIndustrialBarcodes,
      'AllowDecreasedImage': allowDecreasedImage,
      'AllowDetectScanGap': allowDetectScanGap,
      'AllowIncorrectBarcodes': allowIncorrectBarcodes,
      'AllowInvertImage': allowInvertImage,
      'AllowMicroWhiteSpotsRemoving': allowMicroWhiteSpotsRemoving,
      'AllowOneDFastBarcodesDetector': allowOneDFastBarcodesDetector,
      'AllowOneDWipedBarsRestoration': allowOneDWipedBarsRestoration,
      'AllowQRMicroQrRestoration': allowQRMicroQrRestoration,
      'AllowRegularImage': allowRegularImage,
      'AllowSaltAndPepperFiltering': allowSaltAndPepperFiltering,
      'AllowWhiteSpotsRemoving': allowWhiteSpotsRemoving,
      'CheckMore1DVariants': checkMore1DVariants,
      'FastScanOnly': fastScanOnly,
      'AllowAdditionalRestorations': allowAdditionalRestorations,
      'RegionLikelihoodThresholdPercent': regionLikelihoodThresholdPercent,
      'ScanWindowSizes': scanWindowSizes,
      'Similarity': similarity,
      'SkipDiagonalSearch': skipDiagonalSearch,
      'ReadTinyBarcodes': readTinyBarcodes,
      'AustralianPostEncodingTable': australianPostEncodingTable,
      'IgnoreEndingFillingPatternsForCTable':
          ignoreEndingFillingPatternsForCTable
    };
  }

  static List<ReaderParams> listFromJson(List<dynamic> json) {
    return json.map((value) => ReaderParams.fromJson(value)).toList();
  }

  static Map<String, ReaderParams> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = Map<String, ReaderParams>();
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = ReaderParams.fromJson(value));
    }
    return map;
  }
}
