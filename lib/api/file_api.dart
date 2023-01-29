part of aspose_barcode_cloud.api;

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

    // create path and map variables
    String requestPath = "/barcode/storage/file/copy/{srcPath}"
        .replaceAll("{srcPath}", srcPath.toString());

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

    String contentType = "application/json";
    List<String> authNames = ["JWT"];

    var response = await apiClient.invokeAPI(requestPath, 'PUT', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
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

    // create path and map variables
    String requestPath =
        "/barcode/storage/file/{path}".replaceAll("{path}", path.toString());

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

    var response = await apiClient.invokeAPI(requestPath, 'DELETE', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
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

    // create path and map variables
    String requestPath =
        "/barcode/storage/file/{path}".replaceAll("{path}", path.toString());

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
      return response.bodyBytes;
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

    // create path and map variables
    String requestPath = "/barcode/storage/file/move/{srcPath}"
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

    String contentType = "application/json";
    List<String> authNames = ["JWT"];

    var response = await apiClient.invokeAPI(requestPath, 'PUT', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
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

    // create path and map variables
    String requestPath = "/barcode/storage/file/{path}"
        .replaceAll("{" + "path" + "}", path.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (storageName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "storageName", storageName));
    }

    String contentType = "multipart/form-data";

    List<String> authNames = ["JWT"];

    MultipartRequest? mp;
    mp = new MultipartRequest('PUT', Uri.parse(requestPath));
    mp.fields['File'] = file.field;
    mp.files.add(file);
    postBody = mp;

    var response = await apiClient.invokeAPI(requestPath, 'PUT', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else {
      return apiClient.deserialize(response.body, 'FilesUploadResult')
          as FilesUploadResult;
    }
  }
}
