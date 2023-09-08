// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../api.dart';

class Error {
  /* Code */
  String? code = null;

/* Message */
  String? message = null;

/* Description */
  String? description = null;

/* Inner Error */
  ErrorDetails? innerError = null;

  Error();

  @override
  String toString() {
    return 'Error[code=$code, message=$message, description=$description, innerError=$innerError, ]';
  }

  Error.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    description = json['description'];
    innerError = ErrorDetails.fromJson(json['innerError']);
  }

  Map<String, dynamic> toJson() {
    return {
      'Code': code,
      'Message': message,
      'Description': description,
      'InnerError': innerError
    };
  }

  static List<Error> listFromJson(List<dynamic> json) {
    return json.map((value) => Error.fromJson(value)).toList();
  }

  static Map<String, Error> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = Map<String, Error>();
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = Error.fromJson(value));
    }
    return map;
  }
}
