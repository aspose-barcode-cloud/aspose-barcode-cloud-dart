part of aspose_barcode_cloud.api;

class FontMode {
  FontMode._internal(this.value);

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

  /// The underlying value of this enum member.
  String? value;

  ///
  static FontMode auto_ = FontMode._internal("Auto");

  ///
  static FontMode manual_ = FontMode._internal("Manual");

  static dynamic encode(FontMode data) => data.value;

  String? toJson() => value;

  @override
  String toString() => value == null ? "null" : value.toString();
}
