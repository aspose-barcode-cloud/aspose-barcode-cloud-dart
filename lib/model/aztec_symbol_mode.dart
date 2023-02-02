part of aspose_barcode_cloud.api;

class AztecSymbolMode {
  AztecSymbolMode._internal(this.value);

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

  /// The underlying value of this enum member.
  String? value;

  ///
  static AztecSymbolMode auto_ = AztecSymbolMode._internal("Auto");

  ///
  static AztecSymbolMode compact_ = AztecSymbolMode._internal("Compact");

  ///
  static AztecSymbolMode fullRange_ = AztecSymbolMode._internal("FullRange");

  ///
  static AztecSymbolMode rune_ = AztecSymbolMode._internal("Rune");

  static dynamic encode(AztecSymbolMode data) => data.value;

  String? toJson() => value;

  @override
  String toString() => value == null ? "null" : value.toString();
}
