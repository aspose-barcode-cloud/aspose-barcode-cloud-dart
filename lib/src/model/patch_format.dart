///
/// PatchFormat: [PatchOnly, A4, A4_LANDSCAPE, US_Letter, US_Letter_LANDSCAPE]
class PatchFormat {
  /// The underlying value of PatchFormat enum.
  late final String _value;

  PatchFormat._internal(this._value);

  ///
  // ignore: non_constant_identifier_names
  static final PatchFormat PatchOnly = PatchFormat._internal("PatchOnly");

  ///
  // ignore: non_constant_identifier_names
  static final PatchFormat A4 = PatchFormat._internal("A4");

  ///
  // ignore: non_constant_identifier_names
  static final PatchFormat A4_LANDSCAPE = PatchFormat._internal("A4_LANDSCAPE");

  ///
  // ignore: non_constant_identifier_names
  static final PatchFormat US_Letter = PatchFormat._internal("US_Letter");

  ///
  // ignore: non_constant_identifier_names
  static final PatchFormat US_Letter_LANDSCAPE =
      PatchFormat._internal("US_Letter_LANDSCAPE");

  /// Creates a PatchFormat instance from a JSON representation.
  PatchFormat.fromJson(dynamic data) {
    switch (data) {
      case "PatchOnly":
      case "A4":
      case "A4_LANDSCAPE":
      case "US_Letter":
      case "US_Letter_LANDSCAPE":
        _value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// Returns a JSON representation of PatchFormat.
  String? toJson() {
    return _value;
  }

  @override
  String toString() {
    return _value.toString();
  }

  /// Converts a list of JSON objects to a list of PatchFormat instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of PatchFormat instances.
  static List<PatchFormat> listFromJson(List<dynamic> json) {
    return json.map((value) => PatchFormat.fromJson(value)).toList();
  }
}
