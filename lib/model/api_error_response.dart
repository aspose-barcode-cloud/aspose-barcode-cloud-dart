part of aspose_barcode_cloud.api;

class ApiErrorResponse {
  ApiErrorResponse();

  ApiErrorResponse.fromJson(Map<String, dynamic> json) {
    requestId = json['requestId'];
    error = new ApiError.fromJson(json['error']);
  }

  String? requestId = null;

  ApiError? error = null;

  @override
  String toString() => 'ApiErrorResponse[requestId=$requestId, error=$error, ]';

  Map<String, dynamic> toJson() => {'RequestId': requestId, 'Error': error};

  static List<ApiErrorResponse> listFromJson(List<dynamic> json) =>
      json.map((value) => new ApiErrorResponse.fromJson(value)).toList();

  static Map<String, ApiErrorResponse> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = new Map<String, ApiErrorResponse>();
    if (json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ApiErrorResponse.fromJson(value));
    }
    return map;
  }
}
