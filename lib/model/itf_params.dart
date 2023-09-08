// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../api.dart';

class ITFParams {
  /* ITF border (bearer bar) thickness in Unit value. Default value: 12pt. */
  double? borderThickness = null;

/* Border type of ITF barcode. Default value: ITF14BorderType.Bar. */
  ITF14BorderType? borderType = null;

/* Size of the quiet zones in xDimension. Default value: 10, meaning if xDimension = 2px than quiet zones will be 20px. */
  int? quietZoneCoef = null;

  ITFParams();

  @override
  String toString() {
    return 'ITFParams[borderThickness=$borderThickness, borderType=$borderType, quietZoneCoef=$quietZoneCoef, ]';
  }

  ITFParams.fromJson(Map<String, dynamic> json) {
    borderThickness = json['borderThickness'] == null
        ? null
        : json['borderThickness'].toDouble();
    borderType = ITF14BorderType.fromJson(json['borderType']);
    quietZoneCoef = json['quietZoneCoef'];
  }

  Map<String, dynamic> toJson() {
    return {
      'BorderThickness': borderThickness,
      'BorderType': borderType,
      'QuietZoneCoef': quietZoneCoef
    };
  }

  static List<ITFParams> listFromJson(List<dynamic> json) {
    return json.map((value) => ITFParams.fromJson(value)).toList();
  }

  static Map<String, ITFParams> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = Map<String, ITFParams>();
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = ITFParams.fromJson(value));
    }
    return map;
  }
}
