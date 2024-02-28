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
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(FontStyle data) {
    return data.value;
  }

  String? toJson() {
    return value;
  }

  @override
  String toString() {
    return value == null ? "null" : value.toString();
  }

  static List<FontStyle> listFromJson(List<dynamic> json) {
    return json.map((value) => FontStyle.fromJson(value)).toList();
  }
}
