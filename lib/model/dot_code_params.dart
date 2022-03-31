part of aspose_barcode_cloud.api;

class DotCodeParams {
  /* Height/Width ratio of 2D BarCode module. */
  double? aspectRatio = null;

/* Mask of Dotcode barcode. Default value: -1. */
  int? dotCodeMask = null;

  DotCodeParams();

  @override
  String toString() {
    return 'DotCodeParams[aspectRatio=$aspectRatio, dotCodeMask=$dotCodeMask, ]';
  }

  DotCodeParams.fromJson(Map<String, dynamic> json) {
    aspectRatio =
        json['aspectRatio'] == null ? null : json['aspectRatio'].toDouble();
    dotCodeMask = json['dotCodeMask'];
  }

  Map<String, dynamic> toJson() {
    return {'AspectRatio': aspectRatio, 'DotCodeMask': dotCodeMask};
  }

  static List<DotCodeParams> listFromJson(List<dynamic> json) {
    return json.map((value) => new DotCodeParams.fromJson(value)).toList();
  }

  static Map<String, DotCodeParams> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DotCodeParams>();
    if (json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new DotCodeParams.fromJson(value));
    }
    return map;
  }
}
