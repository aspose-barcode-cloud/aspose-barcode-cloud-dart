// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../../aspose_barcode_cloud.dart';

class PatchCodeParams {
  /* Specifies codetext for an extra QR barcode, when PatchCode is generated in page mode. */
  String? extraBarcodeText;

/* PatchCode format. Choose PatchOnly to generate single PatchCode. Use page format to generate Patch page with PatchCodes as borders. Default value: PatchFormat.PatchOnly */
  PatchFormat? patchFormat;

  PatchCodeParams();

  @override
  String toString() {
    return 'PatchCodeParams[extraBarcodeText=$extraBarcodeText, patchFormat=$patchFormat, ]';
  }

  PatchCodeParams.fromJson(Map<String, dynamic> json) {
    extraBarcodeText = json['extraBarcodeText'];
    patchFormat = PatchFormat.fromJson(json['patchFormat']);
  }

  Map<String, dynamic> toJson() {
    return {'ExtraBarcodeText': extraBarcodeText, 'PatchFormat': patchFormat};
  }

  static List<PatchCodeParams> listFromJson(List<dynamic> json) {
    return json.map((value) => PatchCodeParams.fromJson(value)).toList();
  }

  static Map<String, PatchCodeParams> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = <String, PatchCodeParams>{};
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = PatchCodeParams.fromJson(value));
    }
    return map;
  }
}
