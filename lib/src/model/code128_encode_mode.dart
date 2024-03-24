///
/// Code128EncodeMode: [Auto, CodeA, CodeB, CodeAB, CodeC, CodeAC, CodeBC]
class Code128EncodeMode {
  /// The underlying value of Code128EncodeMode enum.
  late final String _value;

  Code128EncodeMode._internal(this._value);

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

  /// Creates a Code128EncodeMode instance from a JSON representation.
  Code128EncodeMode.fromJson(dynamic data) {
    switch (data) {
      case "Auto":
      case "CodeA":
      case "CodeB":
      case "CodeAB":
      case "CodeC":
      case "CodeAC":
      case "CodeBC":
        _value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// Returns a JSON representation of Code128EncodeMode.
  String? toJson() {
    return _value;
  }

  @override
  String toString() {
    return _value.toString();
  }

  /// Converts a list of JSON objects to a list of Code128EncodeMode instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of Code128EncodeMode instances.
  static List<Code128EncodeMode> listFromJson(List<dynamic> json) {
    return json.map((value) => Code128EncodeMode.fromJson(value)).toList();
  }
}
