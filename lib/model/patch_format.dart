part of aspose_barcode_cloud.api;

class PatchFormat {
  PatchFormat._internal(this.value);

  PatchFormat.fromJson(dynamic data) {
    switch (data) {
      case "PatchOnly":
        value = data;
        break;
      case "A4":
        value = data;
        break;
      case "A4_LANDSCAPE":
        value = data;
        break;
      case "US_Letter":
        value = data;
        break;
      case "US_Letter_LANDSCAPE":
        value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// The underlying value of this enum member.
  String? value;

  ///
  static PatchFormat patchOnly_ = PatchFormat._internal("PatchOnly");

  ///
  static PatchFormat a4_ = PatchFormat._internal("A4");

  ///
  static PatchFormat a4LANDSCAPE_ = PatchFormat._internal("A4_LANDSCAPE");

  ///
  static PatchFormat uSLetter_ = PatchFormat._internal("US_Letter");

  ///
  static PatchFormat uSLetterLANDSCAPE_ =
      PatchFormat._internal("US_Letter_LANDSCAPE");

  static dynamic encode(PatchFormat data) => data.value;

  String? toJson() => value;

  @override
  String toString() => value == null ? "null" : value.toString();
}
