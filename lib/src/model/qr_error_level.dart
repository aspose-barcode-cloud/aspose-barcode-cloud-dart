///
/// QRErrorLevel: [LevelL, LevelM, LevelQ, LevelH]
class QRErrorLevel {
  /// The underlying value of QRErrorLevel enum.
  late final String _value;

  QRErrorLevel._internal(this._value);

  ///
  static QRErrorLevel levelL_ = QRErrorLevel._internal("LevelL");

  ///
  static QRErrorLevel levelM_ = QRErrorLevel._internal("LevelM");

  ///
  static QRErrorLevel levelQ_ = QRErrorLevel._internal("LevelQ");

  ///
  static QRErrorLevel levelH_ = QRErrorLevel._internal("LevelH");

  /// Creates a QRErrorLevel instance from a JSON representation.
  QRErrorLevel.fromJson(dynamic data) {
    switch (data) {
      case "LevelL":
      case "LevelM":
      case "LevelQ":
      case "LevelH":
        _value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// Returns a JSON representation of QRErrorLevel.
  String? toJson() {
    return _value;
  }

  @override
  String toString() {
    return _value.toString();
  }

  /// Converts a list of JSON objects to a list of QRErrorLevel instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of QRErrorLevel instances.
  static List<QRErrorLevel> listFromJson(List<dynamic> json) {
    return json.map((value) => QRErrorLevel.fromJson(value)).toList();
  }
}
