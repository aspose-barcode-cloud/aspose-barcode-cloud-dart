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
    String requestPath = "/barcode/storage/disc".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (storageName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "storageName", storageName));
    }

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["JWT"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest? mp;

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(requestPath, 'GET', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'DiscUsage') as DiscUsage;
    } else {
      return null;
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
        .replaceAll("{format}", "json")
        .replaceAll("{" + "path" + "}", path.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (storageName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "storageName", storageName));
    }

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["JWT"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest? mp;

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(requestPath, 'GET', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'FileVersions')
          as FileVersions;
    } else {
      return null;
    }
  }

  /// Check if file or folder exists
  ///
  ///
  Future<ObjectExist?> objectExists(String path,
      {String? storageName, String? versionId}) async {
    Object? postBody = null;

    // create path and map variables
    String requestPath = "/barcode/storage/exist/{path}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "path" + "}", path.toString());

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

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["JWT"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest? mp;

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(requestPath, 'GET', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'ObjectExist') as ObjectExist;
    } else {
      return null;
    }
  }

  /// Check if storage exists
  ///
  ///
  Future<StorageExist?> storageExists(String storageName) async {
    Object? postBody = null;

    // create path and map variables
    String requestPath = "/barcode/storage/{storageName}/exist"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "storageName" + "}", storageName.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["JWT"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest? mp;

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(requestPath, 'GET', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'StorageExist')
          as StorageExist;
    } else {
      return null;
    }
  }
}
