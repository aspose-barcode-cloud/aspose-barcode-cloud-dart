part of aspose_barcode_cloud.api;

class CodabarChecksumMode {
  /// The underlying value of this enum member.
  String? value;

  CodabarChecksumMode._internal(this.value);

  ///
  static CodabarChecksumMode mod10_ = CodabarChecksumMode._internal("Mod10");

  ///
  static CodabarChecksumMode mod16_ = CodabarChecksumMode._internal("Mod16");

  CodabarChecksumMode.fromJson(dynamic data) {
    switch (data) {
      case "Mod10":
        value = data;
        break;
      case "Mod16":
        value = data;
        break;
      default:
        throw ('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(CodabarChecksumMode data) {
    return data.value;
  }

  String? toJson() {
    return value;
  }

  String toString() {
    return value == null ? "null" : value.toString();
  }
}
