// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../../aspose_barcode_cloud.dart';

/// Error
class Error {
  /// Code
  String? code;

  /// Message
  String? message;

  /// Description
  String? description;

  /// Inner Error
  ErrorDetails? innerError;

  /// Constructor
  Error();

  @override
  String toString() {
    return 'Error[code=$code, message=$message, description=$description, innerError=$innerError, ]';
  }

  /// Creates a Error instance from a JSON representation.
  Error.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    description = json['description'];
    innerError = ErrorDetails.fromJson(json['innerError']);
  }

  /// Returns a JSON representation of Error.
  Map<String, dynamic> toJson() {
    return {
      'Code': code,
      'Message': message,
      'Description': description,
      'InnerError': innerError
    };
  }

  /// Converts a list of JSON objects to a list of Error instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of Error instances.
  static List<Error> listFromJson(List<dynamic> json) {
    return json.map((value) => Error.fromJson(value)).toList();
  }
}
