part of aspose_barcode_cloud.api;

class GeneratorParamsList {
  /* List of barcode generators */
  List<GeneratorParams>? barcodeBuilders = [];

/* Shift step according to X axis */
  int? xStep = null;

/* Shift step according to Y axis */
  int? yStep = null;

  GeneratorParamsList();

  @override
  String toString() {
    return 'GeneratorParamsList[barcodeBuilders=$barcodeBuilders, xStep=$xStep, yStep=$yStep, ]';
  }

  GeneratorParamsList.fromJson(Map<String, dynamic> json) {
    barcodeBuilders = GeneratorParams.listFromJson(json['barcodeBuilders']);
    xStep = json['xStep'];
    yStep = json['yStep'];
  }

  Map<String, dynamic> toJson() {
    return {'BarcodeBuilders': barcodeBuilders, 'XStep': xStep, 'YStep': yStep};
  }

  static List<GeneratorParamsList> listFromJson(List<dynamic> json) {
    return json
        .map((value) => new GeneratorParamsList.fromJson(value))
        .toList();
  }

  static Map<String, GeneratorParamsList> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = new Map<String, GeneratorParamsList>();
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new GeneratorParamsList.fromJson(value));
    }
    return map;
  }
}
