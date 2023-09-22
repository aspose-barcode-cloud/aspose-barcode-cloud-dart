// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../../aspose_barcode_cloud.dart';

class DotCodeParams {
  /* Height/Width ratio of 2D BarCode module. */
  double? aspectRatio = null;

/* Identifies columns count. Sum of the number of rows plus the number of columns of a DotCode symbol must be odd. Number of columns must be at least 5. */
  int? columns = null;

/* Identifies DotCode encode mode. Default value: Auto. */
  DotCodeEncodeMode? encodeMode = null;

/* Identifies ECI encoding. Used when DotCodeEncodeMode is Auto. Default value: ISO-8859-1. */
  ECIEncodings? eCIEncoding = null;

/* Indicates whether code is used for instruct reader to interpret the following data as instructions for initialization or reprogramming of the bar code reader. Default value is false. */
  bool? isReaderInitialization = null;

/* Identifies rows count. Sum of the number of rows plus the number of columns of a DotCode symbol must be odd. Number of rows must be at least 5. */
  int? rows = null;

  DotCodeParams();

  @override
  String toString() {
    return 'DotCodeParams[aspectRatio=$aspectRatio, columns=$columns, encodeMode=$encodeMode, eCIEncoding=$eCIEncoding, isReaderInitialization=$isReaderInitialization, rows=$rows, ]';
  }

  DotCodeParams.fromJson(Map<String, dynamic> json) {
    aspectRatio =
        json['aspectRatio'] == null ? null : json['aspectRatio'].toDouble();
    columns = json['columns'];
    encodeMode = DotCodeEncodeMode.fromJson(json['encodeMode']);
    eCIEncoding = ECIEncodings.fromJson(json['eCIEncoding']);
    isReaderInitialization = json['isReaderInitialization'];
    rows = json['rows'];
  }

  Map<String, dynamic> toJson() {
    return {
      'AspectRatio': aspectRatio,
      'Columns': columns,
      'EncodeMode': encodeMode,
      'ECIEncoding': eCIEncoding,
      'IsReaderInitialization': isReaderInitialization,
      'Rows': rows
    };
  }

  static List<DotCodeParams> listFromJson(List<dynamic> json) {
    return json.map((value) => DotCodeParams.fromJson(value)).toList();
  }

  static Map<String, DotCodeParams> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = Map<String, DotCodeParams>();
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = DotCodeParams.fromJson(value));
    }
    return map;
  }
}
