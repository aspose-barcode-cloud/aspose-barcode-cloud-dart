part of aspose_barcode_cloud.api;

class MaxiCodeEncodeMode {
  /// The underlying value of this enum member.
  String? value;

  MaxiCodeEncodeMode._internal(this.value);

  ///
  static MaxiCodeEncodeMode auto_ = MaxiCodeEncodeMode._internal("Auto");

  ///
  static MaxiCodeEncodeMode bytes_ = MaxiCodeEncodeMode._internal("Bytes");

  ///
  static MaxiCodeEncodeMode extendedCodetext_ =
      MaxiCodeEncodeMode._internal("ExtendedCodetext");

  MaxiCodeEncodeMode.fromJson(dynamic data) {
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

  static dynamic encode(MaxiCodeEncodeMode data) {
    return data.value;
  }

  String? toJson() {
    return value;
  }

  String toString() {
    return value == null ? "null" : value.toString();
  }
}
