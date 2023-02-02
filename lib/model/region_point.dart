part of aspose_barcode_cloud.api;

class RegionPoint {
  RegionPoint();

  RegionPoint.fromJson(Map<String, dynamic> json) {
    X = json['X'];
    Y = json['Y'];
  }
  /* X-coordinate */
  int? X = null;

/* Y-coordinate */
  int? Y = null;

  @override
  String toString() => 'RegionPoint[X=$X, Y=$Y, ]';

  Map<String, dynamic> toJson() => {'X': X, 'Y': Y};

  static List<RegionPoint> listFromJson(List<dynamic> json) =>
      json.map((value) => new RegionPoint.fromJson(value)).toList();

  static Map<String, RegionPoint> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = new Map<String, RegionPoint>();
    if (json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new RegionPoint.fromJson(value));
    }
    return map;
  }
}
