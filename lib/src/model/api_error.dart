// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package

class ApiError {
  String? code;

  String? message;

  String? description;

  DateTime? dateTime;

  ApiError? innerError;

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
    innerError = ApiError.fromJson(json['innerError']);
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
    return json.map((value) => ApiError.fromJson(value)).toList();
  }

  static Map<String, ApiError> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = <String, ApiError>{};
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = ApiError.fromJson(value));
    }
    return map;
  }
}
