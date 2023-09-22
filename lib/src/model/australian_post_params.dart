// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../../aspose_barcode_cloud.dart';

class AustralianPostParams {
  /* Interpreting type for the Customer Information of AustralianPost, default to CustomerInformationInterpretingType.Other\" */
  CustomerInformationInterpretingType? encodingTable = null;

/* Short bar's height of AustralianPost barcode. */
  double? shortBarHeight = null;

  AustralianPostParams();

  @override
  String toString() {
    return 'AustralianPostParams[encodingTable=$encodingTable, shortBarHeight=$shortBarHeight, ]';
  }

  AustralianPostParams.fromJson(Map<String, dynamic> json) {
    encodingTable =
        CustomerInformationInterpretingType.fromJson(json['encodingTable']);
    shortBarHeight = json['shortBarHeight'] == null
        ? null
        : json['shortBarHeight'].toDouble();
  }

  Map<String, dynamic> toJson() {
    return {'EncodingTable': encodingTable, 'ShortBarHeight': shortBarHeight};
  }

  static List<AustralianPostParams> listFromJson(List<dynamic> json) {
    return json.map((value) => AustralianPostParams.fromJson(value)).toList();
  }

  static Map<String, AustralianPostParams> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = Map<String, AustralianPostParams>();
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = AustralianPostParams.fromJson(value));
    }
    return map;
  }
}
