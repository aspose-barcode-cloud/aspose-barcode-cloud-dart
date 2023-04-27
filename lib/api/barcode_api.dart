part of aspose_barcode_cloud.api;

class BarcodeApi {
  BarcodeApi(this.apiClient) {}

  final ApiClient apiClient;

  ///
  /// Generate barcode.
  ///
  Future<Uint8List> getBarcodeGenerate(String type, String text,
      {String? twoDDisplayText,
      String? textLocation,
      String? textAlignment,
      String? textColor,
      String? fontSizeMode,
      bool? noWrap,
      double? resolution,
      double? resolutionX,
      double? resolutionY,
      double? dimensionX,
      double? textSpace,
      String? units,
      String? sizeMode,
      double? barHeight,
      double? imageHeight,
      double? imageWidth,
      double? rotationAngle,
      String? backColor,
      String? barColor,
      String? borderColor,
      double? borderWidth,
      String? borderDashStyle,
      bool? borderVisible,
      String? enableChecksum,
      bool? enableEscape,
      bool? filledBars,
      bool? alwaysShowChecksum,
      double? wideNarrowRatio,
      bool? validateText,
      String? supplementData,
      double? supplementSpace,
      double? barWidthReduction,
      bool? useAntiAlias,
      String? format}) async {
    // ignore: prefer_final_locals
    Object? postBody = null;

    // create path and map variables
    final String requestPath =
        "/barcode/generate".replaceAll("{format}", "json");

    // query params
    final List<QueryParam> queryParams = [];
    final Map<String, String> headerParams = {};
    final Map<String, String> formParams = {};
    queryParams.addAll(_convertParametersForCollectionFormat("", "Type", type));
    queryParams.addAll(_convertParametersForCollectionFormat("", "Text", text));
    if (twoDDisplayText != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "TwoDDisplayText", twoDDisplayText));
    }
    if (textLocation != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "TextLocation", textLocation));
    }
    if (textAlignment != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "TextAlignment", textAlignment));
    }
    if (textColor != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "TextColor", textColor));
    }
    if (fontSizeMode != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "FontSizeMode", fontSizeMode));
    }
    if (noWrap != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "NoWrap", noWrap));
    }
    if (resolution != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "Resolution", resolution));
    }
    if (resolutionX != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "ResolutionX", resolutionX));
    }
    if (resolutionY != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "ResolutionY", resolutionY));
    }
    if (dimensionX != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "DimensionX", dimensionX));
    }
    if (textSpace != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "TextSpace", textSpace));
    }
    if (units != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "Units", units));
    }
    if (sizeMode != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "SizeMode", sizeMode));
    }
    if (barHeight != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "BarHeight", barHeight));
    }
    if (imageHeight != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "ImageHeight", imageHeight));
    }
    if (imageWidth != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "ImageWidth", imageWidth));
    }
    if (rotationAngle != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "RotationAngle", rotationAngle));
    }
    if (backColor != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "BackColor", backColor));
    }
    if (barColor != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "BarColor", barColor));
    }
    if (borderColor != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "BorderColor", borderColor));
    }
    if (borderWidth != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "BorderWidth", borderWidth));
    }
    if (borderDashStyle != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "BorderDashStyle", borderDashStyle));
    }
    if (borderVisible != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "BorderVisible", borderVisible));
    }
    if (enableChecksum != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "EnableChecksum", enableChecksum));
    }
    if (enableEscape != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "EnableEscape", enableEscape));
    }
    if (filledBars != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "FilledBars", filledBars));
    }
    if (alwaysShowChecksum != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "AlwaysShowChecksum", alwaysShowChecksum));
    }
    if (wideNarrowRatio != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "WideNarrowRatio", wideNarrowRatio));
    }
    if (validateText != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "ValidateText", validateText));
    }
    if (supplementData != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "SupplementData", supplementData));
    }
    if (supplementSpace != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "SupplementSpace", supplementSpace));
    }
    if (barWidthReduction != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "BarWidthReduction", barWidthReduction));
    }
    if (useAntiAlias != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "UseAntiAlias", useAntiAlias));
    }
    if (format != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "format", format));
    }

    final List<String> contentTypes = ["application/json"];

    final String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    final List<String> authNames = ["JWT"];

    final response = await apiClient.invokeAPI(requestPath, 'GET', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else {
      return response.bodyBytes;
    }
  }

  ///
  /// Recognize barcode from a file on server.
  ///
  Future<BarcodeResponseList> getBarcodeRecognize(String name,
      {String? type,
      String? checksumValidation,
      bool? detectEncoding,
      String? preset,
      int? rectX,
      int? rectY,
      int? rectWidth,
      int? rectHeight,
      bool? stripFNC,
      int? timeout,
      int? medianSmoothingWindowSize,
      bool? allowMedianSmoothing,
      bool? allowComplexBackground,
      bool? allowDatamatrixIndustrialBarcodes,
      bool? allowDecreasedImage,
      bool? allowDetectScanGap,
      bool? allowIncorrectBarcodes,
      bool? allowInvertImage,
      bool? allowMicroWhiteSpotsRemoving,
      bool? allowOneDFastBarcodesDetector,
      bool? allowOneDWipedBarsRestoration,
      bool? allowQRMicroQrRestoration,
      bool? allowRegularImage,
      bool? allowSaltAndPepperFiltering,
      bool? allowWhiteSpotsRemoving,
      bool? checkMore1DVariants,
      bool? fastScanOnly,
      double? regionLikelihoodThresholdPercent,
      List<int>? scanWindowSizes,
      double? similarity,
      bool? skipDiagonalSearch,
      bool? readTinyBarcodes,
      String? australianPostEncodingTable,
      bool? ignoreEndingFillingPatternsForCTable,
      String? storage,
      String? folder}) async {
    // ignore: prefer_final_locals
    Object? postBody = null;

    // create path and map variables
    final String requestPath = "/barcode/{name}/recognize"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "name" + "}", name);

    // query params
    final List<QueryParam> queryParams = [];
    final Map<String, String> headerParams = {};
    final Map<String, String> formParams = {};
    if (type != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "Type", type));
    }
    if (checksumValidation != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "ChecksumValidation", checksumValidation));
    }
    if (detectEncoding != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "DetectEncoding", detectEncoding));
    }
    if (preset != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "Preset", preset));
    }
    if (rectX != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "RectX", rectX));
    }
    if (rectY != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "RectY", rectY));
    }
    if (rectWidth != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "RectWidth", rectWidth));
    }
    if (rectHeight != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "RectHeight", rectHeight));
    }
    if (stripFNC != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "StripFNC", stripFNC));
    }
    if (timeout != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "Timeout", timeout));
    }
    if (medianSmoothingWindowSize != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "MedianSmoothingWindowSize", medianSmoothingWindowSize));
    }
    if (allowMedianSmoothing != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "AllowMedianSmoothing", allowMedianSmoothing));
    }
    if (allowComplexBackground != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "AllowComplexBackground", allowComplexBackground));
    }
    if (allowDatamatrixIndustrialBarcodes != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "",
          "AllowDatamatrixIndustrialBarcodes",
          allowDatamatrixIndustrialBarcodes));
    }
    if (allowDecreasedImage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "AllowDecreasedImage", allowDecreasedImage));
    }
    if (allowDetectScanGap != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "AllowDetectScanGap", allowDetectScanGap));
    }
    if (allowIncorrectBarcodes != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "AllowIncorrectBarcodes", allowIncorrectBarcodes));
    }
    if (allowInvertImage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "AllowInvertImage", allowInvertImage));
    }
    if (allowMicroWhiteSpotsRemoving != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "AllowMicroWhiteSpotsRemoving", allowMicroWhiteSpotsRemoving));
    }
    if (allowOneDFastBarcodesDetector != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "AllowOneDFastBarcodesDetector", allowOneDFastBarcodesDetector));
    }
    if (allowOneDWipedBarsRestoration != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "AllowOneDWipedBarsRestoration", allowOneDWipedBarsRestoration));
    }
    if (allowQRMicroQrRestoration != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "AllowQRMicroQrRestoration", allowQRMicroQrRestoration));
    }
    if (allowRegularImage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "AllowRegularImage", allowRegularImage));
    }
    if (allowSaltAndPepperFiltering != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "AllowSaltAndPepperFiltering", allowSaltAndPepperFiltering));
    }
    if (allowWhiteSpotsRemoving != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "AllowWhiteSpotsRemoving", allowWhiteSpotsRemoving));
    }
    if (checkMore1DVariants != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "CheckMore1DVariants", checkMore1DVariants));
    }
    if (fastScanOnly != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "FastScanOnly", fastScanOnly));
    }
    if (regionLikelihoodThresholdPercent != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "",
          "RegionLikelihoodThresholdPercent",
          regionLikelihoodThresholdPercent));
    }
    if (scanWindowSizes != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "multi", "ScanWindowSizes", scanWindowSizes));
    }
    if (similarity != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "Similarity", similarity));
    }
    if (skipDiagonalSearch != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "SkipDiagonalSearch", skipDiagonalSearch));
    }
    if (readTinyBarcodes != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "ReadTinyBarcodes", readTinyBarcodes));
    }
    if (australianPostEncodingTable != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "AustralianPostEncodingTable", australianPostEncodingTable));
    }
    if (ignoreEndingFillingPatternsForCTable != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "",
          "IgnoreEndingFillingPatternsForCTable",
          ignoreEndingFillingPatternsForCTable));
    }
    if (storage != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "storage", storage));
    }
    if (folder != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "folder", folder));
    }

    final List<String> contentTypes = ["application/json"];

    final String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    final List<String> authNames = ["JWT"];

    final response = await apiClient.invokeAPI(requestPath, 'GET', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else {
      return apiClient.deserialize(response.body, 'BarcodeResponseList')
          as BarcodeResponseList;
    }
  }

  ///
  /// Recognize barcode from an url or from request body. Request body can contain raw data bytes of the image with content-type \&quot;application/octet-stream\&quot;. An image can also be passed as a form field.
  ///
  Future<BarcodeResponseList> postBarcodeRecognizeFromUrlOrContent(
      {String? type,
      String? checksumValidation,
      bool? detectEncoding,
      String? preset,
      int? rectX,
      int? rectY,
      int? rectWidth,
      int? rectHeight,
      bool? stripFNC,
      int? timeout,
      int? medianSmoothingWindowSize,
      bool? allowMedianSmoothing,
      bool? allowComplexBackground,
      bool? allowDatamatrixIndustrialBarcodes,
      bool? allowDecreasedImage,
      bool? allowDetectScanGap,
      bool? allowIncorrectBarcodes,
      bool? allowInvertImage,
      bool? allowMicroWhiteSpotsRemoving,
      bool? allowOneDFastBarcodesDetector,
      bool? allowOneDWipedBarsRestoration,
      bool? allowQRMicroQrRestoration,
      bool? allowRegularImage,
      bool? allowSaltAndPepperFiltering,
      bool? allowWhiteSpotsRemoving,
      bool? checkMore1DVariants,
      bool? fastScanOnly,
      double? regionLikelihoodThresholdPercent,
      List<int>? scanWindowSizes,
      double? similarity,
      bool? skipDiagonalSearch,
      bool? readTinyBarcodes,
      String? australianPostEncodingTable,
      bool? ignoreEndingFillingPatternsForCTable,
      String? url,
      MultipartFile? image}) async {
    // ignore: prefer_final_locals
    Object? postBody = null;

    // create path and map variables
    final String requestPath =
        "/barcode/recognize".replaceAll("{format}", "json");

    // query params
    final List<QueryParam> queryParams = [];
    final Map<String, String> headerParams = {};
    final Map<String, String> formParams = {};
    if (type != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "Type", type));
    }
    if (checksumValidation != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "ChecksumValidation", checksumValidation));
    }
    if (detectEncoding != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "DetectEncoding", detectEncoding));
    }
    if (preset != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "Preset", preset));
    }
    if (rectX != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "RectX", rectX));
    }
    if (rectY != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "RectY", rectY));
    }
    if (rectWidth != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "RectWidth", rectWidth));
    }
    if (rectHeight != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "RectHeight", rectHeight));
    }
    if (stripFNC != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "StripFNC", stripFNC));
    }
    if (timeout != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "Timeout", timeout));
    }
    if (medianSmoothingWindowSize != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "MedianSmoothingWindowSize", medianSmoothingWindowSize));
    }
    if (allowMedianSmoothing != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "AllowMedianSmoothing", allowMedianSmoothing));
    }
    if (allowComplexBackground != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "AllowComplexBackground", allowComplexBackground));
    }
    if (allowDatamatrixIndustrialBarcodes != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "",
          "AllowDatamatrixIndustrialBarcodes",
          allowDatamatrixIndustrialBarcodes));
    }
    if (allowDecreasedImage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "AllowDecreasedImage", allowDecreasedImage));
    }
    if (allowDetectScanGap != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "AllowDetectScanGap", allowDetectScanGap));
    }
    if (allowIncorrectBarcodes != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "AllowIncorrectBarcodes", allowIncorrectBarcodes));
    }
    if (allowInvertImage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "AllowInvertImage", allowInvertImage));
    }
    if (allowMicroWhiteSpotsRemoving != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "AllowMicroWhiteSpotsRemoving", allowMicroWhiteSpotsRemoving));
    }
    if (allowOneDFastBarcodesDetector != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "AllowOneDFastBarcodesDetector", allowOneDFastBarcodesDetector));
    }
    if (allowOneDWipedBarsRestoration != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "AllowOneDWipedBarsRestoration", allowOneDWipedBarsRestoration));
    }
    if (allowQRMicroQrRestoration != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "AllowQRMicroQrRestoration", allowQRMicroQrRestoration));
    }
    if (allowRegularImage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "AllowRegularImage", allowRegularImage));
    }
    if (allowSaltAndPepperFiltering != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "AllowSaltAndPepperFiltering", allowSaltAndPepperFiltering));
    }
    if (allowWhiteSpotsRemoving != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "AllowWhiteSpotsRemoving", allowWhiteSpotsRemoving));
    }
    if (checkMore1DVariants != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "CheckMore1DVariants", checkMore1DVariants));
    }
    if (fastScanOnly != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "FastScanOnly", fastScanOnly));
    }
    if (regionLikelihoodThresholdPercent != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "",
          "RegionLikelihoodThresholdPercent",
          regionLikelihoodThresholdPercent));
    }
    if (scanWindowSizes != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "multi", "ScanWindowSizes", scanWindowSizes));
    }
    if (similarity != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "Similarity", similarity));
    }
    if (skipDiagonalSearch != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "SkipDiagonalSearch", skipDiagonalSearch));
    }
    if (readTinyBarcodes != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "ReadTinyBarcodes", readTinyBarcodes));
    }
    if (australianPostEncodingTable != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "AustralianPostEncodingTable", australianPostEncodingTable));
    }
    if (ignoreEndingFillingPatternsForCTable != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "",
          "IgnoreEndingFillingPatternsForCTable",
          ignoreEndingFillingPatternsForCTable));
    }
    if (url != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "url", url));
    }

    final List<String> contentTypes = [
      "multipart/form-data",
      "application/x-www-form-urlencoded",
      "application/octet-stream"
    ];

    final String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    final List<String> authNames = ["JWT"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest? mp;

      mp = new MultipartRequest('POST', Uri.parse(requestPath));
      // ignore: unnecessary_null_comparison
      if (image != null) {
        hasFields = true;
        mp.fields['image'] = image.field;
        mp.files.add(image);
      }

      if (hasFields) {
        postBody = mp;
      }
    } else {}

    final response = await apiClient.invokeAPI(requestPath, 'POST', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else {
      return apiClient.deserialize(response.body, 'BarcodeResponseList')
          as BarcodeResponseList;
    }
  }

  ///
  /// Generate multiple barcodes and return in response stream
  ///
  Future<Uint8List> postGenerateMultiple(
      GeneratorParamsList generatorParamsList,
      {String? format}) async {
    // ignore: prefer_final_locals
    Object? postBody = generatorParamsList;

    // create path and map variables
    final String requestPath =
        "/barcode/generateMultiple".replaceAll("{format}", "json");

    // query params
    final List<QueryParam> queryParams = [];
    final Map<String, String> headerParams = {};
    final Map<String, String> formParams = {};
    if (format != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "format", format));
    }

    final List<String> contentTypes = ["application/json", "application/xml"];

    final String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    final List<String> authNames = ["JWT"];

    final response = await apiClient.invokeAPI(requestPath, 'POST', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else {
      return response.bodyBytes;
    }
  }

  ///
  /// Generate barcode and save on server (from query params or from file with json or xml content)
  ///
  Future<ResultImageInfo> putBarcodeGenerateFile(
      String name, String type, String text,
      {String? twoDDisplayText,
      String? textLocation,
      String? textAlignment,
      String? textColor,
      String? fontSizeMode,
      bool? noWrap,
      double? resolution,
      double? resolutionX,
      double? resolutionY,
      double? dimensionX,
      double? textSpace,
      String? units,
      String? sizeMode,
      double? barHeight,
      double? imageHeight,
      double? imageWidth,
      double? rotationAngle,
      String? backColor,
      String? barColor,
      String? borderColor,
      double? borderWidth,
      String? borderDashStyle,
      bool? borderVisible,
      String? enableChecksum,
      bool? enableEscape,
      bool? filledBars,
      bool? alwaysShowChecksum,
      double? wideNarrowRatio,
      bool? validateText,
      String? supplementData,
      double? supplementSpace,
      double? barWidthReduction,
      bool? useAntiAlias,
      String? storage,
      String? folder,
      String? format}) async {
    // ignore: prefer_final_locals
    Object? postBody = null;

    // create path and map variables
    final String requestPath = "/barcode/{name}/generate"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "name" + "}", name);

    // query params
    final List<QueryParam> queryParams = [];
    final Map<String, String> headerParams = {};
    final Map<String, String> formParams = {};
    queryParams.addAll(_convertParametersForCollectionFormat("", "Type", type));
    queryParams.addAll(_convertParametersForCollectionFormat("", "Text", text));
    if (twoDDisplayText != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "TwoDDisplayText", twoDDisplayText));
    }
    if (textLocation != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "TextLocation", textLocation));
    }
    if (textAlignment != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "TextAlignment", textAlignment));
    }
    if (textColor != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "TextColor", textColor));
    }
    if (fontSizeMode != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "FontSizeMode", fontSizeMode));
    }
    if (noWrap != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "NoWrap", noWrap));
    }
    if (resolution != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "Resolution", resolution));
    }
    if (resolutionX != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "ResolutionX", resolutionX));
    }
    if (resolutionY != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "ResolutionY", resolutionY));
    }
    if (dimensionX != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "DimensionX", dimensionX));
    }
    if (textSpace != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "TextSpace", textSpace));
    }
    if (units != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "Units", units));
    }
    if (sizeMode != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "SizeMode", sizeMode));
    }
    if (barHeight != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "BarHeight", barHeight));
    }
    if (imageHeight != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "ImageHeight", imageHeight));
    }
    if (imageWidth != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "ImageWidth", imageWidth));
    }
    if (rotationAngle != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "RotationAngle", rotationAngle));
    }
    if (backColor != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "BackColor", backColor));
    }
    if (barColor != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "BarColor", barColor));
    }
    if (borderColor != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "BorderColor", borderColor));
    }
    if (borderWidth != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "BorderWidth", borderWidth));
    }
    if (borderDashStyle != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "BorderDashStyle", borderDashStyle));
    }
    if (borderVisible != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "BorderVisible", borderVisible));
    }
    if (enableChecksum != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "EnableChecksum", enableChecksum));
    }
    if (enableEscape != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "EnableEscape", enableEscape));
    }
    if (filledBars != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "FilledBars", filledBars));
    }
    if (alwaysShowChecksum != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "AlwaysShowChecksum", alwaysShowChecksum));
    }
    if (wideNarrowRatio != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "WideNarrowRatio", wideNarrowRatio));
    }
    if (validateText != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "ValidateText", validateText));
    }
    if (supplementData != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "SupplementData", supplementData));
    }
    if (supplementSpace != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "SupplementSpace", supplementSpace));
    }
    if (barWidthReduction != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "BarWidthReduction", barWidthReduction));
    }
    if (useAntiAlias != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "UseAntiAlias", useAntiAlias));
    }
    if (storage != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "storage", storage));
    }
    if (folder != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "folder", folder));
    }
    if (format != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "format", format));
    }

    final List<String> contentTypes = [
      "multipart/form-data",
      "application/x-www-form-urlencoded",
      "application/json",
      "application/xml"
    ];

    final String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    final List<String> authNames = ["JWT"];

    final response = await apiClient.invokeAPI(requestPath, 'PUT', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else {
      return apiClient.deserialize(response.body, 'ResultImageInfo')
          as ResultImageInfo;
    }
  }

  ///
  /// Recognition of a barcode from file on server with parameters in body.
  ///
  Future<BarcodeResponseList> putBarcodeRecognizeFromBody(
      String name, ReaderParams readerParams,
      {String? type, String? storage, String? folder}) async {
    // ignore: prefer_final_locals
    Object? postBody = readerParams;

    // create path and map variables
    final String requestPath = "/barcode/{name}/recognize"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "name" + "}", name);

    // query params
    final List<QueryParam> queryParams = [];
    final Map<String, String> headerParams = {};
    final Map<String, String> formParams = {};
    if (type != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "type", type));
    }
    if (storage != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "storage", storage));
    }
    if (folder != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "folder", folder));
    }

    final List<String> contentTypes = ["application/json"];

    final String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    final List<String> authNames = ["JWT"];

    final response = await apiClient.invokeAPI(requestPath, 'PUT', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else {
      return apiClient.deserialize(response.body, 'BarcodeResponseList')
          as BarcodeResponseList;
    }
  }

  ///
  /// Generate image with multiple barcodes and put new file on server
  ///
  Future<ResultImageInfo> putGenerateMultiple(
      String name, GeneratorParamsList generatorParamsList,
      {String? format, String? folder, String? storage}) async {
    // ignore: prefer_final_locals
    Object? postBody = generatorParamsList;

    // create path and map variables
    final String requestPath = "/barcode/{name}/generateMultiple"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "name" + "}", name);

    // query params
    final List<QueryParam> queryParams = [];
    final Map<String, String> headerParams = {};
    final Map<String, String> formParams = {};
    if (format != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "format", format));
    }
    if (folder != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "folder", folder));
    }
    if (storage != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "storage", storage));
    }

    final List<String> contentTypes = ["application/json", "application/xml"];

    final String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    final List<String> authNames = ["JWT"];

    final response = await apiClient.invokeAPI(requestPath, 'PUT', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else {
      return apiClient.deserialize(response.body, 'ResultImageInfo')
          as ResultImageInfo;
    }
  }
}
