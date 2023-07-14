part of aspose_barcode_cloud.api;

class AztecSymbolMode {
  /// The underlying value of this enum member.
  String? value;

  AztecSymbolMode._internal(this.value);

  ///
  static AztecSymbolMode auto_ = AztecSymbolMode._internal("Auto");

  ///
  static AztecSymbolMode compact_ = AztecSymbolMode._internal("Compact");

  ///
  static AztecSymbolMode fullRange_ = AztecSymbolMode._internal("FullRange");

  ///
  static AztecSymbolMode rune_ = AztecSymbolMode._internal("Rune");

  AztecSymbolMode.fromJson(dynamic data) {
    switch (data) {
      case "Auto":
        value = data;
        break;
      case "Compact":
        value = data;
        break;
      case "FullRange":
        value = data;
        break;
      case "Rune":
        value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(AztecSymbolMode data) {
    return data.value;
  }

  String? toJson() {
    return value;
  }

  String toString() {
    return value == null ? "null" : value.toString();
  }
}
