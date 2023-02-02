part of aspose_barcode_cloud.api;

class Pdf417MacroTerminator {
  Pdf417MacroTerminator._internal(this.value);

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

  /// The underlying value of this enum member.
  String? value;

  ///
  static Pdf417MacroTerminator auto_ = Pdf417MacroTerminator._internal("Auto");

  ///
  static Pdf417MacroTerminator none_ = Pdf417MacroTerminator._internal("None");

  ///
  static Pdf417MacroTerminator set_ = Pdf417MacroTerminator._internal("Set");

  static dynamic encode(Pdf417MacroTerminator data) => data.value;

  String? toJson() => value;

  @override
  String toString() => value == null ? "null" : value.toString();
}
