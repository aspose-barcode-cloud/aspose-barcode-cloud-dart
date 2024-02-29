class HanXinErrorLevel {
  /// The underlying value of this enum member.
  String? value;

  HanXinErrorLevel._internal(this.value);

  ///
  static HanXinErrorLevel l1_ = HanXinErrorLevel._internal("L1");

  ///
  static HanXinErrorLevel l2_ = HanXinErrorLevel._internal("L2");

  ///
  static HanXinErrorLevel l3_ = HanXinErrorLevel._internal("L3");

  ///
  static HanXinErrorLevel l4_ = HanXinErrorLevel._internal("L4");

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

  static dynamic encode(HanXinErrorLevel data) {
    return data.value;
  }

  String? toJson() {
    return value;
  }

  @override
  String toString() {
    return value == null ? "null" : value.toString();
  }

  static List<HanXinErrorLevel> listFromJson(List<dynamic> json) {
    return json.map((value) => HanXinErrorLevel.fromJson(value)).toList();
  }
}
