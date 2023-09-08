import '../api_helper.dart';

abstract class Authentication {
  /// Apply authentication settings to header and query params.
  Future<void> applyToParams(
      List<QueryParam> queryParams, Map<String, String> headerParams);
}
