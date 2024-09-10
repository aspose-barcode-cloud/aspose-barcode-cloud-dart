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
  Future<Uint8List> generate(EncodeBarcodeType barcodeType, String data,
      {EncodeDataType? dataType,
      BarcodeImageFormat? imageFormat,
      CodeLocation? textLocation,
      String? foregroundColor,
      String? backgroundColor,
      GraphicsUnit? units,
      double? resolution,
      double? imageHeight,
      double? imageWidth,
      int? rotationAngle}) async {
    // ignore: prefer_final_locals
    Object? postBody;

    // create path and map variables
    final String requestPath = "/barcode/generate/{barcodeType}"
        .replaceAll('{' 'barcodeType' '}', barcodeType.toString());

    // query params
    final List<QueryParam> queryParams = [];
    final Map<String, String> headerParams = {};
    final Map<String, String> formParams = {};
    if (dataType != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "dataType", dataType));
    }
    queryParams.addAll(convertParametersForCollectionFormat("", "data", data));
    if (imageFormat != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "imageFormat", imageFormat));
    }
    if (textLocation != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "textLocation", textLocation));
    }
    if (foregroundColor != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "foregroundColor", foregroundColor));
    }
    if (backgroundColor != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "backgroundColor", backgroundColor));
    }
    if (units != null) {
      queryParams
          .addAll(convertParametersForCollectionFormat("", "units", units));
    }
    if (resolution != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "resolution", resolution));
    }
    if (imageHeight != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "imageHeight", imageHeight));
    }
    if (imageWidth != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "imageWidth", imageWidth));
    }
    if (rotationAngle != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "rotationAngle", rotationAngle));
    }

    final List<String> contentTypes = [];

    final String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    final List<String> authNames = ["JWT"];

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
  Future<Uint8List> generateBody(GenerateParams generateParams) async {
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
  /// Generate barcode using POST request with parameters in multipart form.
  ///
  Future<Uint8List> generateMultipart(
      EncodeBarcodeType barcodeType, String data,
      {EncodeDataType? dataType,
      BarcodeImageFormat? imageFormat,
      CodeLocation? textLocation,
      String? foregroundColor,
      String? backgroundColor,
      GraphicsUnit? units,
      double? resolution,
      double? imageHeight,
      double? imageWidth,
      int? rotationAngle}) async {
    // ignore: prefer_final_locals
    Object? postBody;

    // create path and map variables
    final String requestPath = "/barcode/generate-multipart";

    // query params
    final List<QueryParam> queryParams = [];
    final Map<String, String> headerParams = {};
    final Map<String, String> formParams = {};

    final List<String> contentTypes = ["multipart/form-data"];

    final String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    final List<String> authNames = ["JWT"];

    MultipartRequestPlus mp =
        MultipartRequestPlus('POST', Uri.parse(requestPath));

    mp.fields['barcodeType'] = [parameterToString(barcodeType)];

    if (dataType != null) {
      mp.fields['dataType'] = [parameterToString(dataType)];
    }

    mp.fields['data'] = [parameterToString(data)];

    if (imageFormat != null) {
      mp.fields['imageFormat'] = [parameterToString(imageFormat)];
    }

    if (textLocation != null) {
      mp.fields['textLocation'] = [parameterToString(textLocation)];
    }

    if (foregroundColor != null) {
      mp.fields['foregroundColor'] = [parameterToString(foregroundColor)];
    }

    if (backgroundColor != null) {
      mp.fields['backgroundColor'] = [parameterToString(backgroundColor)];
    }

    if (units != null) {
      mp.fields['units'] = [parameterToString(units)];
    }

    if (resolution != null) {
      mp.fields['resolution'] = [parameterToString(resolution)];
    }

    if (imageHeight != null) {
      mp.fields['imageHeight'] = [parameterToString(imageHeight)];
    }

    if (imageWidth != null) {
      mp.fields['imageWidth'] = [parameterToString(imageWidth)];
    }

    if (rotationAngle != null) {
      mp.fields['rotationAngle'] = [parameterToString(rotationAngle)];
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
