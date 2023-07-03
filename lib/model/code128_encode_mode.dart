part of aspose_barcode_cloud.api;

class Code128EncodeMode {
  /// The underlying value of this enum member.
  String? value;

  Code128EncodeMode._internal(this.value);

  ///
  static Code128EncodeMode auto_ = Code128EncodeMode._internal("Auto");

  ///
  static Code128EncodeMode codeA_ = Code128EncodeMode._internal("CodeA");

  ///
  static Code128EncodeMode codeB_ = Code128EncodeMode._internal("CodeB");

  ///
  static Code128EncodeMode codeAB_ = Code128EncodeMode._internal("CodeAB");

  ///
  static Code128EncodeMode codeC_ = Code128EncodeMode._internal("CodeC");

  ///
  static Code128EncodeMode codeAC_ = Code128EncodeMode._internal("CodeAC");

  ///
  static Code128EncodeMode codeBC_ = Code128EncodeMode._internal("CodeBC");

  Code128EncodeMode.fromJson(dynamic data) {
    switch (data) {
      case "Auto":
        value = data;
        break;
      case "CodeA":
        value = data;
        break;
      case "CodeB":
        value = data;
        break;
      case "CodeAB":
        value = data;
        break;
      case "CodeC":
        value = data;
        break;
      case "CodeAC":
        value = data;
        break;
      case "CodeBC":
        value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(Code128EncodeMode data) {
    return data.value;
  }

  String? toJson() {
    return value;
  }

  String toString() {
    return value == null ? "null" : value.toString();
  }
}
