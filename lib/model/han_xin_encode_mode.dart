part of aspose_barcode_cloud.api;

class HanXinEncodeMode {
  HanXinEncodeMode._internal(this.value);

  HanXinEncodeMode.fromJson(dynamic data) {
    switch (data) {
      case "Auto":
        value = data;
        break;
      case "Binary":
        value = data;
        break;
      case "ECI":
        value = data;
        break;
      case "Unicode":
        value = data;
        break;
      case "URI":
        value = data;
        break;
      case "Extended":
        value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// The underlying value of this enum member.
  String? value;

  ///
  static HanXinEncodeMode auto_ = HanXinEncodeMode._internal("Auto");

  ///
  static HanXinEncodeMode binary_ = HanXinEncodeMode._internal("Binary");

  ///
  static HanXinEncodeMode eCI_ = HanXinEncodeMode._internal("ECI");

  ///
  static HanXinEncodeMode unicode_ = HanXinEncodeMode._internal("Unicode");

  ///
  static HanXinEncodeMode uRI_ = HanXinEncodeMode._internal("URI");

  ///
  static HanXinEncodeMode extended_ = HanXinEncodeMode._internal("Extended");

  static dynamic encode(HanXinEncodeMode data) => data.value;

  String? toJson() => value;

  @override
  String toString() => value == null ? "null" : value.toString();
}
