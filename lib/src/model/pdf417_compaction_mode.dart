///
/// Pdf417CompactionMode: [Auto, Text, Numeric, Binary]
class Pdf417CompactionMode {
  /// The underlying value of Pdf417CompactionMode enum.
  late final String _value;

  Pdf417CompactionMode._internal(this._value);

  ///
  // ignore: non_constant_identifier_names
  static final Pdf417CompactionMode Auto =
      Pdf417CompactionMode._internal("Auto");

  ///
  // ignore: non_constant_identifier_names
  static final Pdf417CompactionMode Text =
      Pdf417CompactionMode._internal("Text");

  ///
  // ignore: non_constant_identifier_names
  static final Pdf417CompactionMode Numeric =
      Pdf417CompactionMode._internal("Numeric");

  ///
  // ignore: non_constant_identifier_names
  static final Pdf417CompactionMode Binary =
      Pdf417CompactionMode._internal("Binary");

  /// Creates a Pdf417CompactionMode instance from a JSON representation.
  Pdf417CompactionMode.fromJson(dynamic data) {
    switch (data) {
      case "Auto":
      case "Text":
      case "Numeric":
      case "Binary":
        _value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// Returns a JSON representation of Pdf417CompactionMode.
  String? toJson() {
    return _value;
  }

  @override
  String toString() {
    return _value.toString();
  }

  /// Converts a list of JSON objects to a list of Pdf417CompactionMode instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of Pdf417CompactionMode instances.
  static List<Pdf417CompactionMode> listFromJson(List<dynamic> json) {
    return json.map((value) => Pdf417CompactionMode.fromJson(value)).toList();
  }
}
