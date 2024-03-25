///
/// HanXinErrorLevel: [L1, L2, L3, L4]
class HanXinErrorLevel {
  /// The underlying value of HanXinErrorLevel enum.
  late final String _value;

  HanXinErrorLevel._internal(this._value);

  ///
  static HanXinErrorLevel l1_ = HanXinErrorLevel._internal("L1");

  ///
  static HanXinErrorLevel l2_ = HanXinErrorLevel._internal("L2");

  ///
  static HanXinErrorLevel l3_ = HanXinErrorLevel._internal("L3");

  ///
  static HanXinErrorLevel l4_ = HanXinErrorLevel._internal("L4");

  /// Creates a HanXinErrorLevel instance from a JSON representation.
  HanXinErrorLevel.fromJson(dynamic data) {
    switch (data) {
      case "L1":
      case "L2":
      case "L3":
      case "L4":
        _value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// Returns a JSON representation of HanXinErrorLevel.
  String? toJson() {
    return _value;
  }

  @override
  String toString() {
    return _value.toString();
  }

  /// Converts a list of JSON objects to a list of HanXinErrorLevel instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of HanXinErrorLevel instances.
  static List<HanXinErrorLevel> listFromJson(List<dynamic> json) {
    return json.map((value) => HanXinErrorLevel.fromJson(value)).toList();
  }
}
