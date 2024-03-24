// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package

/// Code16K parameters.
class Code16KParams {
  /// Height/Width ratio of 2D BarCode module.
  double? aspectRatio;

  /// Size of the left quiet zone in xDimension. Default value: 10, meaning if xDimension = 2px than left quiet zone will be 20px.
  int? quietZoneLeftCoef;

  /// Size of the right quiet zone in xDimension. Default value: 1, meaning if xDimension = 2px than right quiet zone will be 2px.
  int? quietZoneRightCoef;

  /// Constructor
  Code16KParams();

  @override
  String toString() {
    return 'Code16KParams[aspectRatio=$aspectRatio, quietZoneLeftCoef=$quietZoneLeftCoef, quietZoneRightCoef=$quietZoneRightCoef, ]';
  }

  /// Creates a Code16KParams instance from a JSON representation.
  Code16KParams.fromJson(Map<String, dynamic> json) {
    aspectRatio = json['aspectRatio']?.toDouble();
    quietZoneLeftCoef = json['quietZoneLeftCoef'];
    quietZoneRightCoef = json['quietZoneRightCoef'];
  }

  /// Returns a JSON representation of Code16KParams.
  Map<String, dynamic> toJson() {
    return {
      'AspectRatio': aspectRatio,
      'QuietZoneLeftCoef': quietZoneLeftCoef,
      'QuietZoneRightCoef': quietZoneRightCoef
    };
  }

  /// Converts a list of JSON objects to a list of Code16KParams instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of Code16KParams instances.
  static List<Code16KParams> listFromJson(List<dynamic> json) {
    return json.map((value) => Code16KParams.fromJson(value)).toList();
  }
}
