///
/// BorderDashStyle: [Solid, Dash, Dot, DashDot, DashDotDot]
class BorderDashStyle {
  /// The underlying value of BorderDashStyle enum.
  late final String _value;

  BorderDashStyle._internal(this._value);

  ///
  // ignore: non_constant_identifier_names
  static final BorderDashStyle Solid = BorderDashStyle._internal("Solid");

  ///
  // ignore: non_constant_identifier_names
  static final BorderDashStyle Dash = BorderDashStyle._internal("Dash");

  ///
  // ignore: non_constant_identifier_names
  static final BorderDashStyle Dot = BorderDashStyle._internal("Dot");

  ///
  // ignore: non_constant_identifier_names
  static final BorderDashStyle DashDot = BorderDashStyle._internal("DashDot");

  ///
  // ignore: non_constant_identifier_names
  static final BorderDashStyle DashDotDot =
      BorderDashStyle._internal("DashDotDot");

  /// Creates a BorderDashStyle instance from a JSON representation.
  BorderDashStyle.fromJson(dynamic data) {
    switch (data) {
      case "Solid":
      case "Dash":
      case "Dot":
      case "DashDot":
      case "DashDotDot":
        _value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// Returns a JSON representation of BorderDashStyle.
  String? toJson() {
    return _value;
  }

  @override
  String toString() {
    return _value.toString();
  }

  /// Converts a list of JSON objects to a list of BorderDashStyle instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of BorderDashStyle instances.
  static List<BorderDashStyle> listFromJson(List<dynamic> json) {
    return json.map((value) => BorderDashStyle.fromJson(value)).toList();
  }
}
