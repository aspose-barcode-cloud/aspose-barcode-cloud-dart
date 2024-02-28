class MacroCharacter {
  /// The underlying value of this enum member.
  String? value;

  MacroCharacter._internal(this.value);

  ///
  static MacroCharacter none_ = MacroCharacter._internal("None");

  ///
  static MacroCharacter macro05_ = MacroCharacter._internal("Macro05");

  ///
  static MacroCharacter macro06_ = MacroCharacter._internal("Macro06");

  MacroCharacter.fromJson(dynamic data) {
    switch (data) {
      case "None":
        value = data;
        break;
      case "Macro05":
        value = data;
        break;
      case "Macro06":
        value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(MacroCharacter data) {
    return data.value;
  }

  String? toJson() {
    return value;
  }

  @override
  String toString() {
    return value == null ? "null" : value.toString();
  }

  static List<MacroCharacter> listFromJson(List<dynamic> json) {
    return json.map((value) => MacroCharacter.fromJson(value)).toList();
  }
}
