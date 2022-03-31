part of aspose_barcode_cloud.api;

class Pdf417ErrorLevel {
  /// The underlying value of this enum member.
  String? value;

  Pdf417ErrorLevel._internal(this.value);

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

  Pdf417ErrorLevel.fromJson(dynamic data) {
    switch (data) {
      case "Level0":
        value = data;
        break;
      case "Level1":
        value = data;
        break;
      case "Level2":
        value = data;
        break;
      case "Level3":
        value = data;
        break;
      case "Level4":
        value = data;
        break;
      case "Level5":
        value = data;
        break;
      case "Level6":
        value = data;
        break;
      case "Level7":
        value = data;
        break;
      case "Level8":
        value = data;
        break;
      default:
        throw ('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(Pdf417ErrorLevel data) {
    return data.value;
  }
}
