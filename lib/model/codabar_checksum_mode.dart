part of aspose_barcode_cloud.api;

class CodabarChecksumMode {
  CodabarChecksumMode._internal(this.value);

  CodabarChecksumMode.fromJson(dynamic data) {
    switch (data) {
      case "Mod10":
        value = data;
        break;
      case "Mod16":
        value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// The underlying value of this enum member.
  String? value;

  ///
  static CodabarChecksumMode mod10_ = CodabarChecksumMode._internal("Mod10");

  ///
  static CodabarChecksumMode mod16_ = CodabarChecksumMode._internal("Mod16");

  static dynamic encode(CodabarChecksumMode data) => data.value;

  String? toJson() => value;

  @override
  String toString() => value == null ? "null" : value.toString();
}
