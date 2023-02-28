part of aspose_barcode_cloud.api;

class MaxiCodeParams {
  MaxiCodeParams();

  MaxiCodeParams.fromJson(Map<String, dynamic> json) {
    aspectRatio =
        json['aspectRatio'] == null ? null : json['aspectRatio'].toDouble();
    mode = new MaxiCodeMode.fromJson(json['mode']);
    encodeMode = new MaxiCodeEncodeMode.fromJson(json['encodeMode']);
  }
  /* Height/Width ratio of 2D BarCode module. */
  double? aspectRatio = null;

/* Mode for MaxiCode barcodes. */
  MaxiCodeMode? mode = null;

/* Encoding mode for MaxiCode barcodes. */
  MaxiCodeEncodeMode? encodeMode = null;

  @override
  String toString() =>
      'MaxiCodeParams[aspectRatio=$aspectRatio, mode=$mode, encodeMode=$encodeMode, ]';

  Map<String, dynamic> toJson() =>
      {'AspectRatio': aspectRatio, 'Mode': mode, 'EncodeMode': encodeMode};

  static List<MaxiCodeParams> listFromJson(List<dynamic> json) =>
      json.map((value) => new MaxiCodeParams.fromJson(value)).toList();

  static Map<String, MaxiCodeParams> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = new Map<String, MaxiCodeParams>();
    if (json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new MaxiCodeParams.fromJson(value));
    }
    return map;
  }
}
