/// Subset of GraphicsUnit.
/// AvailableGraphicsUnit: [Pixel, Point, Inch, Millimeter]
class AvailableGraphicsUnit {
  /// The underlying value of AvailableGraphicsUnit enum.
  late final String _value;

  AvailableGraphicsUnit._internal(this._value);

  /// Subset of GraphicsUnit.
  // ignore: non_constant_identifier_names
  static final AvailableGraphicsUnit Pixel =
      AvailableGraphicsUnit._internal("Pixel");

  /// Subset of GraphicsUnit.
  // ignore: non_constant_identifier_names
  static final AvailableGraphicsUnit Point =
      AvailableGraphicsUnit._internal("Point");

  /// Subset of GraphicsUnit.
  // ignore: non_constant_identifier_names
  static final AvailableGraphicsUnit Inch =
      AvailableGraphicsUnit._internal("Inch");

  /// Subset of GraphicsUnit.
  // ignore: non_constant_identifier_names
  static final AvailableGraphicsUnit Millimeter =
      AvailableGraphicsUnit._internal("Millimeter");

  /// Creates a AvailableGraphicsUnit instance from a JSON representation.
  AvailableGraphicsUnit.fromJson(dynamic data) {
    switch (data) {
      case "Pixel":
      case "Point":
      case "Inch":
      case "Millimeter":
        _value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// Returns a JSON representation of AvailableGraphicsUnit.
  String? toJson() {
    return _value;
  }

  @override
  String toString() {
    return _value.toString();
  }

  /// Converts a list of JSON objects to a list of AvailableGraphicsUnit instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of AvailableGraphicsUnit instances.
  static List<AvailableGraphicsUnit> listFromJson(List<dynamic> json) {
    return json.map((value) => AvailableGraphicsUnit.fromJson(value)).toList();
  }
}
