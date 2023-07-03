part of aspose_barcode_cloud.api;

class DataMatrixEncodeMode {
  /// The underlying value of this enum member.
  String? value;

  DataMatrixEncodeMode._internal(this.value);

  ///
  static DataMatrixEncodeMode auto_ = DataMatrixEncodeMode._internal("Auto");

  ///
  static DataMatrixEncodeMode aSCII_ = DataMatrixEncodeMode._internal("ASCII");

  ///
  static DataMatrixEncodeMode full_ = DataMatrixEncodeMode._internal("Full");

  ///
  static DataMatrixEncodeMode custom_ =
      DataMatrixEncodeMode._internal("Custom");

  ///
  static DataMatrixEncodeMode c40_ = DataMatrixEncodeMode._internal("C40");

  ///
  static DataMatrixEncodeMode text_ = DataMatrixEncodeMode._internal("Text");

  ///
  static DataMatrixEncodeMode eDIFACT_ =
      DataMatrixEncodeMode._internal("EDIFACT");

  ///
  static DataMatrixEncodeMode aNSIX12_ =
      DataMatrixEncodeMode._internal("ANSIX12");

  ///
  static DataMatrixEncodeMode extendedCodetext_ =
      DataMatrixEncodeMode._internal("ExtendedCodetext");

  DataMatrixEncodeMode.fromJson(dynamic data) {
    switch (data) {
      case "Auto":
        value = data;
        break;
      case "ASCII":
        value = data;
        break;
      case "Full":
        value = data;
        break;
      case "Custom":
        value = data;
        break;
      case "C40":
        value = data;
        break;
      case "Text":
        value = data;
        break;
      case "EDIFACT":
        value = data;
        break;
      case "ANSIX12":
        value = data;
        break;
      case "ExtendedCodetext":
        value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(DataMatrixEncodeMode data) {
    return data.value;
  }

  String? toJson() {
    return value;
  }

  String toString() {
    return value == null ? "null" : value.toString();
  }
}
