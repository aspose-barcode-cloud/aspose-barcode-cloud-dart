// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../../aspose_barcode_cloud.dart';

class BarcodeResponse {
  /* Barcode data. */
  String? barcodeValue;

/* Type of the barcode. */
  String? type;

/* Region with barcode. */
  List<RegionPoint>? region = [];

/* Checksum of barcode. */
  String? checksum;

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
    return json.map((value) => BarcodeResponse.fromJson(value)).toList();
  }

  static Map<String, BarcodeResponse> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = <String, BarcodeResponse>{};
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = BarcodeResponse.fromJson(value));
    }
    return map;
  }
}
