import 'dart:typed_data' show Uint8List;

import 'package:http/http.dart' show MultipartFile;

import '../http/multipart_request_plus.dart';
import '../../aspose_barcode_cloud.dart';
import '../api_helper.dart';

/// BarcodeApi
class BarcodeApi {
  /// Constructor
  BarcodeApi(this._apiClient);

  final ApiClient _apiClient;

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
    Object? postBody;

    // create path and map variables
    final String requestPath =
        "/barcode/generate".replaceAll("{format}", "json");

    // query params
    final List<QueryParam> queryParams = [];
    final Map<String, String> headerParams = {};
    final Map<String, String> formParams = {};
    queryParams.addAll(convertParametersForCollectionFormat("", "Type", type));
    queryParams.addAll(convertParametersForCollectionFormat("", "Text", text));
    if (twoDDisplayText != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "TwoDDisplayText", twoDDisplayText));
    }
    if (textLocation != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "TextLocation", textLocation));
    }
    if (textAlignment != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "TextAlignment", textAlignment));
    }
    if (textColor != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "TextColor", textColor));
    }
    if (fontSizeMode != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "FontSizeMode", fontSizeMode));
    }
    if (noWrap != null) {
      queryParams
          .addAll(convertParametersForCollectionFormat("", "NoWrap", noWrap));
    }
    if (resolution != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "Resolution", resolution));
    }
    if (resolutionX != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "ResolutionX", resolutionX));
    }
    if (resolutionY != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "ResolutionY", resolutionY));
    }
    if (dimensionX != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "DimensionX", dimensionX));
    }
    if (textSpace != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "TextSpace", textSpace));
    }
    if (units != null) {
      queryParams
          .addAll(convertParametersForCollectionFormat("", "Units", units));
    }
    if (sizeMode != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "SizeMode", sizeMode));
    }
    if (barHeight != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "BarHeight", barHeight));
    }
    if (imageHeight != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "ImageHeight", imageHeight));
    }
    if (imageWidth != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "ImageWidth", imageWidth));
    }
    if (rotationAngle != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "RotationAngle", rotationAngle));
    }
    if (backColor != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "BackColor", backColor));
    }
    if (barColor != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "BarColor", barColor));
    }
    if (borderColor != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "BorderColor", borderColor));
    }
    if (borderWidth != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "BorderWidth", borderWidth));
    }
    if (borderDashStyle != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "BorderDashStyle", borderDashStyle));
    }
    if (borderVisible != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "BorderVisible", borderVisible));
    }
    if (enableChecksum != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "EnableChecksum", enableChecksum));
    }
    if (enableEscape != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "EnableEscape", enableEscape));
    }
    if (filledBars != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "FilledBars", filledBars));
    }
    if (alwaysShowChecksum != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "AlwaysShowChecksum", alwaysShowChecksum));
    }
    if (wideNarrowRatio != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "WideNarrowRatio", wideNarrowRatio));
    }
    if (validateText != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "ValidateText", validateText));
    }
    if (supplementData != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "SupplementData", supplementData));
    }
    if (supplementSpace != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "SupplementSpace", supplementSpace));
    }
    if (barWidthReduction != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "BarWidthReduction", barWidthReduction));
    }
    if (useAntiAlias != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "UseAntiAlias", useAntiAlias));
    }
    if (format != null) {
      queryParams
          .addAll(convertParametersForCollectionFormat("", "format", format));
    }

    final List<String> contentTypes = ["application/json"];

    final String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    final List<String> authNames = ["JWT"];

    final response = await _apiClient.invokeAPI(requestPath, 'GET', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else {
      return response.bodyBytes;
    }
  }

  ///
  /// Recognize barcode from a file on server.
  ///
  Future<BarcodeResponseList> getBarcodeRecognize(String name,
      {String? type,
      List<DecodeBarcodeType>? types,
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
      bool? allowAdditionalRestorations,
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
    Object? postBody;

    // create path and map variables
    final String requestPath = "/barcode/{name}/recognize"
        .replaceAll("{format}", "json")
        .replaceAll("{name}", name);

    // query params
    final List<QueryParam> queryParams = [];
    final Map<String, String> headerParams = {};
    final Map<String, String> formParams = {};
    if (type != null) {
      queryParams
          .addAll(convertParametersForCollectionFormat("", "Type", type));
    }
    if (types != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("multi", "Types", types));
    }
    if (checksumValidation != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "ChecksumValidation", checksumValidation));
    }
    if (detectEncoding != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "DetectEncoding", detectEncoding));
    }
    if (preset != null) {
      queryParams
          .addAll(convertParametersForCollectionFormat("", "Preset", preset));
    }
    if (rectX != null) {
      queryParams
          .addAll(convertParametersForCollectionFormat("", "RectX", rectX));
    }
    if (rectY != null) {
      queryParams
          .addAll(convertParametersForCollectionFormat("", "RectY", rectY));
    }
    if (rectWidth != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "RectWidth", rectWidth));
    }
    if (rectHeight != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "RectHeight", rectHeight));
    }
    if (stripFNC != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "StripFNC", stripFNC));
    }
    if (timeout != null) {
      queryParams
          .addAll(convertParametersForCollectionFormat("", "Timeout", timeout));
    }
    if (medianSmoothingWindowSize != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "MedianSmoothingWindowSize", medianSmoothingWindowSize));
    }
    if (allowMedianSmoothing != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "AllowMedianSmoothing", allowMedianSmoothing));
    }
    if (allowComplexBackground != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "AllowComplexBackground", allowComplexBackground));
    }
    if (allowDatamatrixIndustrialBarcodes != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "",
          "AllowDatamatrixIndustrialBarcodes",
          allowDatamatrixIndustrialBarcodes));
    }
    if (allowDecreasedImage != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "AllowDecreasedImage", allowDecreasedImage));
    }
    if (allowDetectScanGap != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "AllowDetectScanGap", allowDetectScanGap));
    }
    if (allowIncorrectBarcodes != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "AllowIncorrectBarcodes", allowIncorrectBarcodes));
    }
    if (allowInvertImage != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "AllowInvertImage", allowInvertImage));
    }
    if (allowMicroWhiteSpotsRemoving != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "AllowMicroWhiteSpotsRemoving", allowMicroWhiteSpotsRemoving));
    }
    if (allowOneDFastBarcodesDetector != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "AllowOneDFastBarcodesDetector", allowOneDFastBarcodesDetector));
    }
    if (allowOneDWipedBarsRestoration != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "AllowOneDWipedBarsRestoration", allowOneDWipedBarsRestoration));
    }
    if (allowQRMicroQrRestoration != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "AllowQRMicroQrRestoration", allowQRMicroQrRestoration));
    }
    if (allowRegularImage != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "AllowRegularImage", allowRegularImage));
    }
    if (allowSaltAndPepperFiltering != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "AllowSaltAndPepperFiltering", allowSaltAndPepperFiltering));
    }
    if (allowWhiteSpotsRemoving != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "AllowWhiteSpotsRemoving", allowWhiteSpotsRemoving));
    }
    if (checkMore1DVariants != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "CheckMore1DVariants", checkMore1DVariants));
    }
    if (fastScanOnly != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "FastScanOnly", fastScanOnly));
    }
    if (allowAdditionalRestorations != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "AllowAdditionalRestorations", allowAdditionalRestorations));
    }
    if (regionLikelihoodThresholdPercent != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "",
          "RegionLikelihoodThresholdPercent",
          regionLikelihoodThresholdPercent));
    }
    if (scanWindowSizes != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "multi", "ScanWindowSizes", scanWindowSizes));
    }
    if (similarity != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "Similarity", similarity));
    }
    if (skipDiagonalSearch != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "SkipDiagonalSearch", skipDiagonalSearch));
    }
    if (readTinyBarcodes != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "ReadTinyBarcodes", readTinyBarcodes));
    }
    if (australianPostEncodingTable != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "AustralianPostEncodingTable", australianPostEncodingTable));
    }
    if (ignoreEndingFillingPatternsForCTable != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "",
          "IgnoreEndingFillingPatternsForCTable",
          ignoreEndingFillingPatternsForCTable));
    }
    if (storage != null) {
      queryParams
          .addAll(convertParametersForCollectionFormat("", "storage", storage));
    }
    if (folder != null) {
      queryParams
          .addAll(convertParametersForCollectionFormat("", "folder", folder));
    }

    final List<String> contentTypes = ["application/json"];

    final String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    final List<String> authNames = ["JWT"];

    final response = await _apiClient.invokeAPI(requestPath, 'GET', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else {
      return _apiClient.deserialize(response.body, 'BarcodeResponseList')
          as BarcodeResponseList;
    }
  }

  ///
  /// Recognize barcode from an url or from request body. Request body can contain raw data bytes of the image with content-type \&quot;application/octet-stream\&quot;. An image can also be passed as a form field.
  ///
  Future<BarcodeResponseList> postBarcodeRecognizeFromUrlOrContent(
      {String? type,
      List<DecodeBarcodeType>? types,
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
      bool? allowAdditionalRestorations,
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
    Object? postBody;

    // create path and map variables
    final String requestPath =
        "/barcode/recognize".replaceAll("{format}", "json");

    // query params
    final List<QueryParam> queryParams = [];
    final Map<String, String> headerParams = {};
    final Map<String, String> formParams = {};
    if (type != null) {
      queryParams
          .addAll(convertParametersForCollectionFormat("", "Type", type));
    }
    if (types != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("multi", "Types", types));
    }
    if (checksumValidation != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "ChecksumValidation", checksumValidation));
    }
    if (detectEncoding != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "DetectEncoding", detectEncoding));
    }
    if (preset != null) {
      queryParams
          .addAll(convertParametersForCollectionFormat("", "Preset", preset));
    }
    if (rectX != null) {
      queryParams
          .addAll(convertParametersForCollectionFormat("", "RectX", rectX));
    }
    if (rectY != null) {
      queryParams
          .addAll(convertParametersForCollectionFormat("", "RectY", rectY));
    }
    if (rectWidth != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "RectWidth", rectWidth));
    }
    if (rectHeight != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "RectHeight", rectHeight));
    }
    if (stripFNC != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "StripFNC", stripFNC));
    }
    if (timeout != null) {
      queryParams
          .addAll(convertParametersForCollectionFormat("", "Timeout", timeout));
    }
    if (medianSmoothingWindowSize != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "MedianSmoothingWindowSize", medianSmoothingWindowSize));
    }
    if (allowMedianSmoothing != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "AllowMedianSmoothing", allowMedianSmoothing));
    }
    if (allowComplexBackground != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "AllowComplexBackground", allowComplexBackground));
    }
    if (allowDatamatrixIndustrialBarcodes != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "",
          "AllowDatamatrixIndustrialBarcodes",
          allowDatamatrixIndustrialBarcodes));
    }
    if (allowDecreasedImage != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "AllowDecreasedImage", allowDecreasedImage));
    }
    if (allowDetectScanGap != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "AllowDetectScanGap", allowDetectScanGap));
    }
    if (allowIncorrectBarcodes != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "AllowIncorrectBarcodes", allowIncorrectBarcodes));
    }
    if (allowInvertImage != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "AllowInvertImage", allowInvertImage));
    }
    if (allowMicroWhiteSpotsRemoving != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "AllowMicroWhiteSpotsRemoving", allowMicroWhiteSpotsRemoving));
    }
    if (allowOneDFastBarcodesDetector != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "AllowOneDFastBarcodesDetector", allowOneDFastBarcodesDetector));
    }
    if (allowOneDWipedBarsRestoration != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "AllowOneDWipedBarsRestoration", allowOneDWipedBarsRestoration));
    }
    if (allowQRMicroQrRestoration != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "AllowQRMicroQrRestoration", allowQRMicroQrRestoration));
    }
    if (allowRegularImage != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "AllowRegularImage", allowRegularImage));
    }
    if (allowSaltAndPepperFiltering != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "AllowSaltAndPepperFiltering", allowSaltAndPepperFiltering));
    }
    if (allowWhiteSpotsRemoving != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "AllowWhiteSpotsRemoving", allowWhiteSpotsRemoving));
    }
    if (checkMore1DVariants != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "CheckMore1DVariants", checkMore1DVariants));
    }
    if (fastScanOnly != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "FastScanOnly", fastScanOnly));
    }
    if (allowAdditionalRestorations != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "AllowAdditionalRestorations", allowAdditionalRestorations));
    }
    if (regionLikelihoodThresholdPercent != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "",
          "RegionLikelihoodThresholdPercent",
          regionLikelihoodThresholdPercent));
    }
    if (scanWindowSizes != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "multi", "ScanWindowSizes", scanWindowSizes));
    }
    if (similarity != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "Similarity", similarity));
    }
    if (skipDiagonalSearch != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "SkipDiagonalSearch", skipDiagonalSearch));
    }
    if (readTinyBarcodes != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "ReadTinyBarcodes", readTinyBarcodes));
    }
    if (australianPostEncodingTable != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "AustralianPostEncodingTable", australianPostEncodingTable));
    }
    if (ignoreEndingFillingPatternsForCTable != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "",
          "IgnoreEndingFillingPatternsForCTable",
          ignoreEndingFillingPatternsForCTable));
    }
    if (url != null) {
      queryParams.addAll(convertParametersForCollectionFormat("", "url", url));
    }

    final List<String> contentTypes = [
      "multipart/form-data",
      "application/x-www-form-urlencoded",
      "application/octet-stream"
    ];

    final String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    final List<String> authNames = ["JWT"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequestPlus? mp;

      mp = MultipartRequestPlus('POST', Uri.parse(requestPath));
      if (image != null) {
        hasFields = true;
        mp.files.add(image);
      }

      if (hasFields) {
        postBody = mp;
      }
    } else {}

    final response = await _apiClient.invokeAPI(
        requestPath,
        'POST',
        queryParams,
        postBody,
        headerParams,
        formParams,
        contentType,
        authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else {
      return _apiClient.deserialize(response.body, 'BarcodeResponseList')
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
          .addAll(convertParametersForCollectionFormat("", "format", format));
    }

    final List<String> contentTypes = ["application/json", "application/xml"];

    final String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    final List<String> authNames = ["JWT"];

    final response = await _apiClient.invokeAPI(
        requestPath,
        'POST',
        queryParams,
        postBody,
        headerParams,
        formParams,
        contentType,
        authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
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
    Object? postBody;

    // create path and map variables
    final String requestPath = "/barcode/{name}/generate"
        .replaceAll("{format}", "json")
        .replaceAll("{name}", name);

    // query params
    final List<QueryParam> queryParams = [];
    final Map<String, String> headerParams = {};
    final Map<String, String> formParams = {};
    queryParams.addAll(convertParametersForCollectionFormat("", "Type", type));
    queryParams.addAll(convertParametersForCollectionFormat("", "Text", text));
    if (twoDDisplayText != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "TwoDDisplayText", twoDDisplayText));
    }
    if (textLocation != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "TextLocation", textLocation));
    }
    if (textAlignment != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "TextAlignment", textAlignment));
    }
    if (textColor != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "TextColor", textColor));
    }
    if (fontSizeMode != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "FontSizeMode", fontSizeMode));
    }
    if (noWrap != null) {
      queryParams
          .addAll(convertParametersForCollectionFormat("", "NoWrap", noWrap));
    }
    if (resolution != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "Resolution", resolution));
    }
    if (resolutionX != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "ResolutionX", resolutionX));
    }
    if (resolutionY != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "ResolutionY", resolutionY));
    }
    if (dimensionX != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "DimensionX", dimensionX));
    }
    if (textSpace != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "TextSpace", textSpace));
    }
    if (units != null) {
      queryParams
          .addAll(convertParametersForCollectionFormat("", "Units", units));
    }
    if (sizeMode != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "SizeMode", sizeMode));
    }
    if (barHeight != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "BarHeight", barHeight));
    }
    if (imageHeight != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "ImageHeight", imageHeight));
    }
    if (imageWidth != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "ImageWidth", imageWidth));
    }
    if (rotationAngle != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "RotationAngle", rotationAngle));
    }
    if (backColor != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "BackColor", backColor));
    }
    if (barColor != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "BarColor", barColor));
    }
    if (borderColor != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "BorderColor", borderColor));
    }
    if (borderWidth != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "BorderWidth", borderWidth));
    }
    if (borderDashStyle != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "BorderDashStyle", borderDashStyle));
    }
    if (borderVisible != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "BorderVisible", borderVisible));
    }
    if (enableChecksum != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "EnableChecksum", enableChecksum));
    }
    if (enableEscape != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "EnableEscape", enableEscape));
    }
    if (filledBars != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "FilledBars", filledBars));
    }
    if (alwaysShowChecksum != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "AlwaysShowChecksum", alwaysShowChecksum));
    }
    if (wideNarrowRatio != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "WideNarrowRatio", wideNarrowRatio));
    }
    if (validateText != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "ValidateText", validateText));
    }
    if (supplementData != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "SupplementData", supplementData));
    }
    if (supplementSpace != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "SupplementSpace", supplementSpace));
    }
    if (barWidthReduction != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "BarWidthReduction", barWidthReduction));
    }
    if (useAntiAlias != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "UseAntiAlias", useAntiAlias));
    }
    if (storage != null) {
      queryParams
          .addAll(convertParametersForCollectionFormat("", "storage", storage));
    }
    if (folder != null) {
      queryParams
          .addAll(convertParametersForCollectionFormat("", "folder", folder));
    }
    if (format != null) {
      queryParams
          .addAll(convertParametersForCollectionFormat("", "format", format));
    }

    final List<String> contentTypes = [
      "multipart/form-data",
      "application/x-www-form-urlencoded",
      "application/json",
      "application/xml"
    ];

    final String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    final List<String> authNames = ["JWT"];

    final response = await _apiClient.invokeAPI(requestPath, 'PUT', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else {
      return _apiClient.deserialize(response.body, 'ResultImageInfo')
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
        .replaceAll("{name}", name);

    // query params
    final List<QueryParam> queryParams = [];
    final Map<String, String> headerParams = {};
    final Map<String, String> formParams = {};
    if (type != null) {
      queryParams
          .addAll(convertParametersForCollectionFormat("", "type", type));
    }
    if (storage != null) {
      queryParams
          .addAll(convertParametersForCollectionFormat("", "storage", storage));
    }
    if (folder != null) {
      queryParams
          .addAll(convertParametersForCollectionFormat("", "folder", folder));
    }

    final List<String> contentTypes = ["application/json"];

    final String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    final List<String> authNames = ["JWT"];

    final response = await _apiClient.invokeAPI(requestPath, 'PUT', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else {
      return _apiClient.deserialize(response.body, 'BarcodeResponseList')
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
        .replaceAll("{name}", name);

    // query params
    final List<QueryParam> queryParams = [];
    final Map<String, String> headerParams = {};
    final Map<String, String> formParams = {};
    if (format != null) {
      queryParams
          .addAll(convertParametersForCollectionFormat("", "format", format));
    }
    if (folder != null) {
      queryParams
          .addAll(convertParametersForCollectionFormat("", "folder", folder));
    }
    if (storage != null) {
      queryParams
          .addAll(convertParametersForCollectionFormat("", "storage", storage));
    }

    final List<String> contentTypes = ["application/json", "application/xml"];

    final String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    final List<String> authNames = ["JWT"];

    final response = await _apiClient.invokeAPI(requestPath, 'PUT', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else {
      return _apiClient.deserialize(response.body, 'ResultImageInfo')
          as ResultImageInfo;
    }
  }

  ///
  /// Quickly scan a barcode from an image.
  ///
  Future<BarcodeResponseList> scanBarcode(MultipartFile imageFile,
      {List<DecodeBarcodeType>? decodeTypes, int? timeout}) async {
    // ignore: prefer_final_locals
    Object? postBody;

    // create path and map variables
    final String requestPath = "/barcode/scan".replaceAll("{format}", "json");

    // query params
    final List<QueryParam> queryParams = [];
    final Map<String, String> headerParams = {};
    final Map<String, String> formParams = {};

    final List<String> contentTypes = ["multipart/form-data"];

    final String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    final List<String> authNames = ["JWT"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequestPlus? mp;

      mp = MultipartRequestPlus('POST', Uri.parse(requestPath));
      hasFields = true;
      mp.files.add(imageFile);

      if (decodeTypes != null) {
        hasFields = true;
        final List<String> stringValues =
            decodeTypes.map((i) => parameterToString(i)).toList();
        mp.fields['decodeTypes'] = stringValues;
      }

      if (timeout != null) {
        hasFields = true;
        mp.fields['timeout'] = [parameterToString(timeout)];
      }

      if (hasFields) {
        postBody = mp;
      }
    } else {
      if (decodeTypes != null) {
        formParams['decodeTypes'] = parameterToString(decodeTypes);
      }
      if (timeout != null) {
        formParams['timeout'] = parameterToString(timeout);
      }
    }

    final response = await _apiClient.invokeAPI(
        requestPath,
        'POST',
        queryParams,
        postBody,
        headerParams,
        formParams,
        contentType,
        authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else {
      return _apiClient.deserialize(response.body, 'BarcodeResponseList')
          as BarcodeResponseList;
    }
  }
}
