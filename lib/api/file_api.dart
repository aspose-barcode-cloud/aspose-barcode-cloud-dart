part of barcode.api;

class FileApi {
  final ApiClient apiClient;

  FileApi(this.apiClient) {}

  /// Copy file
  ///
  ///
  Future copyFile(String srcPath, String destPath,
      {String? srcStorageName,
      String? destStorageName,
      String? versionId}) async {
    Object? postBody = null;

    // verify required params are set
    if (srcPath == null) {
      throw new ApiException(0, "Missing required param: srcPath");
    }
    if (destPath == null) {
      throw new ApiException(0, "Missing required param: destPath");
    }

    // create path and map variables
    String requestPath = "/barcode/storage/file/copy/{srcPath}"
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

  /// Delete file
  ///
  ///
  Future deleteFile(String path,
      {String? storageName, String? versionId}) async {
    Object? postBody = null;

    // verify required params are set
    if (path == null) {
      throw new ApiException(0, "Missing required param: path");
    }

    // create path and map variables
    String requestPath = "/barcode/storage/file/{path}"
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

  /// Download file
  ///
  ///
  Future<Uint8List?> downloadFile(String path,
      {String? storageName, String? versionId}) async {
    Object? postBody = null;

    // verify required params are set
    if (path == null) {
      throw new ApiException(0, "Missing required param: path");
    }

    // create path and map variables
    String requestPath = "/barcode/storage/file/{path}"
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

      if (hasFields && mp != null) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(requestPath, 'GET', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return response.bodyBytes;
    } else {
      return null;
    }
  }

  /// Move file
  ///
  ///
  Future moveFile(String srcPath, String destPath,
      {String? srcStorageName,
      String? destStorageName,
      String? versionId}) async {
    Object? postBody = null;

    // verify required params are set
    if (srcPath == null) {
      throw new ApiException(0, "Missing required param: srcPath");
    }
    if (destPath == null) {
      throw new ApiException(0, "Missing required param: destPath");
    }

    // create path and map variables
    String requestPath = "/barcode/storage/file/move/{srcPath}"
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

  /// Upload file
  ///
  ///
  Future<FilesUploadResult?> uploadFile(String path, MultipartFile file,
      {String? storageName}) async {
    Object? postBody = null;

    // verify required params are set
    if (path == null) {
      throw new ApiException(0, "Missing required param: path");
    }
    if (file == null) {
      throw new ApiException(0, "Missing required param: file");
    }

    // create path and map variables
    String requestPath = "/barcode/storage/file/{path}"
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

    List<String> contentTypes = ["multipart/form-data"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["JWT"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest? mp;

      mp = new MultipartRequest('PUT', Uri.parse(requestPath));
      hasFields = true;
      mp.fields['File'] = file.field;
      mp.files.add(file);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(requestPath, 'PUT', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'FilesUploadResult')
          as FilesUploadResult;
    } else {
      return null;
    }
  }
}
