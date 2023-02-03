part of aspose_barcode_cloud.api;

class QRErrorLevel {
  /// The underlying value of this enum member.
  String? value;

  QRErrorLevel._internal(this.value);

  ///
  static QRErrorLevel levelL_ = QRErrorLevel._internal("LevelL");

  ///
  static QRErrorLevel levelM_ = QRErrorLevel._internal("LevelM");

  ///
  static QRErrorLevel levelQ_ = QRErrorLevel._internal("LevelQ");

  ///
  static QRErrorLevel levelH_ = QRErrorLevel._internal("LevelH");

  QRErrorLevel.fromJson(dynamic data) {
    switch (data) {
      case "LevelL":
        value = data;
        break;
      case "LevelM":
        value = data;
        break;
      case "LevelQ":
        value = data;
        break;
      case "LevelH":
        value = data;
        break;
      default:
        throw ('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(QRErrorLevel data) {
    return data.value;
  }

  String? toJson() {
    return value;
  }

  String toString() {
    return value == null ? "null" : value.toString();
  }
}
