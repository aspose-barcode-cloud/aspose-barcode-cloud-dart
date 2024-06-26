///
/// AutoSizeMode: [None, Nearest, Interpolation]
class AutoSizeMode {
  /// The underlying value of AutoSizeMode enum.
  late final String _value;

  AutoSizeMode._internal(this._value);

  ///
  // ignore: non_constant_identifier_names
  static final AutoSizeMode None = AutoSizeMode._internal("None");

  ///
  // ignore: non_constant_identifier_names
  static final AutoSizeMode Nearest = AutoSizeMode._internal("Nearest");

  ///
  // ignore: non_constant_identifier_names
  static final AutoSizeMode Interpolation =
      AutoSizeMode._internal("Interpolation");

  /// Creates a AutoSizeMode instance from a JSON representation.
  AutoSizeMode.fromJson(dynamic data) {
    switch (data) {
      case "None":
      case "Nearest":
      case "Interpolation":
        _value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// Returns a JSON representation of AutoSizeMode.
  String? toJson() {
    return _value;
  }

  @override
  String toString() {
    return _value.toString();
  }

  /// Converts a list of JSON objects to a list of AutoSizeMode instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of AutoSizeMode instances.
  static List<AutoSizeMode> listFromJson(List<dynamic> json) {
    return json.map((value) => AutoSizeMode.fromJson(value)).toList();
  }
}
