///
/// MaxiCodeMode: [Mode2, Mode3, Mode4, Mode5, Mode6]
class MaxiCodeMode {
  /// The underlying value of MaxiCodeMode enum.
  late final String _value;

  MaxiCodeMode._internal(this._value);

  ///
  static MaxiCodeMode mode2_ = MaxiCodeMode._internal("Mode2");

  ///
  static MaxiCodeMode mode3_ = MaxiCodeMode._internal("Mode3");

  ///
  static MaxiCodeMode mode4_ = MaxiCodeMode._internal("Mode4");

  ///
  static MaxiCodeMode mode5_ = MaxiCodeMode._internal("Mode5");

  ///
  static MaxiCodeMode mode6_ = MaxiCodeMode._internal("Mode6");

  /// Creates a MaxiCodeMode instance from a JSON representation.
  MaxiCodeMode.fromJson(dynamic data) {
    switch (data) {
      case "Mode2":
      case "Mode3":
      case "Mode4":
      case "Mode5":
      case "Mode6":
        _value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// Returns a JSON representation of MaxiCodeMode.
  String? toJson() {
    return _value;
  }

  @override
  String toString() {
    return _value.toString();
  }

  /// Converts a list of JSON objects to a list of MaxiCodeMode instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of MaxiCodeMode instances.
  static List<MaxiCodeMode> listFromJson(List<dynamic> json) {
    return json.map((value) => MaxiCodeMode.fromJson(value)).toList();
  }
}
