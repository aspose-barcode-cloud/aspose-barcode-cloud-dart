part of aspose_barcode_cloud.api;

class BarcodeResponse {
  BarcodeResponse();

  BarcodeResponse.fromJson(Map<String, dynamic> json) {
    barcodeValue = json['barcodeValue'];
    type = json['type'];
    region = RegionPoint.listFromJson(json['region']);
    checksum = json['checksum'];
  }
  /* Barcode data. */
  String? barcodeValue = null;

/* Type of the barcode. */
  String? type = null;

/* Region with barcode. */
  List<RegionPoint>? region = [];

/* Checksum of barcode. */
  String? checksum = null;

  @override
  String toString() =>
      'BarcodeResponse[barcodeValue=$barcodeValue, type=$type, region=$region, checksum=$checksum, ]';

  Map<String, dynamic> toJson() => {
        'BarcodeValue': barcodeValue,
        'Type': type,
        'Region': region,
        'Checksum': checksum
      };

  static List<BarcodeResponse> listFromJson(List<dynamic> json) =>
      json.map((value) => new BarcodeResponse.fromJson(value)).toList();

  static Map<String, BarcodeResponse> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = new Map<String, BarcodeResponse>();
    if (json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new BarcodeResponse.fromJson(value));
    }
    return map;
  }
}
