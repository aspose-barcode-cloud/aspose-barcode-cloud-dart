import 'package:http/http.dart' show MultipartFile;

import '../http/multipart_request_plus.dart';
import '../../aspose_barcode_cloud.dart';
import '../api_helper.dart';

/// ScanApi
class ScanApi {
  /// Constructor
  ScanApi(this._apiClient);

  final ApiClient _apiClient;

  ///
  /// Scan barcode from file in request body using POST requests with parameter in body in json or xml format.
  ///
  Future<BarcodeResponseList> barcodeScanBodyPost(
      ScanBase64Request scanBase64Request) async {
    // ignore: prefer_final_locals
    Object? postBody = scanBase64Request;

    // create path and map variables
    final String requestPath =
        "/barcode/scan-body".replaceAll("{format}", "json");

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
  /// Scan barcode from file in request body using POST requests with parameter in multipart form.
  ///
  Future<BarcodeResponseList> barcodeScanFormPost(MultipartFile file) async {
    // ignore: prefer_final_locals
    Object? postBody;

    // create path and map variables
    final String requestPath =
        "/barcode/scan-form".replaceAll("{format}", "json");

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

      mp = MultipartRequestPlus('POST', Uri.parse(requestPath));
      hasFields = true;
      mp.files.add(file);

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
  /// Scan barcode from file on server using GET requests with parameter in query string.
  ///
  Future<BarcodeResponseList> barcodeScanGet(String url) async {
    // ignore: prefer_final_locals
    Object? postBody;

    // create path and map variables
    final String requestPath = "/barcode/scan".replaceAll("{format}", "json");

    // query params
    final List<QueryParam> queryParams = [];
    final Map<String, String> headerParams = {};
    final Map<String, String> formParams = {};
    queryParams.addAll(convertParametersForCollectionFormat("", "url", url));

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
}