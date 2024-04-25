///
/// EnableChecksum: [Default, Yes, No]
class EnableChecksum {
  /// The underlying value of EnableChecksum enum.
  late final String _value;

  EnableChecksum._internal(this._value);

  ///
  // ignore: non_constant_identifier_names
  static final EnableChecksum Default = EnableChecksum._internal("Default");

  ///
  // ignore: non_constant_identifier_names
  static final EnableChecksum Yes = EnableChecksum._internal("Yes");

  ///
  // ignore: non_constant_identifier_names
  static final EnableChecksum No = EnableChecksum._internal("No");

  /// Creates a EnableChecksum instance from a JSON representation.
  EnableChecksum.fromJson(dynamic data) {
    switch (data) {
      case "Default":
      case "Yes":
      case "No":
        _value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// Returns a JSON representation of EnableChecksum.
  String? toJson() {
    return _value;
  }

  @override
  String toString() {
    return _value.toString();
  }

  /// Converts a list of JSON objects to a list of EnableChecksum instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of EnableChecksum instances.
  static List<EnableChecksum> listFromJson(List<dynamic> json) {
    return json.map((value) => EnableChecksum.fromJson(value)).toList();
  }
}
