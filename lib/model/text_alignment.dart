part of aspose_barcode_cloud.api;

class TextAlignment {
  TextAlignment._internal(this.value);

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
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// The underlying value of this enum member.
  String? value;

  ///
  static TextAlignment left_ = TextAlignment._internal("Left");

  ///
  static TextAlignment center_ = TextAlignment._internal("Center");

  ///
  static TextAlignment right_ = TextAlignment._internal("Right");

  static dynamic encode(TextAlignment data) => data.value;

  String? toJson() => value;

  @override
  String toString() => value == null ? "null" : value.toString();
}
