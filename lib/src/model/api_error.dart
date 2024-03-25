// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package

/// ApiError
class ApiError {
  /// code
  String? code;

  /// message
  String? message;

  /// description
  String? description;

  /// dateTime
  DateTime? dateTime;

  /// innerError
  ApiError? innerError;

  /// Constructor
  ApiError();

  @override
  String toString() {
    return 'ApiError[code=$code, message=$message, description=$description, dateTime=$dateTime, innerError=$innerError, ]';
  }

  /// Creates a ApiError instance from a JSON representation.
  ApiError.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    description = json['description'];
    dateTime =
        json['dateTime'] == null ? null : DateTime.parse(json['dateTime']);
    innerError = ApiError.fromJson(json['innerError']);
  }

  /// Returns a JSON representation of ApiError.
  Map<String, dynamic> toJson() {
    return {
      'Code': code,
      'Message': message,
      'Description': description,
      'DateTime': dateTime == null ? '' : dateTime!.toUtc().toIso8601String(),
      'InnerError': innerError
    };
  }

  /// Converts a list of JSON objects to a list of ApiError instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of ApiError instances.
  static List<ApiError> listFromJson(List<dynamic> json) {
    return json.map((value) => ApiError.fromJson(value)).toList();
  }
}
