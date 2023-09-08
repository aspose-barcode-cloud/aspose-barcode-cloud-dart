part of aspose_barcode_cloud.api;

// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
class AztecParams {
  /* Height/Width ratio of 2D BarCode module. */
  double? aspectRatio = null;

/* Level of error correction of Aztec types of barcode. Value should between 10 to 95. */
  int? errorLevel = null;

/* Aztec Symbol mode. Default value: AztecSymbolMode.Auto. */
  AztecSymbolMode? symbolMode = null;

/* Sets the encoding of codetext. */
  String? textEncoding = null;

  AztecParams();

  @override
  String toString() {
    return 'AztecParams[aspectRatio=$aspectRatio, errorLevel=$errorLevel, symbolMode=$symbolMode, textEncoding=$textEncoding, ]';
  }

  AztecParams.fromJson(Map<String, dynamic> json) {
    aspectRatio =
        json['aspectRatio'] == null ? null : json['aspectRatio'].toDouble();
    errorLevel = json['errorLevel'];
    symbolMode = AztecSymbolMode.fromJson(json['symbolMode']);
    textEncoding = json['textEncoding'];
  }

  Map<String, dynamic> toJson() {
    return {
      'AspectRatio': aspectRatio,
      'ErrorLevel': errorLevel,
      'SymbolMode': symbolMode,
      'TextEncoding': textEncoding
    };
  }

  static List<AztecParams> listFromJson(List<dynamic> json) {
    return json.map((value) => AztecParams.fromJson(value)).toList();
  }

  static Map<String, AztecParams> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = Map<String, AztecParams>();
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = AztecParams.fromJson(value));
    }
    return map;
  }
}
