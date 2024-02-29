class DataMatrixEncodeMode {
  /// The underlying value of this enum member.
  String? value;

  DataMatrixEncodeMode._internal(this.value);

  /// DataMatrix encoder&#39;s encoding mode, default to Auto
  static DataMatrixEncodeMode auto_ = DataMatrixEncodeMode._internal("Auto");

  /// DataMatrix encoder&#39;s encoding mode, default to Auto
  static DataMatrixEncodeMode aSCII_ = DataMatrixEncodeMode._internal("ASCII");

  /// DataMatrix encoder&#39;s encoding mode, default to Auto
  static DataMatrixEncodeMode full_ = DataMatrixEncodeMode._internal("Full");

  /// DataMatrix encoder&#39;s encoding mode, default to Auto
  static DataMatrixEncodeMode custom_ =
      DataMatrixEncodeMode._internal("Custom");

  /// DataMatrix encoder&#39;s encoding mode, default to Auto
  static DataMatrixEncodeMode c40_ = DataMatrixEncodeMode._internal("C40");

  /// DataMatrix encoder&#39;s encoding mode, default to Auto
  static DataMatrixEncodeMode text_ = DataMatrixEncodeMode._internal("Text");

  /// DataMatrix encoder&#39;s encoding mode, default to Auto
  static DataMatrixEncodeMode eDIFACT_ =
      DataMatrixEncodeMode._internal("EDIFACT");

  /// DataMatrix encoder&#39;s encoding mode, default to Auto
  static DataMatrixEncodeMode aNSIX12_ =
      DataMatrixEncodeMode._internal("ANSIX12");

  /// DataMatrix encoder&#39;s encoding mode, default to Auto
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

  @override
  String toString() {
    return value == null ? "null" : value.toString();
  }

  static List<DataMatrixEncodeMode> listFromJson(List<dynamic> json) {
    return json.map((value) => DataMatrixEncodeMode.fromJson(value)).toList();
  }
}
