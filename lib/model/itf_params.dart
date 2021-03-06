part of aspose_barcode_cloud.api;

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
    borderType = new ITF14BorderType.fromJson(json['borderType']);
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
    return json.map((value) => new ITFParams.fromJson(value)).toList();
  }

  static Map<String, ITFParams> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ITFParams>();
    if (json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ITFParams.fromJson(value));
    }
    return map;
  }
}
