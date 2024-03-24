///
/// MacroCharacter: [None, Macro05, Macro06]
class MacroCharacter {
  /// The underlying value of MacroCharacter enum.
  late final String _value;

  MacroCharacter._internal(this._value);

  ///
  static MacroCharacter none_ = MacroCharacter._internal("None");

  ///
  static MacroCharacter macro05_ = MacroCharacter._internal("Macro05");

  ///
  static MacroCharacter macro06_ = MacroCharacter._internal("Macro06");

  /// Creates a MacroCharacter instance from a JSON representation.
  MacroCharacter.fromJson(dynamic data) {
    switch (data) {
      case "None":
      case "Macro05":
      case "Macro06":
        _value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// Returns a JSON representation of MacroCharacter.
  String? toJson() {
    return _value;
  }

  @override
  String toString() {
    return _value.toString();
  }

  /// Converts a list of JSON objects to a list of MacroCharacter instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of MacroCharacter instances.
  static List<MacroCharacter> listFromJson(List<dynamic> json) {
    return json.map((value) => MacroCharacter.fromJson(value)).toList();
  }
}
