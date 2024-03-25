///
/// FontStyle: [Regular, Bold, Italic, Underline, Strikeout]
class FontStyle {
  /// The underlying value of FontStyle enum.
  late final String _value;

  FontStyle._internal(this._value);

  ///
  static FontStyle regular_ = FontStyle._internal("Regular");

  ///
  static FontStyle bold_ = FontStyle._internal("Bold");

  ///
  static FontStyle italic_ = FontStyle._internal("Italic");

  ///
  static FontStyle underline_ = FontStyle._internal("Underline");

  ///
  static FontStyle strikeout_ = FontStyle._internal("Strikeout");

  /// Creates a FontStyle instance from a JSON representation.
  FontStyle.fromJson(dynamic data) {
    switch (data) {
      case "Regular":
      case "Bold":
      case "Italic":
      case "Underline":
      case "Strikeout":
        _value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// Returns a JSON representation of FontStyle.
  String? toJson() {
    return _value;
  }

  @override
  String toString() {
    return _value.toString();
  }

  /// Converts a list of JSON objects to a list of FontStyle instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of FontStyle instances.
  static List<FontStyle> listFromJson(List<dynamic> json) {
    return json.map((value) => FontStyle.fromJson(value)).toList();
  }
}
