import 'package:http/http.dart' show MultipartFile;

import '../http/multipart_request_plus.dart';
import '../../aspose_barcode_cloud.dart';
import '../api_helper.dart';

/// RecognizeApi
class RecognizeApi {
  /// Constructor
  RecognizeApi(this._apiClient);

  final ApiClient _apiClient;

  ///
  /// Recognize barcode from file on server using GET requests with parameters in route and query string.
  ///
  Future<BarcodeResponseList> barcodeRecognizeBarcodeTypeGet(
      DecodeBarcodeType barcodeType, String url,
      {RecognitionMode? recognitionMode,
      RecognitionImageKind? imageKind}) async {
    // ignore: prefer_final_locals
    Object? postBody;

    // create path and map variables
    final String requestPath = "/barcode/recognize/{barcodeType}"
        .replaceAll("{format}", "json")
        .replaceAll("{barcodeType}", barcodeType);

    // query params
    final List<QueryParam> queryParams = [];
    final Map<String, String> headerParams = {};
    final Map<String, String> formParams = {};
    queryParams.addAll(convertParametersForCollectionFormat("", "url", url));
    if (recognitionMode != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "recognitionMode", recognitionMode));
    }
    if (imageKind != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "imageKind", imageKind));
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
      return _apiClient.deserialize(response.body, 'BarcodeResponseList')
          as BarcodeResponseList;
    }
  }

  ///
  /// Recognize barcode from file in request body using POST requests with parameters in body in json or xml format.
  ///
  Future<BarcodeResponseList> barcodeRecognizeBodyPost(
      RecognizeBase64Request recognizeBase64Request) async {
    // ignore: prefer_final_locals
    Object? postBody = recognizeBase64Request;

    // create path and map variables
    final String requestPath =
        "/barcode/recognize-body".replaceAll("{format}", "json");

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
      return _apiClient.deserialize(response.body, 'BarcodeResponseList')
          as BarcodeResponseList;
    }
  }

  ///
  /// Recognize barcode from file in request body using POST requests with parameters in multipart form.
  ///
  Future<BarcodeResponseList> barcodeRecognizeFormPost(
      DecodeBarcodeType barcodeType, MultipartFile file,
      {RecognitionMode? recognitionMode,
      RecognitionImageKind? imageKind}) async {
    // ignore: prefer_final_locals
    Object? postBody;

    // create path and map variables
    final String requestPath =
        "/barcode/recognize-form".replaceAll("{format}", "json");

    // query params
    final List<QueryParam> queryParams = [];
    final Map<String, String> headerParams = {};
    final Map<String, String> formParams = {};

    final List<String> contentTypes = ["multipart/form-data"];

    final String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    final List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequestPlus? mp;

      hasFields = true;
      mp.fields['barcodeType'] = [parameterToString(barcodeType)];

      mp = MultipartRequestPlus('POST', Uri.parse(requestPath));
      hasFields = true;
      mp.files.add(file);

      if (recognitionMode != null) {
        hasFields = true;
        mp.fields['recognitionMode'] = [parameterToString(recognitionMode)];
      }

      if (imageKind != null) {
        hasFields = true;
        mp.fields['imageKind'] = [parameterToString(imageKind)];
      }

      if (hasFields) {
        postBody = mp;
      }
    } else {
      formParams['barcodeType'] = parameterToString(barcodeType);

      if (recognitionMode != null) {
        formParams['recognitionMode'] = parameterToString(recognitionMode);
      }
      if (imageKind != null) {
        formParams['imageKind'] = parameterToString(imageKind);
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