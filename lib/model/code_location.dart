part of aspose_barcode_cloud.api;

class CodeLocation {
  CodeLocation._internal(this.value);

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
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// The underlying value of this enum member.
  String? value;

  ///
  static CodeLocation below_ = CodeLocation._internal("Below");

  ///
  static CodeLocation above_ = CodeLocation._internal("Above");

  ///
  static CodeLocation none_ = CodeLocation._internal("None");

  static dynamic encode(CodeLocation data) => data.value;

  String? toJson() => value;

  @override
  String toString() => value == null ? "null" : value.toString();
}
