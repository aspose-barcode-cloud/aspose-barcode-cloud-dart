///
/// EnableChecksum: [Default, Yes, No]
class EnableChecksum {
  /// The underlying value of EnableChecksum enum.
  late final String _value;

  EnableChecksum._internal(this._value);

  ///
  static EnableChecksum default_ = EnableChecksum._internal("Default");

  ///
  static EnableChecksum yes_ = EnableChecksum._internal("Yes");

  ///
  static EnableChecksum no_ = EnableChecksum._internal("No");

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
