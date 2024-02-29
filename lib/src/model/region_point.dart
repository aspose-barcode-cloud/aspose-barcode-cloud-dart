// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package

class RegionPoint {
  /* X-coordinate */
  int? X;

/* Y-coordinate */
  int? Y;

  RegionPoint();

  @override
  String toString() {
    return 'RegionPoint[X=$X, Y=$Y, ]';
  }

  RegionPoint.fromJson(Map<String, dynamic> json) {
    X = json['X'];
    Y = json['Y'];
  }

  Map<String, dynamic> toJson() {
    return {'X': X, 'Y': Y};
  }

  static List<RegionPoint> listFromJson(List<dynamic> json) {
    return json.map((value) => RegionPoint.fromJson(value)).toList();
  }

  static Map<String, RegionPoint> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = <String, RegionPoint>{};
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = RegionPoint.fromJson(value));
    }
    return map;
  }
}
