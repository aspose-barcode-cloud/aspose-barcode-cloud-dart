part of aspose_barcode_cloud.api;

class TextAlignment {
  /// The underlying value of this enum member.
  String? value;

  TextAlignment._internal(this.value);

  ///
  static TextAlignment left_ = TextAlignment._internal("Left");

  ///
  static TextAlignment center_ = TextAlignment._internal("Center");

  ///
  static TextAlignment right_ = TextAlignment._internal("Right");

  TextAlignment.fromJson(dynamic data) {
    switch (data) {
      case "Left":
        value = data;
        break;
      case "Center":
        value = data;
        break;
      case "Right":
        value = data;
        break;
      default:
        throw ('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(TextAlignment data) {
    return data.value;
  }
}
