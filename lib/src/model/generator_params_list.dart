// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../../aspose_barcode_cloud.dart';

/// Represents list of barcode generators
class GeneratorParamsList {
  /// List of barcode generators
  List<GeneratorParams>? barcodeBuilders = [];

  /// Shift step according to X axis
  int? xStep;

  /// Shift step according to Y axis
  int? yStep;

  /// Constructor
  GeneratorParamsList();

  @override
  String toString() {
    return 'GeneratorParamsList[barcodeBuilders=$barcodeBuilders, xStep=$xStep, yStep=$yStep, ]';
  }

  /// Creates a GeneratorParamsList instance from a JSON representation.
  GeneratorParamsList.fromJson(Map<String, dynamic> json) {
    barcodeBuilders = GeneratorParams.listFromJson(json['barcodeBuilders']);
    xStep = json['xStep'];
    yStep = json['yStep'];
  }

  /// Returns a JSON representation of GeneratorParamsList.
  Map<String, dynamic> toJson() {
    return {'BarcodeBuilders': barcodeBuilders, 'XStep': xStep, 'YStep': yStep};
  }

  /// Converts a list of JSON objects to a list of GeneratorParamsList instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of GeneratorParamsList instances.
  static List<GeneratorParamsList> listFromJson(List<dynamic> json) {
    return json.map((value) => GeneratorParamsList.fromJson(value)).toList();
  }
}
