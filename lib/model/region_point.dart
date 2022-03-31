part of aspose_barcode_cloud.api;

class RegionPoint {
  /* X-coordinate */
  int? X = null;

/* Y-coordinate */
  int? Y = null;

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
    return json.map((value) => new RegionPoint.fromJson(value)).toList();
  }

  static Map<String, RegionPoint> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RegionPoint>();
    if (json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new RegionPoint.fromJson(value));
    }
    return map;
  }
}
