part of aspose_barcode_cloud.api;

class BarcodeResponseList {
  BarcodeResponseList();

  BarcodeResponseList.fromJson(Map<String, dynamic> json) {
    barcodes = BarcodeResponse.listFromJson(json['barcodes']);
  }
  /* List of barcodes which are present in image. */
  List<BarcodeResponse>? barcodes = [];

  @override
  String toString() => 'BarcodeResponseList[barcodes=$barcodes, ]';

  Map<String, dynamic> toJson() => {'Barcodes': barcodes};

  static List<BarcodeResponseList> listFromJson(List<dynamic> json) =>
      json.map((value) => new BarcodeResponseList.fromJson(value)).toList();

  static Map<String, BarcodeResponseList> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = new Map<String, BarcodeResponseList>();
    if (json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new BarcodeResponseList.fromJson(value));
    }
    return map;
  }
}
