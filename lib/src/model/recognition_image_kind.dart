/// Kind of image to recognize
/// RecognitionImageKind: [Photo, ScannedDocument, ClearImage]
class RecognitionImageKind {
  /// The underlying value of RecognitionImageKind enum.
  late final String _value;

  RecognitionImageKind._internal(this._value);

  /// Kind of image to recognize
  // ignore: non_constant_identifier_names
  static final RecognitionImageKind Photo =
      RecognitionImageKind._internal("Photo");

  /// Kind of image to recognize
  // ignore: non_constant_identifier_names
  static final RecognitionImageKind ScannedDocument =
      RecognitionImageKind._internal("ScannedDocument");

  /// Kind of image to recognize
  // ignore: non_constant_identifier_names
  static final RecognitionImageKind ClearImage =
      RecognitionImageKind._internal("ClearImage");

  /// Creates a RecognitionImageKind instance from a JSON representation.
  RecognitionImageKind.fromJson(dynamic data) {
    switch (data) {
      case 'Photo':
      case 'ScannedDocument':
      case 'ClearImage':
        _value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// Returns a JSON representation of RecognitionImageKind.
  String? toJson() {
    return _value;
  }

  @override
  String toString() {
    return _value.toString();
  }

  /// Converts a list of JSON objects to a list of RecognitionImageKind instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of RecognitionImageKind instances.
  static List<RecognitionImageKind> listFromJson(List<dynamic> json) {
    return json.map((value) => RecognitionImageKind.fromJson(value)).toList();
  }
}
