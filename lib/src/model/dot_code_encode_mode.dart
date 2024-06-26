///
/// DotCodeEncodeMode: [Auto, Bytes, ExtendedCodetext]
class DotCodeEncodeMode {
  /// The underlying value of DotCodeEncodeMode enum.
  late final String _value;

  DotCodeEncodeMode._internal(this._value);

  ///
  // ignore: non_constant_identifier_names
  static final DotCodeEncodeMode Auto = DotCodeEncodeMode._internal("Auto");

  ///
  // ignore: non_constant_identifier_names
  static final DotCodeEncodeMode Bytes = DotCodeEncodeMode._internal("Bytes");

  ///
  // ignore: non_constant_identifier_names
  static final DotCodeEncodeMode ExtendedCodetext =
      DotCodeEncodeMode._internal("ExtendedCodetext");

  /// Creates a DotCodeEncodeMode instance from a JSON representation.
  DotCodeEncodeMode.fromJson(dynamic data) {
    switch (data) {
      case "Auto":
      case "Bytes":
      case "ExtendedCodetext":
        _value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// Returns a JSON representation of DotCodeEncodeMode.
  String? toJson() {
    return _value;
  }

  @override
  String toString() {
    return _value.toString();
  }

  /// Converts a list of JSON objects to a list of DotCodeEncodeMode instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of DotCodeEncodeMode instances.
  static List<DotCodeEncodeMode> listFromJson(List<dynamic> json) {
    return json.map((value) => DotCodeEncodeMode.fromJson(value)).toList();
  }
}
