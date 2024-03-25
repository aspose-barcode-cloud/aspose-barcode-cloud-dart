///
/// Pdf417ErrorLevel: [Level0, Level1, Level2, Level3, Level4, Level5, Level6, Level7, Level8]
class Pdf417ErrorLevel {
  /// The underlying value of Pdf417ErrorLevel enum.
  late final String _value;

  Pdf417ErrorLevel._internal(this._value);

  ///
  static Pdf417ErrorLevel level0_ = Pdf417ErrorLevel._internal("Level0");

  ///
  static Pdf417ErrorLevel level1_ = Pdf417ErrorLevel._internal("Level1");

  ///
  static Pdf417ErrorLevel level2_ = Pdf417ErrorLevel._internal("Level2");

  ///
  static Pdf417ErrorLevel level3_ = Pdf417ErrorLevel._internal("Level3");

  ///
  static Pdf417ErrorLevel level4_ = Pdf417ErrorLevel._internal("Level4");

  ///
  static Pdf417ErrorLevel level5_ = Pdf417ErrorLevel._internal("Level5");

  ///
  static Pdf417ErrorLevel level6_ = Pdf417ErrorLevel._internal("Level6");

  ///
  static Pdf417ErrorLevel level7_ = Pdf417ErrorLevel._internal("Level7");

  ///
  static Pdf417ErrorLevel level8_ = Pdf417ErrorLevel._internal("Level8");

  /// Creates a Pdf417ErrorLevel instance from a JSON representation.
  Pdf417ErrorLevel.fromJson(dynamic data) {
    switch (data) {
      case "Level0":
      case "Level1":
      case "Level2":
      case "Level3":
      case "Level4":
      case "Level5":
      case "Level6":
      case "Level7":
      case "Level8":
        _value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// Returns a JSON representation of Pdf417ErrorLevel.
  String? toJson() {
    return _value;
  }

  @override
  String toString() {
    return _value.toString();
  }

  /// Converts a list of JSON objects to a list of Pdf417ErrorLevel instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of Pdf417ErrorLevel instances.
  static List<Pdf417ErrorLevel> listFromJson(List<dynamic> json) {
    return json.map((value) => Pdf417ErrorLevel.fromJson(value)).toList();
  }
}
