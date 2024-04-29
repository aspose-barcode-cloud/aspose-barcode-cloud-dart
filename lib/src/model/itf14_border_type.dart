///
/// ITF14BorderType: [None, Frame, Bar, FrameOut, BarOut]
class ITF14BorderType {
  /// The underlying value of ITF14BorderType enum.
  late final String _value;

  ITF14BorderType._internal(this._value);

  ///
  // ignore: non_constant_identifier_names
  static final ITF14BorderType None = ITF14BorderType._internal("None");

  ///
  // ignore: non_constant_identifier_names
  static final ITF14BorderType Frame = ITF14BorderType._internal("Frame");

  ///
  // ignore: non_constant_identifier_names
  static final ITF14BorderType Bar = ITF14BorderType._internal("Bar");

  ///
  // ignore: non_constant_identifier_names
  static final ITF14BorderType FrameOut = ITF14BorderType._internal("FrameOut");

  ///
  // ignore: non_constant_identifier_names
  static final ITF14BorderType BarOut = ITF14BorderType._internal("BarOut");

  /// Creates a ITF14BorderType instance from a JSON representation.
  ITF14BorderType.fromJson(dynamic data) {
    switch (data) {
      case "None":
      case "Frame":
      case "Bar":
      case "FrameOut":
      case "BarOut":
        _value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// Returns a JSON representation of ITF14BorderType.
  String? toJson() {
    return _value;
  }

  @override
  String toString() {
    return _value.toString();
  }

  /// Converts a list of JSON objects to a list of ITF14BorderType instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of ITF14BorderType instances.
  static List<ITF14BorderType> listFromJson(List<dynamic> json) {
    return json.map((value) => ITF14BorderType.fromJson(value)).toList();
  }
}
