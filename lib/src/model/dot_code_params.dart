// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../../aspose_barcode_cloud.dart';

/// DotCode parameters.
class DotCodeParams {
  /// Height/Width ratio of 2D BarCode module.
  double? aspectRatio;

  /// Identifies columns count. Sum of the number of rows plus the number of columns of a DotCode symbol must be odd. Number of columns must be at least 5.
  int? columns;

  /// Identifies DotCode encode mode. Default value: Auto.
  DotCodeEncodeMode? encodeMode;

  /// Identifies ECI encoding. Used when DotCodeEncodeMode is Auto. Default value: ISO-8859-1.
  ECIEncodings? eCIEncoding;

  /// Indicates whether code is used for instruct reader to interpret the following data as instructions for initialization or reprogramming of the bar code reader. Default value is false.
  bool? isReaderInitialization;

  /// Identifies rows count. Sum of the number of rows plus the number of columns of a DotCode symbol must be odd. Number of rows must be at least 5.
  int? rows;

  /// Constructor
  DotCodeParams();

  @override
  String toString() {
    return 'DotCodeParams[aspectRatio=$aspectRatio, columns=$columns, encodeMode=$encodeMode, eCIEncoding=$eCIEncoding, isReaderInitialization=$isReaderInitialization, rows=$rows, ]';
  }

  /// Creates a DotCodeParams instance from a JSON representation.
  DotCodeParams.fromJson(Map<String, dynamic> json) {
    aspectRatio = json['aspectRatio']?.toDouble();
    columns = json['columns'];
    encodeMode = DotCodeEncodeMode.fromJson(json['encodeMode']);
    eCIEncoding = ECIEncodings.fromJson(json['eCIEncoding']);
    isReaderInitialization = json['isReaderInitialization'];
    rows = json['rows'];
  }

  /// Returns a JSON representation of DotCodeParams.
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

  /// Converts a list of JSON objects to a list of DotCodeParams instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of DotCodeParams instances.
  static List<DotCodeParams> listFromJson(List<dynamic> json) {
    return json.map((value) => DotCodeParams.fromJson(value)).toList();
  }
}
