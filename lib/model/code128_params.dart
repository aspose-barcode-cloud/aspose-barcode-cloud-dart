part of aspose_barcode_cloud.api;

class Code128Params {
  Code128Params();

  Code128Params.fromJson(Map<String, dynamic> json) {
    encodeMode = new Code128EncodeMode.fromJson(json['encodeMode']);
  }
  /* Encoding mode for Code128 barcodes. Code 128 specification Default value: Code128EncodeMode.Auto. */
  Code128EncodeMode? encodeMode = null;

  @override
  String toString() => 'Code128Params[encodeMode=$encodeMode, ]';

  Map<String, dynamic> toJson() => {'EncodeMode': encodeMode};

  static List<Code128Params> listFromJson(List<dynamic> json) =>
      json.map((value) => new Code128Params.fromJson(value)).toList();

  static Map<String, Code128Params> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = new Map<String, Code128Params>();
    if (json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Code128Params.fromJson(value));
    }
    return map;
  }
}
