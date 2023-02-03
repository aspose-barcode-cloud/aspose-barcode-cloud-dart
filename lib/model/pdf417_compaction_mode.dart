part of aspose_barcode_cloud.api;

class Pdf417CompactionMode {
  /// The underlying value of this enum member.
  String? value;

  Pdf417CompactionMode._internal(this.value);

  ///
  static Pdf417CompactionMode auto_ = Pdf417CompactionMode._internal("Auto");

  ///
  static Pdf417CompactionMode text_ = Pdf417CompactionMode._internal("Text");

  ///
  static Pdf417CompactionMode numeric_ =
      Pdf417CompactionMode._internal("Numeric");

  ///
  static Pdf417CompactionMode binary_ =
      Pdf417CompactionMode._internal("Binary");

  Pdf417CompactionMode.fromJson(dynamic data) {
    switch (data) {
      case "Auto":
        value = data;
        break;
      case "Text":
        value = data;
        break;
      case "Numeric":
        value = data;
        break;
      case "Binary":
        value = data;
        break;
      default:
        throw ('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(Pdf417CompactionMode data) {
    return data.value;
  }

  String? toJson() {
    return value;
  }

  String toString() {
    return value == null ? "null" : value.toString();
  }
}
