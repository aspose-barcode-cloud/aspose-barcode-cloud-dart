// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../../aspose_barcode_cloud.dart';

/// Code128 params.
class Code128Params {
  /// Encoding mode for Code128 barcodes. Code 128 specification Default value: Code128EncodeMode.Auto.
  Code128EncodeMode? encodeMode;

  /// Constructor
  Code128Params();

  @override
  String toString() {
    return 'Code128Params[encodeMode=$encodeMode, ]';
  }

  /// Creates a Code128Params instance from a JSON representation.
  Code128Params.fromJson(Map<String, dynamic> json) {
    encodeMode = Code128EncodeMode.fromJson(json['encodeMode']);
  }

  /// Returns a JSON representation of Code128Params.
  Map<String, dynamic> toJson() {
    return {'EncodeMode': encodeMode};
  }

  /// Converts a list of JSON objects to a list of Code128Params instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of Code128Params instances.
  static List<Code128Params> listFromJson(List<dynamic> json) {
    return json.map((value) => Code128Params.fromJson(value)).toList();
  }
}
