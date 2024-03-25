// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../../aspose_barcode_cloud.dart';

/// ApiErrorResponse
class ApiErrorResponse {
  /// requestId
  String? requestId;

  /// error
  ApiError? error;

  /// Constructor
  ApiErrorResponse();

  @override
  String toString() {
    return 'ApiErrorResponse[requestId=$requestId, error=$error, ]';
  }

  /// Creates a ApiErrorResponse instance from a JSON representation.
  ApiErrorResponse.fromJson(Map<String, dynamic> json) {
    requestId = json['requestId'];
    error = ApiError.fromJson(json['error']);
  }

  /// Returns a JSON representation of ApiErrorResponse.
  Map<String, dynamic> toJson() {
    return {'RequestId': requestId, 'Error': error};
  }

  /// Converts a list of JSON objects to a list of ApiErrorResponse instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of ApiErrorResponse instances.
  static List<ApiErrorResponse> listFromJson(List<dynamic> json) {
    return json.map((value) => ApiErrorResponse.fromJson(value)).toList();
  }
}
