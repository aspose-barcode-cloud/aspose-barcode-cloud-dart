import '../api_helper.dart';

/// The base class for all authentications.
///
/// To use this class, extend it and implement the `applyToParams` method.
/// This method will be called before every HTTP request to apply the authentication settings.
abstract class Authentication {
  /// Apply authentication settings to header and query params.
  Future<void> applyToParams(
      List<QueryParam> queryParams, Map<String, String> headerParams);
}
