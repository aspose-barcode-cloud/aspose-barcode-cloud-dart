// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../../aspose_barcode_cloud.dart';

/// ITF parameters.
class ITFParams {
  /// ITF border (bearer bar) thickness in Unit value. Default value: 12pt.
  double? borderThickness;

  /// Border type of ITF barcode. Default value: ITF14BorderType.Bar.
  ITF14BorderType? borderType;

  /// Size of the quiet zones in xDimension. Default value: 10, meaning if xDimension = 2px than quiet zones will be 20px.
  int? quietZoneCoef;

  /// Constructor
  ITFParams();

  @override
  String toString() {
    return 'ITFParams[borderThickness=$borderThickness, borderType=$borderType, quietZoneCoef=$quietZoneCoef, ]';
  }

  /// Creates a ITFParams instance from a JSON representation.
  ITFParams.fromJson(Map<String, dynamic> json) {
    borderThickness = json['borderThickness']?.toDouble();
    borderType = ITF14BorderType.fromJson(json['borderType']);
    quietZoneCoef = json['quietZoneCoef'];
  }

  /// Returns a JSON representation of ITFParams.
  Map<String, dynamic> toJson() {
    return {
      'BorderThickness': borderThickness,
      'BorderType': borderType,
      'QuietZoneCoef': quietZoneCoef
    };
  }

  /// Converts a list of JSON objects to a list of ITFParams instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of ITFParams instances.
  static List<ITFParams> listFromJson(List<dynamic> json) {
    return json.map((value) => ITFParams.fromJson(value)).toList();
  }
}
