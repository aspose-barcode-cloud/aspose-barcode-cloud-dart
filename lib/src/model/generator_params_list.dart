// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../../aspose_barcode_cloud.dart';

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
    return json.map((value) => GeneratorParamsList.fromJson(value)).toList();
  }

  static Map<String, GeneratorParamsList> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = Map<String, GeneratorParamsList>();
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = GeneratorParamsList.fromJson(value));
    }
    return map;
  }
}
