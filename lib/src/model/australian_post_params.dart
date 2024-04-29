// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../../aspose_barcode_cloud.dart';

/// AustralianPost barcode parameters.
class AustralianPostParams {
  /// Interpreting type for the Customer Information of AustralianPost, default to CustomerInformationInterpretingType.Other
  CustomerInformationInterpretingType? encodingTable;

  /// Short bar's height of AustralianPost barcode.
  double? shortBarHeight;

  /// Constructor
  AustralianPostParams();

  @override
  String toString() {
    return 'AustralianPostParams[encodingTable=$encodingTable, shortBarHeight=$shortBarHeight, ]';
  }

  /// Creates a AustralianPostParams instance from a JSON representation.
  AustralianPostParams.fromJson(Map<String, dynamic> json) {
    encodingTable =
        CustomerInformationInterpretingType.fromJson(json['encodingTable']);
    shortBarHeight = json['shortBarHeight']?.toDouble();
  }

  /// Returns a JSON representation of AustralianPostParams.
  Map<String, dynamic> toJson() {
    return {'EncodingTable': encodingTable, 'ShortBarHeight': shortBarHeight};
  }

  /// Converts a list of JSON objects to a list of AustralianPostParams instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of AustralianPostParams instances.
  static List<AustralianPostParams> listFromJson(List<dynamic> json) {
    return json.map((value) => AustralianPostParams.fromJson(value)).toList();
  }
}
