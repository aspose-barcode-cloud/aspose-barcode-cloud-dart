part of aspose_barcode_cloud.api;

// ignore_for_file: non_constant_identifier_names
class BarcodeResponseList {
  /* List of barcodes which are present in image. */
  List<BarcodeResponse>? barcodes = [];

  BarcodeResponseList();

  @override
  String toString() {
    return 'BarcodeResponseList[barcodes=$barcodes, ]';
  }

  BarcodeResponseList.fromJson(Map<String, dynamic> json) {
    barcodes = BarcodeResponse.listFromJson(json['barcodes']);
  }

  Map<String, dynamic> toJson() {
    return {'Barcodes': barcodes};
  }

  static List<BarcodeResponseList> listFromJson(List<dynamic> json) {
    return json
        .map((value) => new BarcodeResponseList.fromJson(value))
        .toList();
  }

  static Map<String, BarcodeResponseList> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = new Map<String, BarcodeResponseList>();
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new BarcodeResponseList.fromJson(value));
    }
    return map;
  }
}
