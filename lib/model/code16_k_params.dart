part of aspose_barcode_cloud.api;

class Code16KParams {
  Code16KParams();

  Code16KParams.fromJson(Map<String, dynamic> json) {
    aspectRatio =
        json['aspectRatio'] == null ? null : json['aspectRatio'].toDouble();
    quietZoneLeftCoef = json['quietZoneLeftCoef'];
    quietZoneRightCoef = json['quietZoneRightCoef'];
  }
  /* Height/Width ratio of 2D BarCode module. */
  double? aspectRatio = null;

/* Size of the left quiet zone in xDimension. Default value: 10, meaning if xDimension = 2px than left quiet zone will be 20px. */
  int? quietZoneLeftCoef = null;

/* Size of the right quiet zone in xDimension. Default value: 1, meaning if xDimension = 2px than right quiet zone will be 2px. */
  int? quietZoneRightCoef = null;

  @override
  String toString() =>
      'Code16KParams[aspectRatio=$aspectRatio, quietZoneLeftCoef=$quietZoneLeftCoef, quietZoneRightCoef=$quietZoneRightCoef, ]';

  Map<String, dynamic> toJson() => {
        'AspectRatio': aspectRatio,
        'QuietZoneLeftCoef': quietZoneLeftCoef,
        'QuietZoneRightCoef': quietZoneRightCoef
      };

  static List<Code16KParams> listFromJson(List<dynamic> json) =>
      json.map((value) => new Code16KParams.fromJson(value)).toList();

  static Map<String, Code16KParams> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = new Map<String, Code16KParams>();
    if (json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Code16KParams.fromJson(value));
    }
    return map;
  }
}
