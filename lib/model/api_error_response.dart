part of aspose_barcode_cloud.api;

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
    error = new ApiError.fromJson(json['error']);
  }

  Map<String, dynamic> toJson() {
    return {'RequestId': requestId, 'Error': error};
  }

  static List<ApiErrorResponse> listFromJson(List<dynamic> json) {
    return json.map((value) => new ApiErrorResponse.fromJson(value)).toList();
  }

  static Map<String, ApiErrorResponse> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ApiErrorResponse>();
    if (json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ApiErrorResponse.fromJson(value));
    }
    return map;
  }
}
