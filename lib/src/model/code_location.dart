///
/// CodeLocation: [Below, Above, None]
class CodeLocation {
  /// The underlying value of CodeLocation enum.
  late final String _value;

  CodeLocation._internal(this._value);

  // ignore: non_constant_identifier_names
  static final CodeLocation Below = CodeLocation._internal("Below");
  // ignore: non_constant_identifier_names
  static final CodeLocation Above = CodeLocation._internal("Above");
  // ignore: non_constant_identifier_names
  static final CodeLocation None = CodeLocation._internal("None");

  /// Creates a CodeLocation instance from a JSON representation.
  CodeLocation.fromJson(dynamic data) {
    switch (data) {
      case 'Below':
      case 'Above':
      case 'None':
        _value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// Returns a JSON representation of CodeLocation.
  String? toJson() {
    return _value;
  }

  @override
  String toString() {
    return _value.toString();
  }

  /// Converts a list of JSON objects to a list of CodeLocation instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of CodeLocation instances.
  static List<CodeLocation> listFromJson(List<dynamic> json) {
    return json.map((value) => CodeLocation.fromJson(value)).toList();
  }
}
