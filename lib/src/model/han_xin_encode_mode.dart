class HanXinEncodeMode {
  /// The underlying value of this enum member.
  String? value;

  HanXinEncodeMode._internal(this.value);

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

  static dynamic encode(HanXinEncodeMode data) {
    return data.value;
  }

  String? toJson() {
    return value;
  }

  String toString() {
    return value == null ? "null" : value.toString();
  }

  static List<HanXinEncodeMode> listFromJson(List<dynamic> json) {
    return json.map((value) => HanXinEncodeMode.fromJson(value)).toList();
  }
}
