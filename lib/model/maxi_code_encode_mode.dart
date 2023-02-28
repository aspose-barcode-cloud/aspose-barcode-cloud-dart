part of aspose_barcode_cloud.api;

class MaxiCodeEncodeMode {
  MaxiCodeEncodeMode._internal(this.value);

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
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// The underlying value of this enum member.
  String? value;

  ///
  static MaxiCodeEncodeMode auto_ = MaxiCodeEncodeMode._internal("Auto");

  ///
  static MaxiCodeEncodeMode bytes_ = MaxiCodeEncodeMode._internal("Bytes");

  ///
  static MaxiCodeEncodeMode extendedCodetext_ =
      MaxiCodeEncodeMode._internal("ExtendedCodetext");

  static dynamic encode(MaxiCodeEncodeMode data) => data.value;

  String? toJson() => value;

  @override
  String toString() => value == null ? "null" : value.toString();
}
