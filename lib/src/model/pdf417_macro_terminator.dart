class Pdf417MacroTerminator {
  /// The underlying value of this enum member.
  String? value;

  Pdf417MacroTerminator._internal(this.value);

  ///
  static Pdf417MacroTerminator auto_ = Pdf417MacroTerminator._internal("Auto");

  ///
  static Pdf417MacroTerminator none_ = Pdf417MacroTerminator._internal("None");

  ///
  static Pdf417MacroTerminator set_ = Pdf417MacroTerminator._internal("Set");

  Pdf417MacroTerminator.fromJson(dynamic data) {
    switch (data) {
      case "Auto":
        value = data;
        break;
      case "None":
        value = data;
        break;
      case "Set":
        value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(Pdf417MacroTerminator data) {
    return data.value;
  }

  String? toJson() {
    return value;
  }

  @override
  String toString() {
    return value == null ? "null" : value.toString();
  }

  static List<Pdf417MacroTerminator> listFromJson(List<dynamic> json) {
    return json.map((value) => Pdf417MacroTerminator.fromJson(value)).toList();
  }
}
