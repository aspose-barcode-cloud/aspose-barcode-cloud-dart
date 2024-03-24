///
/// AztecEncodeMode: [Auto, Bytes, ExtendedCodetext]
class AztecEncodeMode {
  /// The underlying value of AztecEncodeMode enum.
  late final String _value;

  AztecEncodeMode._internal(this._value);

  ///
  static AztecEncodeMode auto_ = AztecEncodeMode._internal("Auto");

  ///
  static AztecEncodeMode bytes_ = AztecEncodeMode._internal("Bytes");

  ///
  static AztecEncodeMode extendedCodetext_ =
      AztecEncodeMode._internal("ExtendedCodetext");

  /// Creates a AztecEncodeMode instance from a JSON representation.
  AztecEncodeMode.fromJson(dynamic data) {
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

  /// Returns a JSON representation of AztecEncodeMode.
  String? toJson() {
    return _value;
  }

  @override
  String toString() {
    return _value.toString();
  }

  /// Converts a list of JSON objects to a list of AztecEncodeMode instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of AztecEncodeMode instances.
  static List<AztecEncodeMode> listFromJson(List<dynamic> json) {
    return json.map((value) => AztecEncodeMode.fromJson(value)).toList();
  }
}
