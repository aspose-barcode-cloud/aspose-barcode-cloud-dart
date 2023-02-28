part of aspose_barcode_cloud.api;

class QREncodeType {
  QREncodeType._internal(this.value);

  QREncodeType.fromJson(dynamic data) {
    switch (data) {
      case "Auto":
        value = data;
        break;
      case "ForceQR":
        value = data;
        break;
      case "ForceMicroQR":
        value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// The underlying value of this enum member.
  String? value;

  ///
  static QREncodeType auto_ = QREncodeType._internal("Auto");

  ///
  static QREncodeType forceQR_ = QREncodeType._internal("ForceQR");

  ///
  static QREncodeType forceMicroQR_ = QREncodeType._internal("ForceMicroQR");

  static dynamic encode(QREncodeType data) => data.value;

  String? toJson() => value;

  @override
  String toString() => value == null ? "null" : value.toString();
}
