import 'dart:typed_data' show Uint8List;

import 'package:http/http.dart' show MultipartFile, MultipartRequest;

import '../api.dart';
import '../src/api_helper.dart';

class FileApi {
  FileApi(this.apiClient) {}

  final ApiClient apiClient;

  ///
  /// Copy file
  ///
  Future copyFile(String srcPath, String destPath,
      {String? srcStorageName,
      String? destStorageName,
      String? versionId}) async {
    // ignore: prefer_final_locals
    Object? postBody = null;

    // create path and map variables
    final String requestPath = "/barcode/storage/file/copy/{srcPath}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "srcPath" + "}", srcPath);

    // query params
    final List<QueryParam> queryParams = [];
    final Map<String, String> headerParams = {};
    final Map<String, String> formParams = {};
    queryParams
        .addAll(convertParametersForCollectionFormat("", "destPath", destPath));
    if (srcStorageName != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "srcStorageName", srcStorageName));
    }
    if (destStorageName != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "destStorageName", destStorageName));
    }
    if (versionId != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "versionId", versionId));
    }

    final List<String> contentTypes = ["application/json"];

    final String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    final List<String> authNames = ["JWT"];

    final response = await apiClient.invokeAPI(requestPath, 'PUT', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else {
      return;
    }
  }

  ///
  /// Delete file
  ///
  Future deleteFile(String path,
      {String? storageName, String? versionId}) async {
    // ignore: prefer_final_locals
    Object? postBody = null;

    // create path and map variables
    final String requestPath = "/barcode/storage/file/{path}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "path" + "}", path);

    // query params
    final List<QueryParam> queryParams = [];
    final Map<String, String> headerParams = {};
    final Map<String, String> formParams = {};
    if (storageName != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "storageName", storageName));
    }
    if (versionId != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "versionId", versionId));
    }

    final List<String> contentTypes = ["application/json"];

    final String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    final List<String> authNames = ["JWT"];

    final response = await apiClient.invokeAPI(
        requestPath,
        'DELETE',
        queryParams,
        postBody,
        headerParams,
        formParams,
        contentType,
        authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else {
      return;
    }
  }

  ///
  /// Download file
  ///
  Future<Uint8List> downloadFile(String path,
      {String? storageName, String? versionId}) async {
    // ignore: prefer_final_locals
    Object? postBody = null;

    // create path and map variables
    final String requestPath = "/barcode/storage/file/{path}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "path" + "}", path);

    // query params
    final List<QueryParam> queryParams = [];
    final Map<String, String> headerParams = {};
    final Map<String, String> formParams = {};
    if (storageName != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "storageName", storageName));
    }
    if (versionId != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "versionId", versionId));
    }

    final List<String> contentTypes = ["application/json"];

    final String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    final List<String> authNames = ["JWT"];

    final response = await apiClient.invokeAPI(requestPath, 'GET', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else {
      return response.bodyBytes;
    }
  }

  ///
  /// Move file
  ///
  Future moveFile(String srcPath, String destPath,
      {String? srcStorageName,
      String? destStorageName,
      String? versionId}) async {
    // ignore: prefer_final_locals
    Object? postBody = null;

    // create path and map variables
    final String requestPath = "/barcode/storage/file/move/{srcPath}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "srcPath" + "}", srcPath);

    // query params
    final List<QueryParam> queryParams = [];
    final Map<String, String> headerParams = {};
    final Map<String, String> formParams = {};
    queryParams
        .addAll(convertParametersForCollectionFormat("", "destPath", destPath));
    if (srcStorageName != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "srcStorageName", srcStorageName));
    }
    if (destStorageName != null) {
      queryParams.addAll(convertParametersForCollectionFormat(
          "", "destStorageName", destStorageName));
    }
    if (versionId != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "versionId", versionId));
    }

    final List<String> contentTypes = ["application/json"];

    final String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    final List<String> authNames = ["JWT"];

    final response = await apiClient.invokeAPI(requestPath, 'PUT', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else {
      return;
    }
  }

  ///
  /// Upload file
  ///
  Future<FilesUploadResult> uploadFile(String path, MultipartFile file,
      {String? storageName}) async {
    // ignore: prefer_final_locals
    Object? postBody = null;

    // create path and map variables
    final String requestPath = "/barcode/storage/file/{path}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "path" + "}", path);

    // query params
    final List<QueryParam> queryParams = [];
    final Map<String, String> headerParams = {};
    final Map<String, String> formParams = {};
    if (storageName != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "storageName", storageName));
    }

    final List<String> contentTypes = ["multipart/form-data"];

    final String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    final List<String> authNames = ["JWT"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest? mp;

      mp = MultipartRequest('PUT', Uri.parse(requestPath));
      // ignore: unnecessary_null_comparison
      if (file != null) {
        hasFields = true;
        mp.fields['File'] = file.field;
        mp.files.add(file);
      }

      if (hasFields) {
        postBody = mp;
      }
    } else {}

    final response = await apiClient.invokeAPI(requestPath, 'PUT', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else {
      return apiClient.deserialize(response.body, 'FilesUploadResult')
          as FilesUploadResult;
    }
  }
}
