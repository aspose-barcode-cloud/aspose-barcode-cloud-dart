part of aspose_barcode_cloud.api;

// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
class BarcodeResponse {
  /* Barcode data. */
  String? barcodeValue = null;

/* Type of the barcode. */
  String? type = null;

/* Region with barcode. */
  List<RegionPoint>? region = [];

/* Checksum of barcode. */
  String? checksum = null;

  BarcodeResponse();

  @override
  String toString() {
    return 'BarcodeResponse[barcodeValue=$barcodeValue, type=$type, region=$region, checksum=$checksum, ]';
  }

  BarcodeResponse.fromJson(Map<String, dynamic> json) {
    barcodeValue = json['barcodeValue'];
    type = json['type'];
    region = RegionPoint.listFromJson(json['region']);
    checksum = json['checksum'];
  }

  Map<String, dynamic> toJson() {
    return {
      'BarcodeValue': barcodeValue,
      'Type': type,
      'Region': region,
      'Checksum': checksum
    };
  }

  static List<BarcodeResponse> listFromJson(List<dynamic> json) {
    return json.map((value) => new BarcodeResponse.fromJson(value)).toList();
  }

  static Map<String, BarcodeResponse> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = new Map<String, BarcodeResponse>();
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new BarcodeResponse.fromJson(value));
    }
    return map;
  }
}
