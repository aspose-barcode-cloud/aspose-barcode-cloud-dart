part of aspose_barcode_cloud.api;

class DotCodeEncodeMode {
  /// The underlying value of this enum member.
  String? value;

  DotCodeEncodeMode._internal(this.value);

  ///
  static DotCodeEncodeMode auto_ = DotCodeEncodeMode._internal("Auto");

  ///
  static DotCodeEncodeMode bytes_ = DotCodeEncodeMode._internal("Bytes");

  ///
  static DotCodeEncodeMode extendedCodetext_ =
      DotCodeEncodeMode._internal("ExtendedCodetext");

  DotCodeEncodeMode.fromJson(dynamic data) {
    switch (data) {
      case "Auto":
        value = data;
        break;
      case "Bytes":
        value = data;
        break;
      case "ExtendedCodetext":
        value = data;
        break;
      default:
        throw ('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(DotCodeEncodeMode data) {
    return data.value;
  }

  String? toJson() {
    return value;
  }

  String toString() {
    return value == null ? "null" : value.toString();
  }
}
