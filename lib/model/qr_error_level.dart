part of aspose_barcode_cloud.api;

class QRErrorLevel {
  QRErrorLevel._internal(this.value);

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
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// The underlying value of this enum member.
  String? value;

  ///
  static QRErrorLevel levelL_ = QRErrorLevel._internal("LevelL");

  ///
  static QRErrorLevel levelM_ = QRErrorLevel._internal("LevelM");

  ///
  static QRErrorLevel levelQ_ = QRErrorLevel._internal("LevelQ");

  ///
  static QRErrorLevel levelH_ = QRErrorLevel._internal("LevelH");

  static dynamic encode(QRErrorLevel data) => data.value;

  String? toJson() => value;

  @override
  String toString() => value == null ? "null" : value.toString();
}
