///
/// PatchFormat: [PatchOnly, A4, A4_LANDSCAPE, US_Letter, US_Letter_LANDSCAPE]
class PatchFormat {
  /// The underlying value of PatchFormat enum.
  late final String _value;

  PatchFormat._internal(this._value);

  ///
  static PatchFormat patchOnly_ = PatchFormat._internal("PatchOnly");

  ///
  static PatchFormat a4_ = PatchFormat._internal("A4");

  ///
  static PatchFormat a4LANDSCAPE_ = PatchFormat._internal("A4_LANDSCAPE");

  ///
  static PatchFormat uSLetter_ = PatchFormat._internal("US_Letter");

  ///
  static PatchFormat uSLetterLANDSCAPE_ =
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
