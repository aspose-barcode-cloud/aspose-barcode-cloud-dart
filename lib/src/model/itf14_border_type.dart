///
/// ITF14BorderType: [None, Frame, Bar, FrameOut, BarOut]
class ITF14BorderType {
  /// The underlying value of ITF14BorderType enum.
  late final String _value;

  ITF14BorderType._internal(this._value);

  ///
  static ITF14BorderType none_ = ITF14BorderType._internal("None");

  ///
  static ITF14BorderType frame_ = ITF14BorderType._internal("Frame");

  ///
  static ITF14BorderType bar_ = ITF14BorderType._internal("Bar");

  ///
  static ITF14BorderType frameOut_ = ITF14BorderType._internal("FrameOut");

  ///
  static ITF14BorderType barOut_ = ITF14BorderType._internal("BarOut");

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
