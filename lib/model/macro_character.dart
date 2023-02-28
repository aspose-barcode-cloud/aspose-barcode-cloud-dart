part of aspose_barcode_cloud.api;

class MacroCharacter {
  MacroCharacter._internal(this.value);

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

  /// The underlying value of this enum member.
  String? value;

  ///
  static MacroCharacter none_ = MacroCharacter._internal("None");

  ///
  static MacroCharacter macro05_ = MacroCharacter._internal("Macro05");

  ///
  static MacroCharacter macro06_ = MacroCharacter._internal("Macro06");

  static dynamic encode(MacroCharacter data) => data.value;

  String? toJson() => value;

  @override
  String toString() => value == null ? "null" : value.toString();
}
