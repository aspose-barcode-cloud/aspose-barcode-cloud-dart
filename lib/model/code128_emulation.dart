part of aspose_barcode_cloud.api;

class Code128Emulation {
  Code128Emulation._internal(this.value);

  Code128Emulation.fromJson(dynamic data) {
    switch (data) {
      case "None":
        value = data;
        break;
      case "Code903":
        value = data;
        break;
      case "Code904":
        value = data;
        break;
      case "Code905":
        value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// The underlying value of this enum member.
  String? value;

  ///
  static Code128Emulation none_ = Code128Emulation._internal("None");

  ///
  static Code128Emulation code903_ = Code128Emulation._internal("Code903");

  ///
  static Code128Emulation code904_ = Code128Emulation._internal("Code904");

  ///
  static Code128Emulation code905_ = Code128Emulation._internal("Code905");

  static dynamic encode(Code128Emulation data) => data.value;

  String? toJson() => value;

  @override
  String toString() => value == null ? "null" : value.toString();
}
