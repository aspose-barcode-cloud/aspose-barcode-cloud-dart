part of barcode.api;

class BarcodeResponseList {
  /* List of barcodes which are present in image. */
  List<BarcodeResponse>? barcodes = [];

  BarcodeResponseList();

  @override
  String toString() {
    return 'BarcodeResponseList[barcodes=$barcodes, ]';
  }

  BarcodeResponseList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    barcodes = BarcodeResponse.listFromJson(json['barcodes']);
  }

  Map<String, dynamic> toJson() {
    return {'Barcodes': barcodes};
  }

  static List<BarcodeResponseList> listFromJson(List<dynamic> json) {
    return json == null
        ? []
        : json.map((value) => new BarcodeResponseList.fromJson(value)).toList();
  }

  static Map<String, BarcodeResponseList> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BarcodeResponseList>();
    if (json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new BarcodeResponseList.fromJson(value));
    }
    return map;
  }
}
