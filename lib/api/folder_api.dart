part of barcode.api;

class FolderApi {
  final ApiClient apiClient;

  FolderApi(this.apiClient) {}

  /// Copy folder
  ///
  ///
  Future copyFolder(String srcPath, String destPath,
      {String? srcStorageName, String? destStorageName}) async {
    Object? postBody = null;

    // verify required params are set
    if (srcPath == null) {
      throw new ApiException(0, "Missing required param: srcPath");
    }
    if (destPath == null) {
      throw new ApiException(0, "Missing required param: destPath");
    }

    // create path and map variables
    String requestPath = "/barcode/storage/folder/copy/{srcPath}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "srcPath" + "}", srcPath.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "destPath", destPath));
    if (srcStorageName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "srcStorageName", srcStorageName));
    }
    if (destStorageName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "destStorageName", destStorageName));
    }

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["JWT"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest? mp;

      if (hasFields && mp != null) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(requestPath, 'PUT', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return;
    } else {
      return;
    }
  }

  /// Create the folder
  ///
  ///
  Future createFolder(String path, {String? storageName}) async {
    Object? postBody = null;

    // verify required params are set
    if (path == null) {
      throw new ApiException(0, "Missing required param: path");
    }

    // create path and map variables
    String requestPath = "/barcode/storage/folder/{path}"
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

      if (hasFields && mp != null) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(requestPath, 'PUT', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return;
    } else {
      return;
    }
  }

  /// Delete folder
  ///
  ///
  Future deleteFolder(String path,
      {String? storageName, bool? recursive}) async {
    Object? postBody = null;

    // verify required params are set
    if (path == null) {
      throw new ApiException(0, "Missing required param: path");
    }

    // create path and map variables
    String requestPath = "/barcode/storage/folder/{path}"
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
    if (recursive != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "recursive", recursive));
    }

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["JWT"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest? mp;

      if (hasFields && mp != null) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(requestPath, 'DELETE', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return;
    } else {
      return;
    }
  }

  /// Get all files and folders within a folder
  ///
  ///
  Future<FilesList?> getFilesList(String path, {String? storageName}) async {
    Object? postBody = null;

    // verify required params are set
    if (path == null) {
      throw new ApiException(0, "Missing required param: path");
    }

    // create path and map variables
    String requestPath = "/barcode/storage/folder/{path}"
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

      if (hasFields && mp != null) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(requestPath, 'GET', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'FilesList') as FilesList;
    } else {
      return null;
    }
  }

  /// Move folder
  ///
  ///
  Future moveFolder(String srcPath, String destPath,
      {String? srcStorageName, String? destStorageName}) async {
    Object? postBody = null;

    // verify required params are set
    if (srcPath == null) {
      throw new ApiException(0, "Missing required param: srcPath");
    }
    if (destPath == null) {
      throw new ApiException(0, "Missing required param: destPath");
    }

    // create path and map variables
    String requestPath = "/barcode/storage/folder/move/{srcPath}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "srcPath" + "}", srcPath.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "destPath", destPath));
    if (srcStorageName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "srcStorageName", srcStorageName));
    }
    if (destStorageName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "destStorageName", destStorageName));
    }

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["JWT"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest? mp;

      if (hasFields && mp != null) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(requestPath, 'PUT', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return;
    } else {
      return;
    }
  }
}
