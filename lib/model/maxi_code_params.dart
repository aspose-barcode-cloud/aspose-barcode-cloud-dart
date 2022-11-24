part of aspose_barcode_cloud.api;

class MaxiCodeParams {
  /* Height/Width ratio of 2D BarCode module. */
  double? aspectRatio = null;

/* Encoding mode for MaxiCode barcodes. */
  MaxiCodeMode? mode = null;

  MaxiCodeParams();

  @override
  String toString() {
    return 'MaxiCodeParams[aspectRatio=$aspectRatio, mode=$mode, ]';
  }

  MaxiCodeParams.fromJson(Map<String, dynamic> json) {
    aspectRatio =
        json['aspectRatio'] == null ? null : json['aspectRatio'].toDouble();
    mode = new MaxiCodeMode.fromJson(json['mode']);
  }

  Map<String, dynamic> toJson() {
    return {'AspectRatio': aspectRatio, 'Mode': mode};
  }

  static List<MaxiCodeParams> listFromJson(List<dynamic> json) {
    return json.map((value) => new MaxiCodeParams.fromJson(value)).toList();
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
