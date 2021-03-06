part of aspose_barcode_cloud.api;

abstract class Authentication {
  /// Apply authentication settings to header and query params.
  Future<void> applyToParams(
      List<QueryParam> queryParams, Map<String, String> headerParams);
}
