class AztecEncodeMode {
  /// The underlying value of this enum member.
  String? value;

  AztecEncodeMode._internal(this.value);

  ///
  static AztecEncodeMode auto_ = AztecEncodeMode._internal("Auto");

  ///
  static AztecEncodeMode bytes_ = AztecEncodeMode._internal("Bytes");

  ///
  static AztecEncodeMode extendedCodetext_ =
      AztecEncodeMode._internal("ExtendedCodetext");

  AztecEncodeMode.fromJson(dynamic data) {
    switch (data) {
      case "Auto":
        value = data;
        break;
      case "Bytes":
        value = data;
        break;
      case "ExtendedCodetext":
        value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(AztecEncodeMode data) {
    return data.value;
  }

  String? toJson() {
    return value;
  }

  String toString() {
    return value == null ? "null" : value.toString();
  }

  static List<AztecEncodeMode> listFromJson(List<dynamic> json) {
    return json.map((value) => AztecEncodeMode.fromJson(value)).toList();
  }
}
