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
      EncodeBarcodeType barcodeType, String data,
      {EncodeDataType? dataType,
      AvailableBarCodeImageFormat? imageFormat,
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
    if (dataType != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "DataType", dataType));
    }
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
      ApiErrorResponse error;
      try {
        error = _apiClient.deserialize(response.body, 'ApiErrorResponse');
      } catch (e) {
        throw ApiException(response.statusCode, response.body);
      }
      throw ApiException.withResponse(
          response.statusCode,
          response.reasonPhrase == null
              ? "Api response error"
              : response.reasonPhrase!,
          error);
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
      ApiErrorResponse error;
      try {
        error = _apiClient.deserialize(response.body, 'ApiErrorResponse');
      } catch (e) {
        throw ApiException(response.statusCode, response.body);
      }
      throw ApiException.withResponse(
          response.statusCode,
          response.reasonPhrase == null
              ? "Api response error"
              : response.reasonPhrase!,
          error);
    } else {
      return response.bodyBytes;
    }
  }

  ///
  /// Generate barcode using POST request with parameters in url ecncoded form.
  ///
  Future<Uint8List> barcodeGenerateFormPost(
      EncodeBarcodeType barcodeType, String data,
      {EncodeDataType? dataType,
      AvailableBarCodeImageFormat? imageFormat,
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

    final List<String> contentTypes = ["multipart/form-data"];

    final String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    final List<String> authNames = [];

    MultipartRequestPlus mp =
        MultipartRequestPlus('POST', Uri.parse(requestPath));

    mp.fields['barcodeType'] = [parameterToString(barcodeType)];

    if (dataType != null) {
      mp.fields['DataType'] = [parameterToString(dataType)];
    }

    mp.fields['Data'] = [parameterToString(data)];

    if (imageFormat != null) {
      mp.fields['ImageFormat'] = [parameterToString(imageFormat)];
    }

    if (twoDDisplayText != null) {
      mp.fields['TwoDDisplayText'] = [parameterToString(twoDDisplayText)];
    }

    if (textLocation != null) {
      mp.fields['TextLocation'] = [parameterToString(textLocation)];
    }

    if (textAlignment != null) {
      mp.fields['TextAlignment'] = [parameterToString(textAlignment)];
    }

    if (foregroundColor != null) {
      mp.fields['ForegroundColor'] = [parameterToString(foregroundColor)];
    }

    if (backgroundColor != null) {
      mp.fields['BackgroundColor'] = [parameterToString(backgroundColor)];
    }

    if (units != null) {
      mp.fields['Units'] = [parameterToString(units)];
    }

    if (resolution != null) {
      mp.fields['Resolution'] = [parameterToString(resolution)];
    }

    if (imageHeight != null) {
      mp.fields['ImageHeight'] = [parameterToString(imageHeight)];
    }

    if (imageWidth != null) {
      mp.fields['ImageWidth'] = [parameterToString(imageWidth)];
    }

    if (rotationAngle != null) {
      mp.fields['RotationAngle'] = [parameterToString(rotationAngle)];
    }

    postBody = mp;

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
      ApiErrorResponse error;
      try {
        error = _apiClient.deserialize(response.body, 'ApiErrorResponse');
      } catch (e) {
        throw ApiException(response.statusCode, response.body);
      }
      throw ApiException.withResponse(
          response.statusCode,
          response.reasonPhrase == null
              ? "Api response error"
              : response.reasonPhrase!,
          error);
    } else {
      return response.bodyBytes;
    }
  }
}
