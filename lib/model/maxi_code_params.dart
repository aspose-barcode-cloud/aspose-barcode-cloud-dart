part of aspose_barcode_cloud.api;

class MaxiCodeParams {
  /* Height/Width ratio of 2D BarCode module. */
  double? aspectRatio = null;

/* Mode for MaxiCode barcodes. */
  MaxiCodeMode? mode = null;

/* Encoding mode for MaxiCode barcodes. */
  MaxiCodeEncodeMode? encodeMode = null;

  MaxiCodeParams();

  @override
  String toString() {
    return 'MaxiCodeParams[aspectRatio=$aspectRatio, mode=$mode, encodeMode=$encodeMode, ]';
  }

  MaxiCodeParams.fromJson(Map<String, dynamic> json) {
    aspectRatio =
        json['aspectRatio'] == null ? null : json['aspectRatio'].toDouble();
    mode = new MaxiCodeMode.fromJson(json['mode']);
    encodeMode = new MaxiCodeEncodeMode.fromJson(json['encodeMode']);
  }

  Map<String, dynamic> toJson() {
    return {'AspectRatio': aspectRatio, 'Mode': mode, 'EncodeMode': encodeMode};
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
