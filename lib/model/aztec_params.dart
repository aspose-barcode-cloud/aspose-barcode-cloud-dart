part of aspose_barcode_cloud.api;

class AztecParams {
  AztecParams();

  AztecParams.fromJson(Map<String, dynamic> json) {
    aspectRatio =
        json['aspectRatio'] == null ? null : json['aspectRatio'].toDouble();
    errorLevel = json['errorLevel'];
    symbolMode = new AztecSymbolMode.fromJson(json['symbolMode']);
    textEncoding = json['textEncoding'];
  }
  /* Height/Width ratio of 2D BarCode module. */
  double? aspectRatio = null;

/* Level of error correction of Aztec types of barcode. Value should between 10 to 95. */
  int? errorLevel = null;

/* Aztec Symbol mode. Default value: AztecSymbolMode.Auto. */
  AztecSymbolMode? symbolMode = null;

/* Sets the encoding of codetext. */
  String? textEncoding = null;

  @override
  String toString() =>
      'AztecParams[aspectRatio=$aspectRatio, errorLevel=$errorLevel, symbolMode=$symbolMode, textEncoding=$textEncoding, ]';

  Map<String, dynamic> toJson() => {
        'AspectRatio': aspectRatio,
        'ErrorLevel': errorLevel,
        'SymbolMode': symbolMode,
        'TextEncoding': textEncoding
      };

  static List<AztecParams> listFromJson(List<dynamic> json) =>
      json.map((value) => new AztecParams.fromJson(value)).toList();

  static Map<String, AztecParams> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = new Map<String, AztecParams>();
    if (json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new AztecParams.fromJson(value));
    }
    return map;
  }
}
