/// DataMatrix encoder's encoding mode, default to Auto
/// DataMatrixEncodeMode: [Auto, ASCII, Full, Custom, C40, Text, EDIFACT, ANSIX12, ExtendedCodetext]
class DataMatrixEncodeMode {
  /// The underlying value of DataMatrixEncodeMode enum.
  late final String _value;

  DataMatrixEncodeMode._internal(this._value);

  /// DataMatrix encoder&#39;s encoding mode, default to Auto
  // ignore: non_constant_identifier_names
  static final DataMatrixEncodeMode Auto =
      DataMatrixEncodeMode._internal("Auto");

  /// DataMatrix encoder&#39;s encoding mode, default to Auto
  // ignore: non_constant_identifier_names
  static final DataMatrixEncodeMode ASCII =
      DataMatrixEncodeMode._internal("ASCII");

  /// DataMatrix encoder&#39;s encoding mode, default to Auto
  // ignore: non_constant_identifier_names
  static final DataMatrixEncodeMode Full =
      DataMatrixEncodeMode._internal("Full");

  /// DataMatrix encoder&#39;s encoding mode, default to Auto
  // ignore: non_constant_identifier_names
  static final DataMatrixEncodeMode Custom =
      DataMatrixEncodeMode._internal("Custom");

  /// DataMatrix encoder&#39;s encoding mode, default to Auto
  // ignore: non_constant_identifier_names
  static final DataMatrixEncodeMode C40 = DataMatrixEncodeMode._internal("C40");

  /// DataMatrix encoder&#39;s encoding mode, default to Auto
  // ignore: non_constant_identifier_names
  static final DataMatrixEncodeMode Text =
      DataMatrixEncodeMode._internal("Text");

  /// DataMatrix encoder&#39;s encoding mode, default to Auto
  // ignore: non_constant_identifier_names
  static final DataMatrixEncodeMode EDIFACT =
      DataMatrixEncodeMode._internal("EDIFACT");

  /// DataMatrix encoder&#39;s encoding mode, default to Auto
  // ignore: non_constant_identifier_names
  static final DataMatrixEncodeMode ANSIX12 =
      DataMatrixEncodeMode._internal("ANSIX12");

  /// DataMatrix encoder&#39;s encoding mode, default to Auto
  // ignore: non_constant_identifier_names
  static final DataMatrixEncodeMode ExtendedCodetext =
      DataMatrixEncodeMode._internal("ExtendedCodetext");

  /// Creates a DataMatrixEncodeMode instance from a JSON representation.
  DataMatrixEncodeMode.fromJson(dynamic data) {
    switch (data) {
      case "Auto":
      case "ASCII":
      case "Full":
      case "Custom":
      case "C40":
      case "Text":
      case "EDIFACT":
      case "ANSIX12":
      case "ExtendedCodetext":
        _value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// Returns a JSON representation of DataMatrixEncodeMode.
  String? toJson() {
    return _value;
  }

  @override
  String toString() {
    return _value.toString();
  }

  /// Converts a list of JSON objects to a list of DataMatrixEncodeMode instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of DataMatrixEncodeMode instances.
  static List<DataMatrixEncodeMode> listFromJson(List<dynamic> json) {
    return json.map((value) => DataMatrixEncodeMode.fromJson(value)).toList();
  }
}
