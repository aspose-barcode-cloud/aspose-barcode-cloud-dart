// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../../api.dart';

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
    return json.map((value) => BarcodeResponseList.fromJson(value)).toList();
  }

  static Map<String, BarcodeResponseList> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = Map<String, BarcodeResponseList>();
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = BarcodeResponseList.fromJson(value));
    }
    return map;
  }
}
