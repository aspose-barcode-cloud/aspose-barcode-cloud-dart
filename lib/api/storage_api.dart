part of aspose_barcode_cloud.api;

class StorageApi {
  final ApiClient apiClient;

  StorageApi(this.apiClient) {}

  /// Get disc usage
  ///
  ///
  Future<DiscUsage?> getDiscUsage({String? storageName}) async {
    Object? postBody = null;

    // create path and map variables
    String requestPath = "/barcode/storage/disc";

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (storageName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "storageName", storageName));
    }

    String contentType = "application/json";
    List<String> authNames = ["JWT"];

    var response = await apiClient.invokeAPI(requestPath, 'GET', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else {
      return apiClient.deserialize(response.body, 'DiscUsage') as DiscUsage;
    }
  }

  /// Get file versions
  ///
  ///
  Future<FileVersions?> getFileVersions(String path,
      {String? storageName}) async {
    Object? postBody = null;

    // create path and map variables
    String requestPath = "/barcode/storage/version/{path}"
        .replaceAll("{" + "path" + "}", path.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (storageName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "storageName", storageName));
    }

    String contentType = "application/json";
    List<String> authNames = ["JWT"];

    var response = await apiClient.invokeAPI(requestPath, 'GET', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else {
      return apiClient.deserialize(response.body, 'FileVersions')
          as FileVersions;
    }
  }

  /// Check if file or folder exists
  ///
  ///
  Future<ObjectExist?> objectExists(String path,
      {String? storageName, String? versionId}) async {
    Object? postBody = null;

    // create path and map variables
    String requestPath =
        "/barcode/storage/exist/{path}".replaceAll("{path}", path.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (storageName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "storageName", storageName));
    }
    if (versionId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "versionId", versionId));
    }

    String contentType = "application/json";
    List<String> authNames = ["JWT"];

    var response = await apiClient.invokeAPI(requestPath, 'GET', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else {
      return apiClient.deserialize(response.body, 'ObjectExist') as ObjectExist;
    }
  }

  /// Check if storage exists
  ///
  ///
  Future<StorageExist?> storageExists(String storageName) async {
    Object? postBody = null;

    // create path and map variables
    String requestPath = "/barcode/storage/{storageName}/exist"
        .replaceAll("{storageName}", storageName.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    String contentType = "application/json";
    List<String> authNames = ["JWT"];

    var response = await apiClient.invokeAPI(requestPath, 'GET', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else {
      return apiClient.deserialize(response.body, 'StorageExist')
          as StorageExist;
    }
  }
}
