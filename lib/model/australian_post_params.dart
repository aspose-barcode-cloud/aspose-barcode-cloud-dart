part of aspose_barcode_cloud.api;

class AustralianPostParams {
  /* Interpreting type for the Customer Information of AustralianPost, default to CustomerInformationInterpretingType.Other\" */
  CustomerInformationInterpretingType? encodingTable = null;

/* Short bar's height of AustralianPost barcode. */
  double? shortBarHeight = null;

  AustralianPostParams();

  @override
  String toString() {
    return 'AustralianPostParams[encodingTable=$encodingTable, shortBarHeight=$shortBarHeight, ]';
  }

  AustralianPostParams.fromJson(Map<String, dynamic> json) {
    encodingTable =
        new CustomerInformationInterpretingType.fromJson(json['encodingTable']);
    shortBarHeight = json['shortBarHeight'] == null
        ? null
        : json['shortBarHeight'].toDouble();
  }

  Map<String, dynamic> toJson() {
    return {'EncodingTable': encodingTable, 'ShortBarHeight': shortBarHeight};
  }

  static List<AustralianPostParams> listFromJson(List<dynamic> json) {
    return json
        .map((value) => new AustralianPostParams.fromJson(value))
        .toList();
  }

  static Map<String, AustralianPostParams> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AustralianPostParams>();
    if (json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new AustralianPostParams.fromJson(value));
    }
    return map;
  }
}
