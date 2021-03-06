part of aspose_barcode_cloud.api;

class FontStyle {
  /// The underlying value of this enum member.
  String? value;

  FontStyle._internal(this.value);

  ///
  static FontStyle regular_ = FontStyle._internal("Regular");

  ///
  static FontStyle bold_ = FontStyle._internal("Bold");

  ///
  static FontStyle italic_ = FontStyle._internal("Italic");

  ///
  static FontStyle underline_ = FontStyle._internal("Underline");

  ///
  static FontStyle strikeout_ = FontStyle._internal("Strikeout");

  FontStyle.fromJson(dynamic data) {
    switch (data) {
      case "Regular":
        value = data;
        break;
      case "Bold":
        value = data;
        break;
      case "Italic":
        value = data;
        break;
      case "Underline":
        value = data;
        break;
      case "Strikeout":
        value = data;
        break;
      default:
        throw ('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(FontStyle data) {
    return data.value;
  }
}
