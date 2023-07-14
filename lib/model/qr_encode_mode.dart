part of aspose_barcode_cloud.api;

class QREncodeMode {
  /// The underlying value of this enum member.
  String? value;

  QREncodeMode._internal(this.value);

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

  QREncodeMode.fromJson(dynamic data) {
    switch (data) {
      case "Auto":
        value = data;
        break;
      case "Bytes":
        value = data;
        break;
      case "Utf8BOM":
        value = data;
        break;
      case "Utf16BEBOM":
        value = data;
        break;
      case "ECIEncoding":
        value = data;
        break;
      case "ExtendedCodetext":
        value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(QREncodeMode data) {
    return data.value;
  }

  String? toJson() {
    return value;
  }

  String toString() {
    return value == null ? "null" : value.toString();
  }
}
