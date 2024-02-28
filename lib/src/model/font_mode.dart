class FontMode {
  /// The underlying value of this enum member.
  String? value;

  FontMode._internal(this.value);

  ///
  static FontMode auto_ = FontMode._internal("Auto");

  ///
  static FontMode manual_ = FontMode._internal("Manual");

  FontMode.fromJson(dynamic data) {
    switch (data) {
      case "Auto":
        value = data;
        break;
      case "Manual":
        value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(FontMode data) {
    return data.value;
  }

  String? toJson() {
    return value;
  }

  @override
  String toString() {
    return value == null ? "null" : value.toString();
  }

  static List<FontMode> listFromJson(List<dynamic> json) {
    return json.map((value) => FontMode.fromJson(value)).toList();
  }
}
