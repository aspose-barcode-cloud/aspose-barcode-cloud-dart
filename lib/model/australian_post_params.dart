part of aspose_barcode_cloud.api;

class AustralianPostParams {
  AustralianPostParams();

  AustralianPostParams.fromJson(Map<String, dynamic> json) {
    encodingTable =
        new CustomerInformationInterpretingType.fromJson(json['encodingTable']);
    shortBarHeight = json['shortBarHeight'] == null
        ? null
        : json['shortBarHeight'].toDouble();
  }
  /* Interpreting type for the Customer Information of AustralianPost, default to CustomerInformationInterpretingType.Other\" */
  CustomerInformationInterpretingType? encodingTable = null;

/* Short bar's height of AustralianPost barcode. */
  double? shortBarHeight = null;

  @override
  String toString() =>
      'AustralianPostParams[encodingTable=$encodingTable, shortBarHeight=$shortBarHeight, ]';

  Map<String, dynamic> toJson() =>
      {'EncodingTable': encodingTable, 'ShortBarHeight': shortBarHeight};

  static List<AustralianPostParams> listFromJson(List<dynamic> json) =>
      json.map((value) => new AustralianPostParams.fromJson(value)).toList();

  static Map<String, AustralianPostParams> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = new Map<String, AustralianPostParams>();
    if (json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new AustralianPostParams.fromJson(value));
    }
    return map;
  }
}
