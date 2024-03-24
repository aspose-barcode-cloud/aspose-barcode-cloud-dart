///
/// QREncodeMode: [Auto, Bytes, Utf8BOM, Utf16BEBOM, ECIEncoding, ExtendedCodetext]
class QREncodeMode {
  /// The underlying value of QREncodeMode enum.
  late final String _value;

  QREncodeMode._internal(this._value);

  ///
  static QREncodeMode auto_ = QREncodeMode._internal("Auto");

  ///
  static QREncodeMode bytes_ = QREncodeMode._internal("Bytes");

  ///
  static QREncodeMode utf8BOM_ = QREncodeMode._internal("Utf8BOM");

  ///
  static QREncodeMode utf16BEBOM_ = QREncodeMode._internal("Utf16BEBOM");

  ///
  static QREncodeMode eCIEncoding_ = QREncodeMode._internal("ECIEncoding");

  ///
  static QREncodeMode extendedCodetext_ =
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
