class Code128Emulation {
  /// The underlying value of this enum member.
  String? value;

  Code128Emulation._internal(this.value);

  /// DEPRECATED. This enum will be removed in future releases Function codewords for Code 128 emulation. Applied for MicroPDF417 only. Ignored for PDF417 and MacroPDF417 barcodes.
  static Code128Emulation none_ = Code128Emulation._internal("None");

  /// DEPRECATED. This enum will be removed in future releases Function codewords for Code 128 emulation. Applied for MicroPDF417 only. Ignored for PDF417 and MacroPDF417 barcodes.
  static Code128Emulation code903_ = Code128Emulation._internal("Code903");

  /// DEPRECATED. This enum will be removed in future releases Function codewords for Code 128 emulation. Applied for MicroPDF417 only. Ignored for PDF417 and MacroPDF417 barcodes.
  static Code128Emulation code904_ = Code128Emulation._internal("Code904");

  /// DEPRECATED. This enum will be removed in future releases Function codewords for Code 128 emulation. Applied for MicroPDF417 only. Ignored for PDF417 and MacroPDF417 barcodes.
  static Code128Emulation code905_ = Code128Emulation._internal("Code905");

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

  static dynamic encode(Code128Emulation data) {
    return data.value;
  }

  String? toJson() {
    return value;
  }

  String toString() {
    return value == null ? "null" : value.toString();
  }

  static List<Code128Emulation> listFromJson(List<dynamic> json) {
    return json.map((value) => Code128Emulation.fromJson(value)).toList();
  }
}
