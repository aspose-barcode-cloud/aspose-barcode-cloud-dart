// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../../aspose_barcode_cloud.dart';

/// PatchCode parameters.
class PatchCodeParams {
  /// Specifies codetext for an extra QR barcode, when PatchCode is generated in page mode.
  String? extraBarcodeText;

  /// PatchCode format. Choose PatchOnly to generate single PatchCode. Use page format to generate Patch page with PatchCodes as borders. Default value: PatchFormat.PatchOnly
  PatchFormat? patchFormat;

  /// Constructor
  PatchCodeParams();

  @override
  String toString() {
    return 'PatchCodeParams[extraBarcodeText=$extraBarcodeText, patchFormat=$patchFormat, ]';
  }

  /// Creates a PatchCodeParams instance from a JSON representation.
  PatchCodeParams.fromJson(Map<String, dynamic> json) {
    extraBarcodeText = json['extraBarcodeText'];
    patchFormat = PatchFormat.fromJson(json['patchFormat']);
  }

  /// Returns a JSON representation of PatchCodeParams.
  Map<String, dynamic> toJson() {
    return {'ExtraBarcodeText': extraBarcodeText, 'PatchFormat': patchFormat};
  }

  /// Converts a list of JSON objects to a list of PatchCodeParams instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of PatchCodeParams instances.
  static List<PatchCodeParams> listFromJson(List<dynamic> json) {
    return json.map((value) => PatchCodeParams.fromJson(value)).toList();
  }
}
