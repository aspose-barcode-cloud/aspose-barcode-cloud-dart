// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../../aspose_barcode_cloud.dart';

class MaxiCodeParams {
  /* Height/Width ratio of 2D BarCode module. */
  double? aspectRatio;

/* Mode for MaxiCode barcodes. */
  MaxiCodeMode? mode;

/* Encoding mode for MaxiCode barcodes. */
  MaxiCodeEncodeMode? encodeMode;

  MaxiCodeParams();

  @override
  String toString() {
    return 'MaxiCodeParams[aspectRatio=$aspectRatio, mode=$mode, encodeMode=$encodeMode, ]';
  }

  MaxiCodeParams.fromJson(Map<String, dynamic> json) {
    aspectRatio = json['aspectRatio']?.toDouble();
    mode = MaxiCodeMode.fromJson(json['mode']);
    encodeMode = MaxiCodeEncodeMode.fromJson(json['encodeMode']);
  }

  Map<String, dynamic> toJson() {
    return {'AspectRatio': aspectRatio, 'Mode': mode, 'EncodeMode': encodeMode};
  }

  static List<MaxiCodeParams> listFromJson(List<dynamic> json) {
    return json.map((value) => MaxiCodeParams.fromJson(value)).toList();
  }

  static Map<String, MaxiCodeParams> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = <String, MaxiCodeParams>{};
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MaxiCodeParams.fromJson(value));
    }
    return map;
  }
}
