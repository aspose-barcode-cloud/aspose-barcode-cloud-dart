part of aspose_barcode_cloud.api;

class PatchCodeParams {
  PatchCodeParams();

  PatchCodeParams.fromJson(Map<String, dynamic> json) {
    extraBarcodeText = json['extraBarcodeText'];
    patchFormat = new PatchFormat.fromJson(json['patchFormat']);
  }
  /* Specifies codetext for an extra QR barcode, when PatchCode is generated in page mode. */
  String? extraBarcodeText = null;

/* PatchCode format. Choose PatchOnly to generate single PatchCode. Use page format to generate Patch page with PatchCodes as borders. Default value: PatchFormat.PatchOnly */
  PatchFormat? patchFormat = null;

  @override
  String toString() =>
      'PatchCodeParams[extraBarcodeText=$extraBarcodeText, patchFormat=$patchFormat, ]';

  Map<String, dynamic> toJson() =>
      {'ExtraBarcodeText': extraBarcodeText, 'PatchFormat': patchFormat};

  static List<PatchCodeParams> listFromJson(List<dynamic> json) =>
      json.map((value) => new PatchCodeParams.fromJson(value)).toList();

  static Map<String, PatchCodeParams> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = new Map<String, PatchCodeParams>();
    if (json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new PatchCodeParams.fromJson(value));
    }
    return map;
  }
}
