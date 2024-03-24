///
/// Pdf417CompactionMode: [Auto, Text, Numeric, Binary]
class Pdf417CompactionMode {
  /// The underlying value of Pdf417CompactionMode enum.
  late final String _value;

  Pdf417CompactionMode._internal(this._value);

  ///
  static Pdf417CompactionMode auto_ = Pdf417CompactionMode._internal("Auto");

  ///
  static Pdf417CompactionMode text_ = Pdf417CompactionMode._internal("Text");

  ///
  static Pdf417CompactionMode numeric_ =
      Pdf417CompactionMode._internal("Numeric");

  ///
  static Pdf417CompactionMode binary_ =
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
