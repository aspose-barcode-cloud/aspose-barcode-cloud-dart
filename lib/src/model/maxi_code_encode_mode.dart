///
/// MaxiCodeEncodeMode: [Auto, Bytes, ExtendedCodetext]
class MaxiCodeEncodeMode {
  /// The underlying value of MaxiCodeEncodeMode enum.
  late final String _value;

  MaxiCodeEncodeMode._internal(this._value);

  ///
  // ignore: non_constant_identifier_names
  static final MaxiCodeEncodeMode Auto = MaxiCodeEncodeMode._internal("Auto");

  ///
  // ignore: non_constant_identifier_names
  static final MaxiCodeEncodeMode Bytes = MaxiCodeEncodeMode._internal("Bytes");

  ///
  // ignore: non_constant_identifier_names
  static final MaxiCodeEncodeMode ExtendedCodetext =
      MaxiCodeEncodeMode._internal("ExtendedCodetext");

  /// Creates a MaxiCodeEncodeMode instance from a JSON representation.
  MaxiCodeEncodeMode.fromJson(dynamic data) {
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

  /// Returns a JSON representation of MaxiCodeEncodeMode.
  String? toJson() {
    return _value;
  }

  @override
  String toString() {
    return _value.toString();
  }

  /// Converts a list of JSON objects to a list of MaxiCodeEncodeMode instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of MaxiCodeEncodeMode instances.
  static List<MaxiCodeEncodeMode> listFromJson(List<dynamic> json) {
    return json.map((value) => MaxiCodeEncodeMode.fromJson(value)).toList();
  }
}
