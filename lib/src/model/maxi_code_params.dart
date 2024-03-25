// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../../aspose_barcode_cloud.dart';

/// MaxiCode parameters.
class MaxiCodeParams {
  /// Height/Width ratio of 2D BarCode module.
  double? aspectRatio;

  /// Mode for MaxiCode barcodes.
  MaxiCodeMode? mode;

  /// Encoding mode for MaxiCode barcodes.
  MaxiCodeEncodeMode? encodeMode;

  /// Constructor
  MaxiCodeParams();

  @override
  String toString() {
    return 'MaxiCodeParams[aspectRatio=$aspectRatio, mode=$mode, encodeMode=$encodeMode, ]';
  }

  /// Creates a MaxiCodeParams instance from a JSON representation.
  MaxiCodeParams.fromJson(Map<String, dynamic> json) {
    aspectRatio = json['aspectRatio']?.toDouble();
    mode = MaxiCodeMode.fromJson(json['mode']);
    encodeMode = MaxiCodeEncodeMode.fromJson(json['encodeMode']);
  }

  /// Returns a JSON representation of MaxiCodeParams.
  Map<String, dynamic> toJson() {
    return {'AspectRatio': aspectRatio, 'Mode': mode, 'EncodeMode': encodeMode};
  }

  /// Converts a list of JSON objects to a list of MaxiCodeParams instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of MaxiCodeParams instances.
  static List<MaxiCodeParams> listFromJson(List<dynamic> json) {
    return json.map((value) => MaxiCodeParams.fromJson(value)).toList();
  }
}
