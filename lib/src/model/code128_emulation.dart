/// DEPRECATED. This enum will be removed in future releases Function codewords for Code 128 emulation. Applied for MicroPDF417 only. Ignored for PDF417 and MacroPDF417 barcodes.
/// Code128Emulation: [None, Code903, Code904, Code905]
class Code128Emulation {
  /// The underlying value of Code128Emulation enum.
  late final String _value;

  Code128Emulation._internal(this._value);

  /// DEPRECATED. This enum will be removed in future releases Function codewords for Code 128 emulation. Applied for MicroPDF417 only. Ignored for PDF417 and MacroPDF417 barcodes.
  static Code128Emulation none_ = Code128Emulation._internal("None");

  /// DEPRECATED. This enum will be removed in future releases Function codewords for Code 128 emulation. Applied for MicroPDF417 only. Ignored for PDF417 and MacroPDF417 barcodes.
  static Code128Emulation code903_ = Code128Emulation._internal("Code903");

  /// DEPRECATED. This enum will be removed in future releases Function codewords for Code 128 emulation. Applied for MicroPDF417 only. Ignored for PDF417 and MacroPDF417 barcodes.
  static Code128Emulation code904_ = Code128Emulation._internal("Code904");

  /// DEPRECATED. This enum will be removed in future releases Function codewords for Code 128 emulation. Applied for MicroPDF417 only. Ignored for PDF417 and MacroPDF417 barcodes.
  static Code128Emulation code905_ = Code128Emulation._internal("Code905");

  /// Creates a Code128Emulation instance from a JSON representation.
  Code128Emulation.fromJson(dynamic data) {
    switch (data) {
      case "None":
      case "Code903":
      case "Code904":
      case "Code905":
        _value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// Returns a JSON representation of Code128Emulation.
  String? toJson() {
    return _value;
  }

  @override
  String toString() {
    return _value.toString();
  }

  /// Converts a list of JSON objects to a list of Code128Emulation instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of Code128Emulation instances.
  static List<Code128Emulation> listFromJson(List<dynamic> json) {
    return json.map((value) => Code128Emulation.fromJson(value)).toList();
  }
}
