part of aspose_barcode_cloud.api;

class Code128Params {
  /* Encoding mode for Code128 barcodes. Code 128 specification Default value: Code128EncodeMode.Auto. */
  Code128EncodeMode? encodeMode = null;

  Code128Params();

  @override
  String toString() {
    return 'Code128Params[encodeMode=$encodeMode, ]';
  }

  Code128Params.fromJson(Map<String, dynamic> json) {
    encodeMode = new Code128EncodeMode.fromJson(json['encodeMode']);
  }

  Map<String, dynamic> toJson() {
    return {'EncodeMode': encodeMode};
  }

  static List<Code128Params> listFromJson(List<dynamic> json) {
    return json.map((value) => new Code128Params.fromJson(value)).toList();
  }

  static Map<String, Code128Params> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = new Map<String, Code128Params>();
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Code128Params.fromJson(value));
    }
    return map;
  }
}
