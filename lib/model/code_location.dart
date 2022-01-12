part of barcode.api;

class CodeLocation {
  /// The underlying value of this enum member.
  String? value;

  CodeLocation._internal(this.value);

  ///
  static CodeLocation below_ = CodeLocation._internal("Below");

  ///
  static CodeLocation above_ = CodeLocation._internal("Above");

  ///
  static CodeLocation none_ = CodeLocation._internal("None");

  CodeLocation.fromJson(dynamic data) {
    switch (data) {
      case "Below":
        value = data;
        break;
      case "Above":
        value = data;
        break;
      case "None":
        value = data;
        break;
      default:
        throw ('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(CodeLocation data) {
    return data.value;
  }
}
