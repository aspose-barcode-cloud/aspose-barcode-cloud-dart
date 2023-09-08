import '../../aspose_barcode_cloud.dart';
import '../api_helper.dart';

class StorageApi {
  StorageApi(this.apiClient) {}

  final ApiClient apiClient;

  ///
  /// Get disc usage
  ///
  Future<DiscUsage> getDiscUsage({String? storageName}) async {
    // ignore: prefer_final_locals
    Object? postBody = null;

    // create path and map variables
    final String requestPath =
        "/barcode/storage/disc".replaceAll("{format}", "json");

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
      return apiClient.deserialize(response.body, 'DiscUsage') as DiscUsage;
    }
  }

  ///
  /// Get file versions
  ///
  Future<FileVersions> getFileVersions(String path,
      {String? storageName}) async {
    // ignore: prefer_final_locals
    Object? postBody = null;

    // create path and map variables
    final String requestPath = "/barcode/storage/version/{path}"
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
      return apiClient.deserialize(response.body, 'FileVersions')
          as FileVersions;
    }
  }

  ///
  /// Check if file or folder exists
  ///
  Future<ObjectExist> objectExists(String path,
      {String? storageName, String? versionId}) async {
    // ignore: prefer_final_locals
    Object? postBody = null;

    // create path and map variables
    final String requestPath = "/barcode/storage/exist/{path}"
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
      return apiClient.deserialize(response.body, 'ObjectExist') as ObjectExist;
    }
  }

  ///
  /// Check if storage exists
  ///
  Future<StorageExist> storageExists(String storageName) async {
    // ignore: prefer_final_locals
    Object? postBody = null;

    // create path and map variables
    final String requestPath = "/barcode/storage/{storageName}/exist"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "storageName" + "}", storageName);

    // query params
    final List<QueryParam> queryParams = [];
    final Map<String, String> headerParams = {};
    final Map<String, String> formParams = {};

    final List<String> contentTypes = ["application/json"];

    final String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    final List<String> authNames = ["JWT"];

    final response = await apiClient.invokeAPI(requestPath, 'GET', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else {
      return apiClient.deserialize(response.body, 'StorageExist')
          as StorageExist;
    }
  }
}
