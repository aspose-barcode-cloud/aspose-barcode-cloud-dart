///
/// CodabarChecksumMode: [Mod10, Mod16]
class CodabarChecksumMode {
  /// The underlying value of CodabarChecksumMode enum.
  late final String _value;

  CodabarChecksumMode._internal(this._value);

  ///
  // ignore: non_constant_identifier_names
  static final CodabarChecksumMode Mod10 =
      CodabarChecksumMode._internal("Mod10");

  ///
  // ignore: non_constant_identifier_names
  static final CodabarChecksumMode Mod16 =
      CodabarChecksumMode._internal("Mod16");

  /// Creates a CodabarChecksumMode instance from a JSON representation.
  CodabarChecksumMode.fromJson(dynamic data) {
    switch (data) {
      case "Mod10":
      case "Mod16":
        _value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// Returns a JSON representation of CodabarChecksumMode.
  String? toJson() {
    return _value;
  }

  @override
  String toString() {
    return _value.toString();
  }

  /// Converts a list of JSON objects to a list of CodabarChecksumMode instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of CodabarChecksumMode instances.
  static List<CodabarChecksumMode> listFromJson(List<dynamic> json) {
    return json.map((value) => CodabarChecksumMode.fromJson(value)).toList();
  }
}
