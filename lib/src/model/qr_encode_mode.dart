///
/// QREncodeMode: [Auto, Bytes, Utf8BOM, Utf16BEBOM, ECIEncoding, ExtendedCodetext]
class QREncodeMode {
  /// The underlying value of QREncodeMode enum.
  late final String _value;

  QREncodeMode._internal(this._value);

  ///
  // ignore: non_constant_identifier_names
  static final QREncodeMode Auto = QREncodeMode._internal("Auto");

  ///
  // ignore: non_constant_identifier_names
  static final QREncodeMode Bytes = QREncodeMode._internal("Bytes");

  ///
  // ignore: non_constant_identifier_names
  static final QREncodeMode Utf8BOM = QREncodeMode._internal("Utf8BOM");

  ///
  // ignore: non_constant_identifier_names
  static final QREncodeMode Utf16BEBOM = QREncodeMode._internal("Utf16BEBOM");

  ///
  // ignore: non_constant_identifier_names
  static final QREncodeMode ECIEncoding = QREncodeMode._internal("ECIEncoding");

  ///
  // ignore: non_constant_identifier_names
  static final QREncodeMode ExtendedCodetext =
      QREncodeMode._internal("ExtendedCodetext");

  /// Creates a QREncodeMode instance from a JSON representation.
  QREncodeMode.fromJson(dynamic data) {
    switch (data) {
      case "Auto":
      case "Bytes":
      case "Utf8BOM":
      case "Utf16BEBOM":
      case "ECIEncoding":
      case "ExtendedCodetext":
        _value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// Returns a JSON representation of QREncodeMode.
  String? toJson() {
    return _value;
  }

  @override
  String toString() {
    return _value.toString();
  }

  /// Converts a list of JSON objects to a list of QREncodeMode instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of QREncodeMode instances.
  static List<QREncodeMode> listFromJson(List<dynamic> json) {
    return json.map((value) => QREncodeMode.fromJson(value)).toList();
  }
}
