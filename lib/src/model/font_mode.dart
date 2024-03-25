///
/// FontMode: [Auto, Manual]
class FontMode {
  /// The underlying value of FontMode enum.
  late final String _value;

  FontMode._internal(this._value);

  ///
  static FontMode auto_ = FontMode._internal("Auto");

  ///
  static FontMode manual_ = FontMode._internal("Manual");

  /// Creates a FontMode instance from a JSON representation.
  FontMode.fromJson(dynamic data) {
    switch (data) {
      case "Auto":
      case "Manual":
        _value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// Returns a JSON representation of FontMode.
  String? toJson() {
    return _value;
  }

  @override
  String toString() {
    return _value.toString();
  }

  /// Converts a list of JSON objects to a list of FontMode instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of FontMode instances.
  static List<FontMode> listFromJson(List<dynamic> json) {
    return json.map((value) => FontMode.fromJson(value)).toList();
  }
}
