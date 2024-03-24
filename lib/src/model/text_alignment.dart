///
/// TextAlignment: [Left, Center, Right]
class TextAlignment {
  /// The underlying value of TextAlignment enum.
  late final String _value;

  TextAlignment._internal(this._value);

  ///
  static TextAlignment left_ = TextAlignment._internal("Left");

  ///
  static TextAlignment center_ = TextAlignment._internal("Center");

  ///
  static TextAlignment right_ = TextAlignment._internal("Right");

  /// Creates a TextAlignment instance from a JSON representation.
  TextAlignment.fromJson(dynamic data) {
    switch (data) {
      case "Left":
      case "Center":
      case "Right":
        _value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// Returns a JSON representation of TextAlignment.
  String? toJson() {
    return _value;
  }

  @override
  String toString() {
    return _value.toString();
  }

  /// Converts a list of JSON objects to a list of TextAlignment instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of TextAlignment instances.
  static List<TextAlignment> listFromJson(List<dynamic> json) {
    return json.map((value) => TextAlignment.fromJson(value)).toList();
  }
}
