///
/// HanXinEncodeMode: [Auto, Binary, ECI, Unicode, URI, Extended]
class HanXinEncodeMode {
  /// The underlying value of HanXinEncodeMode enum.
  late final String _value;

  HanXinEncodeMode._internal(this._value);

  ///
  // ignore: non_constant_identifier_names
  static final HanXinEncodeMode Auto = HanXinEncodeMode._internal("Auto");

  ///
  // ignore: non_constant_identifier_names
  static final HanXinEncodeMode Binary = HanXinEncodeMode._internal("Binary");

  ///
  // ignore: non_constant_identifier_names
  static final HanXinEncodeMode ECI = HanXinEncodeMode._internal("ECI");

  ///
  // ignore: non_constant_identifier_names
  static final HanXinEncodeMode Unicode = HanXinEncodeMode._internal("Unicode");

  ///
  // ignore: non_constant_identifier_names
  static final HanXinEncodeMode URI = HanXinEncodeMode._internal("URI");

  ///
  // ignore: non_constant_identifier_names
  static final HanXinEncodeMode Extended =
      HanXinEncodeMode._internal("Extended");

  /// Creates a HanXinEncodeMode instance from a JSON representation.
  HanXinEncodeMode.fromJson(dynamic data) {
    switch (data) {
      case "Auto":
      case "Binary":
      case "ECI":
      case "Unicode":
      case "URI":
      case "Extended":
        _value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// Returns a JSON representation of HanXinEncodeMode.
  String? toJson() {
    return _value;
  }

  @override
  String toString() {
    return _value.toString();
  }

  /// Converts a list of JSON objects to a list of HanXinEncodeMode instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of HanXinEncodeMode instances.
  static List<HanXinEncodeMode> listFromJson(List<dynamic> json) {
    return json.map((value) => HanXinEncodeMode.fromJson(value)).toList();
  }
}
