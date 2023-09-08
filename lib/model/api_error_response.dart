part of aspose_barcode_cloud.api;

// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
class ApiErrorResponse {
  String? requestId = null;

  ApiError? error = null;

  ApiErrorResponse();

  @override
  String toString() {
    return 'ApiErrorResponse[requestId=$requestId, error=$error, ]';
  }

  ApiErrorResponse.fromJson(Map<String, dynamic> json) {
    requestId = json['requestId'];
    error = ApiError.fromJson(json['error']);
  }

  Map<String, dynamic> toJson() {
    return {'RequestId': requestId, 'Error': error};
  }

  static List<ApiErrorResponse> listFromJson(List<dynamic> json) {
    return json.map((value) => ApiErrorResponse.fromJson(value)).toList();
  }

  static Map<String, ApiErrorResponse> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = Map<String, ApiErrorResponse>();
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = ApiErrorResponse.fromJson(value));
    }
    return map;
  }
}
