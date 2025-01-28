// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package

/// Wrapper around Drawing.Point for proper specification.
class RegionPoint {
  /// X-coordinate

  int? x;

  /// Y-coordinate

  int? y;

  /// Constructor
  RegionPoint([this.x, this.y]);

  @override
  String toString() {
    return 'RegionPoint[x=$x, y=$y, ]';
  }

  /// Creates a RegionPoint instance from a JSON representation.
  RegionPoint.fromJson(Map<String, dynamic> json) {
    x = json['x'];
    y = json['y'];
  }

  /// Returns a JSON representation of RegionPoint.
  Map<String, dynamic> toJson() {
    return {'x': x, 'y': y};
  }

  /// Converts a list of JSON objects to a list of RegionPoint instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of RegionPoint instances.
  static List<RegionPoint> listFromJson(List<dynamic> json) {
    return json.map((value) => RegionPoint.fromJson(value)).toList();
  }
}
