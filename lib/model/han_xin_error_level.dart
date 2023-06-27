part of aspose_barcode_cloud.api;

class HanXinErrorLevel {
  HanXinErrorLevel._internal(this.value);

  HanXinErrorLevel.fromJson(dynamic data) {
    switch (data) {
      case "L1":
        value = data;
        break;
      case "L2":
        value = data;
        break;
      case "L3":
        value = data;
        break;
      case "L4":
        value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// The underlying value of this enum member.
  String? value;

  ///
  static HanXinErrorLevel l1_ = HanXinErrorLevel._internal("L1");

  ///
  static HanXinErrorLevel l2_ = HanXinErrorLevel._internal("L2");

  ///
  static HanXinErrorLevel l3_ = HanXinErrorLevel._internal("L3");

  ///
  static HanXinErrorLevel l4_ = HanXinErrorLevel._internal("L4");

  static dynamic encode(HanXinErrorLevel data) => data.value;

  String? toJson() => value;

  @override
  String toString() => value == null ? "null" : value.toString();
}
