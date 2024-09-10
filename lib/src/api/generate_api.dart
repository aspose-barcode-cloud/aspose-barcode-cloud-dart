import 'dart:typed_data' show Uint8List;

import '../http/multipart_request_plus.dart';
import '../../aspose_barcode_cloud.dart';
import '../api_helper.dart';

/// GenerateApi
class GenerateApi {
  /// Constructor
  GenerateApi(this._apiClient);

  final ApiClient _apiClient;

  ///
  /// Generate barcode using GET request with parameters in route and query string.
  ///
  Future<Uint8List> barcodeGenerateBarcodeTypeGet(
      EncodeBarcodeType barcodeType, EncodeDataType dataType, String data,
      {AvailableBarCodeImageFormat? imageFormat,
      String? twoDDisplayText,
      CodeLocation? textLocation,
      TextAlignment? textAlignment,
      String? foregroundColor,
      String? backgroundColor,
      AvailableGraphicsUnit? units,
      double? resolution,
      double? imageHeight,
      double? imageWidth,
      int? rotationAngle}) async {
    // ignore: prefer_final_locals
    Object? postBody;

    // create path and map variables
    final String requestPath = "/barcode/generate/{barcodeType}"
        .replaceAll("{barcodeType}", barcodeType.toString());

    // query params
    final List<QueryParam> queryParams = [];
    final Map<String, String> headerParams = {};
    final Map<String, String> formParams = {};
    queryParams
        .addAll(convertParametersForCollectionFormat("", "DataType", dataType));
    queryParams.addAll(convertParametersForCollectionFormat("", "Data", data));
    if (imageFormat != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "ImageFormat", imageFormat));
    }
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
    if (foregroundColor != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "ForegroundColor", foregroundColor));
    }
    if (backgroundColor != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "BackgroundColor", backgroundColor));
    }
    if (units != null) {
      queryParams
          .addAll(convertParametersForCollectionFormat("", "Units", units));
    }
    if (resolution != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "Resolution", resolution));
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

    final List<String> contentTypes = [];

    final String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    final List<String> authNames = [];

    final response = await _apiClient.invokeAPI(requestPath, 'GET', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else {
      return response.bodyBytes;
    }
  }

  ///
  /// Generate barcode using POST request with parameters in body in json or xml format.
  ///
  Future<Uint8List> barcodeGenerateBodyPost(
      GenerateParams generateParams) async {
    // ignore: prefer_final_locals
    Object? postBody = generateParams;

    // create path and map variables
    final String requestPath = "/barcode/generate-body";

    // query params
    final List<QueryParam> queryParams = [];
    final Map<String, String> headerParams = {};
    final Map<String, String> formParams = {};

    final List<String> contentTypes = ["application/json", "application/xml"];

    final String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    final List<String> authNames = [];

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
  /// Generate barcode using POST request with parameters in url ecncoded form.
  ///
  Future<Uint8List> barcodeGenerateFormPost(
      EncodeBarcodeType barcodeType, EncodeDataType dataType, String data,
      {AvailableBarCodeImageFormat? imageFormat,
      String? twoDDisplayText,
      CodeLocation? textLocation,
      TextAlignment? textAlignment,
      String? foregroundColor,
      String? backgroundColor,
      AvailableGraphicsUnit? units,
      double? resolution,
      double? imageHeight,
      double? imageWidth,
      int? rotationAngle}) async {
    // ignore: prefer_final_locals
    Object? postBody;

    // create path and map variables
    final String requestPath = "/barcode/generate-form";

    // query params
    final List<QueryParam> queryParams = [];
    final Map<String, String> headerParams = {};
    final Map<String, String> formParams = {};

    final List<String> contentTypes = ["application/x-www-form-urlencoded"];

    final String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    final List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequestPlus mp =
          MultipartRequestPlus('POST', Uri.parse(requestPath));

      hasFields = true;
      mp.fields['barcodeType'] = [parameterToString(barcodeType)];

      hasFields = true;
      mp.fields['DataType'] = [parameterToString(dataType)];

      hasFields = true;
      mp.fields['Data'] = [parameterToString(data)];

      if (imageFormat != null) {
        hasFields = true;
        mp.fields['ImageFormat'] = [parameterToString(imageFormat)];
      }

      if (twoDDisplayText != null) {
        hasFields = true;
        mp.fields['TwoDDisplayText'] = [parameterToString(twoDDisplayText)];
      }

      if (textLocation != null) {
        hasFields = true;
        mp.fields['TextLocation'] = [parameterToString(textLocation)];
      }

      if (textAlignment != null) {
        hasFields = true;
        mp.fields['TextAlignment'] = [parameterToString(textAlignment)];
      }

      if (foregroundColor != null) {
        hasFields = true;
        mp.fields['ForegroundColor'] = [parameterToString(foregroundColor)];
      }

      if (backgroundColor != null) {
        hasFields = true;
        mp.fields['BackgroundColor'] = [parameterToString(backgroundColor)];
      }

      if (units != null) {
        hasFields = true;
        mp.fields['Units'] = [parameterToString(units)];
      }

      if (resolution != null) {
        hasFields = true;
        mp.fields['Resolution'] = [parameterToString(resolution)];
      }

      if (imageHeight != null) {
        hasFields = true;
        mp.fields['ImageHeight'] = [parameterToString(imageHeight)];
      }

      if (imageWidth != null) {
        hasFields = true;
        mp.fields['ImageWidth'] = [parameterToString(imageWidth)];
      }

      if (rotationAngle != null) {
        hasFields = true;
        mp.fields['RotationAngle'] = [parameterToString(rotationAngle)];
      }

      if (hasFields) {
        postBody = mp;
      }
    } else {
      formParams['barcodeType'] = parameterToString(barcodeType);
      formParams['DataType'] = parameterToString(dataType);
      formParams['Data'] = parameterToString(data);
      if (imageFormat != null) {
        formParams['ImageFormat'] = parameterToString(imageFormat);
      }
      if (twoDDisplayText != null) {
        formParams['TwoDDisplayText'] = parameterToString(twoDDisplayText);
      }
      if (textLocation != null) {
        formParams['TextLocation'] = parameterToString(textLocation);
      }
      if (textAlignment != null) {
        formParams['TextAlignment'] = parameterToString(textAlignment);
      }
      if (foregroundColor != null) {
        formParams['ForegroundColor'] = parameterToString(foregroundColor);
      }
      if (backgroundColor != null) {
        formParams['BackgroundColor'] = parameterToString(backgroundColor);
      }
      if (units != null) {
        formParams['Units'] = parameterToString(units);
      }
      if (resolution != null) {
        formParams['Resolution'] = parameterToString(resolution);
      }
      if (imageHeight != null) {
        formParams['ImageHeight'] = parameterToString(imageHeight);
      }
      if (imageWidth != null) {
        formParams['ImageWidth'] = parameterToString(imageWidth);
      }
      if (rotationAngle != null) {
        formParams['RotationAngle'] = parameterToString(rotationAngle);
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
      return response.bodyBytes;
    }
  }
}
