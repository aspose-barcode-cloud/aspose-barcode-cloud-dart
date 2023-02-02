part of aspose_barcode_cloud.api;

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
    innerError = new ErrorDetails.fromJson(json['innerError']);
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
    return json.map((value) => new Error.fromJson(value)).toList();
  }

  static Map<String, Error> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = new Map<String, Error>();
    if (json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Error.fromJson(value));
    }
    return map;
  }
}
