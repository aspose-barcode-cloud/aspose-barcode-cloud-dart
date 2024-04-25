///
/// AztecSymbolMode: [Auto, Compact, FullRange, Rune]
class AztecSymbolMode {
  /// The underlying value of AztecSymbolMode enum.
  late final String _value;

  AztecSymbolMode._internal(this._value);

  ///
  // ignore: non_constant_identifier_names
  static final AztecSymbolMode Auto = AztecSymbolMode._internal("Auto");

  ///
  // ignore: non_constant_identifier_names
  static final AztecSymbolMode Compact = AztecSymbolMode._internal("Compact");

  ///
  // ignore: non_constant_identifier_names
  static final AztecSymbolMode FullRange =
      AztecSymbolMode._internal("FullRange");

  ///
  // ignore: non_constant_identifier_names
  static final AztecSymbolMode Rune = AztecSymbolMode._internal("Rune");

  /// Creates a AztecSymbolMode instance from a JSON representation.
  AztecSymbolMode.fromJson(dynamic data) {
    switch (data) {
      case "Auto":
      case "Compact":
      case "FullRange":
      case "Rune":
        _value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// Returns a JSON representation of AztecSymbolMode.
  String? toJson() {
    return _value;
  }

  @override
  String toString() {
    return _value.toString();
  }

  /// Converts a list of JSON objects to a list of AztecSymbolMode instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of AztecSymbolMode instances.
  static List<AztecSymbolMode> listFromJson(List<dynamic> json) {
    return json.map((value) => AztecSymbolMode.fromJson(value)).toList();
  }
}
