class QREncodeType {
  /// The underlying value of this enum member.
  String? value;

  QREncodeType._internal(this.value);

  ///
  static QREncodeType auto_ = QREncodeType._internal("Auto");

  ///
  static QREncodeType forceQR_ = QREncodeType._internal("ForceQR");

  ///
  static QREncodeType forceMicroQR_ = QREncodeType._internal("ForceMicroQR");

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

  static dynamic encode(QREncodeType data) {
    return data.value;
  }

  String? toJson() {
    return value;
  }

  @override
  String toString() {
    return value == null ? "null" : value.toString();
  }

  static List<QREncodeType> listFromJson(List<dynamic> json) {
    return json.map((value) => QREncodeType.fromJson(value)).toList();
  }
}
