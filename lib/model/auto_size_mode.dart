part of aspose_barcode_cloud.api;

class AutoSizeMode {
  AutoSizeMode._internal(this.value);

  AutoSizeMode.fromJson(dynamic data) {
    switch (data) {
      case "None":
        value = data;
        break;
      case "Nearest":
        value = data;
        break;
      case "Interpolation":
        value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// The underlying value of this enum member.
  String? value;

  ///
  static AutoSizeMode none_ = AutoSizeMode._internal("None");

  ///
  static AutoSizeMode nearest_ = AutoSizeMode._internal("Nearest");

  ///
  static AutoSizeMode interpolation_ = AutoSizeMode._internal("Interpolation");

  static dynamic encode(AutoSizeMode data) => data.value;

  String? toJson() => value;

  @override
  String toString() => value == null ? "null" : value.toString();
}
