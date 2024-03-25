// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package

/// Wrapper around Drawing.Point for proper specification.
class RegionPoint {
  /// X-coordinate
  int? X;

  /// Y-coordinate
  int? Y;

  /// Constructor
  RegionPoint();

  @override
  String toString() {
    return 'RegionPoint[X=$X, Y=$Y, ]';
  }

  /// Creates a RegionPoint instance from a JSON representation.
  RegionPoint.fromJson(Map<String, dynamic> json) {
    X = json['X'];
    Y = json['Y'];
  }

  /// Returns a JSON representation of RegionPoint.
  Map<String, dynamic> toJson() {
    return {'X': X, 'Y': Y};
  }

  /// Converts a list of JSON objects to a list of RegionPoint instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of RegionPoint instances.
  static List<RegionPoint> listFromJson(List<dynamic> json) {
    return json.map((value) => RegionPoint.fromJson(value)).toList();
  }
}
