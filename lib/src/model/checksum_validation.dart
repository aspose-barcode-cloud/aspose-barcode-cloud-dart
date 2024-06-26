///
/// ChecksumValidation: [Default, On, Off]
class ChecksumValidation {
  /// The underlying value of ChecksumValidation enum.
  late final String _value;

  ChecksumValidation._internal(this._value);

  ///
  // ignore: non_constant_identifier_names
  static final ChecksumValidation Default =
      ChecksumValidation._internal("Default");

  ///
  // ignore: non_constant_identifier_names
  static final ChecksumValidation On = ChecksumValidation._internal("On");

  ///
  // ignore: non_constant_identifier_names
  static final ChecksumValidation Off = ChecksumValidation._internal("Off");

  /// Creates a ChecksumValidation instance from a JSON representation.
  ChecksumValidation.fromJson(dynamic data) {
    switch (data) {
      case "Default":
      case "On":
      case "Off":
        _value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// Returns a JSON representation of ChecksumValidation.
  String? toJson() {
    return _value;
  }

  @override
  String toString() {
    return _value.toString();
  }

  /// Converts a list of JSON objects to a list of ChecksumValidation instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of ChecksumValidation instances.
  static List<ChecksumValidation> listFromJson(List<dynamic> json) {
    return json.map((value) => ChecksumValidation.fromJson(value)).toList();
  }
}
