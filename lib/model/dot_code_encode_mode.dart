part of aspose_barcode_cloud.api;

class DotCodeEncodeMode {
  DotCodeEncodeMode._internal(this.value);

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
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// The underlying value of this enum member.
  String? value;

  ///
  static DotCodeEncodeMode auto_ = DotCodeEncodeMode._internal("Auto");

  ///
  static DotCodeEncodeMode bytes_ = DotCodeEncodeMode._internal("Bytes");

  ///
  static DotCodeEncodeMode extendedCodetext_ =
      DotCodeEncodeMode._internal("ExtendedCodetext");

  static dynamic encode(DotCodeEncodeMode data) => data.value;

  String? toJson() => value;

  @override
  String toString() => value == null ? "null" : value.toString();
}
