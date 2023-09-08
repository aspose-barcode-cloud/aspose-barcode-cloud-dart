import '../../aspose_barcode_cloud.dart';
import '../api_helper.dart';

class FolderApi {
  FolderApi(this.apiClient) {}

  final ApiClient apiClient;

  ///
  /// Copy folder
  ///
  Future copyFolder(String srcPath, String destPath,
      {String? srcStorageName, String? destStorageName}) async {
    // ignore: prefer_final_locals
    Object? postBody = null;

    // create path and map variables
    final String requestPath = "/barcode/storage/folder/copy/{srcPath}"
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
  /// Create the folder
  ///
  Future createFolder(String path, {String? storageName}) async {
    // ignore: prefer_final_locals
    Object? postBody = null;

    // create path and map variables
    final String requestPath = "/barcode/storage/folder/{path}"
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
  /// Delete folder
  ///
  Future deleteFolder(String path,
      {String? storageName, bool? recursive}) async {
    // ignore: prefer_final_locals
    Object? postBody = null;

    // create path and map variables
    final String requestPath = "/barcode/storage/folder/{path}"
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
    if (recursive != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat("", "recursive", recursive));
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
  /// Get all files and folders within a folder
  ///
  Future<FilesList> getFilesList(String path, {String? storageName}) async {
    // ignore: prefer_final_locals
    Object? postBody = null;

    // create path and map variables
    final String requestPath = "/barcode/storage/folder/{path}"
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

    final List<String> contentTypes = ["application/json"];

    final String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    final List<String> authNames = ["JWT"];

    final response = await apiClient.invokeAPI(requestPath, 'GET', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else {
      return apiClient.deserialize(response.body, 'FilesList') as FilesList;
    }
  }

  ///
  /// Move folder
  ///
  Future moveFolder(String srcPath, String destPath,
      {String? srcStorageName, String? destStorageName}) async {
    // ignore: prefer_final_locals
    Object? postBody = null;

    // create path and map variables
    final String requestPath = "/barcode/storage/folder/move/{srcPath}"
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
}
