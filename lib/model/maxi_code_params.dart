part of barcode.api;

class MaxiCodeParams {
  /* Height/Width ratio of 2D BarCode module. */
  double? aspectRatio = null;

/* MaxiCode encode mode. */
  int? encodeMode = null;

  MaxiCodeParams();

  @override
  String toString() {
    return 'MaxiCodeParams[aspectRatio=$aspectRatio, encodeMode=$encodeMode, ]';
  }

  MaxiCodeParams.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    aspectRatio =
        json['aspectRatio'] == null ? null : json['aspectRatio'].toDouble();
    encodeMode = json['encodeMode'];
  }

  Map<String, dynamic> toJson() {
    return {'AspectRatio': aspectRatio, 'EncodeMode': encodeMode};
  }

  static List<MaxiCodeParams> listFromJson(List<dynamic> json) {
    return json == null
        ? []
        : json.map((value) => new MaxiCodeParams.fromJson(value)).toList();
  }

  static Map<String, MaxiCodeParams> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MaxiCodeParams>();
    if (json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new MaxiCodeParams.fromJson(value));
    }
    return map;
  }
}
