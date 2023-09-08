class AutoSizeMode {
  /// The underlying value of this enum member.
  String? value;

  AutoSizeMode._internal(this.value);

  ///
  static AutoSizeMode none_ = AutoSizeMode._internal("None");

  ///
  static AutoSizeMode nearest_ = AutoSizeMode._internal("Nearest");

  ///
  static AutoSizeMode interpolation_ = AutoSizeMode._internal("Interpolation");

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

  static dynamic encode(AutoSizeMode data) {
    return data.value;
  }

  String? toJson() {
    return value;
  }

  String toString() {
    return value == null ? "null" : value.toString();
  }
}
