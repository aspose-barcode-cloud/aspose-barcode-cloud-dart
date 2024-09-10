/// Recognition mode.
/// RecognitionMode: [Fast, Normal, Excellent]
class RecognitionMode {
  /// The underlying value of RecognitionMode enum.
  late final String _value;

  RecognitionMode._internal(this._value);

  /// Recognition mode.
  // ignore: non_constant_identifier_names
  static final RecognitionMode Fast = RecognitionMode._internal("Fast");

  /// Recognition mode.
  // ignore: non_constant_identifier_names
  static final RecognitionMode Normal = RecognitionMode._internal("Normal");

  /// Recognition mode.
  // ignore: non_constant_identifier_names
  static final RecognitionMode Excellent =
      RecognitionMode._internal("Excellent");

  /// Creates a RecognitionMode instance from a JSON representation.
  RecognitionMode.fromJson(dynamic data) {
    switch (data) {
      case 'Fast':
      case 'Normal':
      case 'Excellent':
        _value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// Returns a JSON representation of RecognitionMode.
  String? toJson() {
    return _value;
  }

  @override
  String toString() {
    return _value.toString();
  }

  /// Converts a list of JSON objects to a list of RecognitionMode instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of RecognitionMode instances.
  static List<RecognitionMode> listFromJson(List<dynamic> json) {
    return json.map((value) => RecognitionMode.fromJson(value)).toList();
  }
}
