part of aspose_barcode_cloud.api;

class ApiError {
  String? code = null;

  String? message = null;

  String? description = null;

  DateTime? dateTime = null;

  ApiError? innerError = null;

  ApiError();

  @override
  String toString() {
    return 'ApiError[code=$code, message=$message, description=$description, dateTime=$dateTime, innerError=$innerError, ]';
  }

  ApiError.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    description = json['description'];
    dateTime =
        json['dateTime'] == null ? null : DateTime.parse(json['dateTime']);
    innerError = new ApiError.fromJson(json['innerError']);
  }

  Map<String, dynamic> toJson() {
    return {
      'Code': code,
      'Message': message,
      'Description': description,
      'DateTime': dateTime == null ? '' : dateTime!.toUtc().toIso8601String(),
      'InnerError': innerError
    };
  }

  static List<ApiError> listFromJson(List<dynamic> json) {
    return json.map((value) => new ApiError.fromJson(value)).toList();
  }

  static Map<String, ApiError> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ApiError>();
    if (json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ApiError.fromJson(value));
    }
    return map;
  }
}
