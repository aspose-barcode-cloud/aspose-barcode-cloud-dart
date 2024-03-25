///
/// QREncodeType: [Auto, ForceQR, ForceMicroQR]
class QREncodeType {
  /// The underlying value of QREncodeType enum.
  late final String _value;

  QREncodeType._internal(this._value);

  ///
  static QREncodeType auto_ = QREncodeType._internal("Auto");

  ///
  static QREncodeType forceQR_ = QREncodeType._internal("ForceQR");

  ///
  static QREncodeType forceMicroQR_ = QREncodeType._internal("ForceMicroQR");

  /// Creates a QREncodeType instance from a JSON representation.
  QREncodeType.fromJson(dynamic data) {
    switch (data) {
      case "Auto":
      case "ForceQR":
      case "ForceMicroQR":
        _value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// Returns a JSON representation of QREncodeType.
  String? toJson() {
    return _value;
  }

  @override
  String toString() {
    return _value.toString();
  }

  /// Converts a list of JSON objects to a list of QREncodeType instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of QREncodeType instances.
  static List<QREncodeType> listFromJson(List<dynamic> json) {
    return json.map((value) => QREncodeType.fromJson(value)).toList();
  }
}
