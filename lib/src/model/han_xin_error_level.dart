///
/// HanXinErrorLevel: [L1, L2, L3, L4]
class HanXinErrorLevel {
  /// The underlying value of HanXinErrorLevel enum.
  late final String _value;

  HanXinErrorLevel._internal(this._value);

  ///
  // ignore: non_constant_identifier_names
  static final HanXinErrorLevel L1 = HanXinErrorLevel._internal("L1");

  ///
  // ignore: non_constant_identifier_names
  static final HanXinErrorLevel L2 = HanXinErrorLevel._internal("L2");

  ///
  // ignore: non_constant_identifier_names
  static final HanXinErrorLevel L3 = HanXinErrorLevel._internal("L3");

  ///
  // ignore: non_constant_identifier_names
  static final HanXinErrorLevel L4 = HanXinErrorLevel._internal("L4");

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
