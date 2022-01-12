part of barcode.api;

class DataMatrixParams {
  /* Height/Width ratio of 2D BarCode module */
  double? aspectRatio = null;

/* Encoding of codetext. */
  String? textEncoding = null;

/* Columns count. */
  int? columns = null;

/* Datamatrix ECC type. Default value: DataMatrixEccType.Ecc200. */
  DataMatrixEccType? dataMatrixEcc = null;

/* Encode mode of Datamatrix barcode. Default value: DataMatrixEncodeMode.Auto. */
  DataMatrixEncodeMode? dataMatrixEncodeMode = null;

/* Rows count. */
  int? rows = null;

/* Macro Characters 05 and 06 values are used to obtain more compact encoding in special modes. Can be used only with DataMatrixEccType.Ecc200 or DataMatrixEccType.EccAuto. Cannot be used with EncodeTypes.GS1DataMatrix Default value: MacroCharacters.None. */
  MacroCharacter? macroCharacters = null;

  DataMatrixParams();

  @override
  String toString() {
    return 'DataMatrixParams[aspectRatio=$aspectRatio, textEncoding=$textEncoding, columns=$columns, dataMatrixEcc=$dataMatrixEcc, dataMatrixEncodeMode=$dataMatrixEncodeMode, rows=$rows, macroCharacters=$macroCharacters, ]';
  }

  DataMatrixParams.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    aspectRatio =
        json['aspectRatio'] == null ? null : json['aspectRatio'].toDouble();
    textEncoding = json['textEncoding'];
    columns = json['columns'];
    dataMatrixEcc = new DataMatrixEccType.fromJson(json['dataMatrixEcc']);
    dataMatrixEncodeMode =
        new DataMatrixEncodeMode.fromJson(json['dataMatrixEncodeMode']);
    rows = json['rows'];
    macroCharacters = new MacroCharacter.fromJson(json['macroCharacters']);
  }

  Map<String, dynamic> toJson() {
    return {
      'AspectRatio': aspectRatio,
      'TextEncoding': textEncoding,
      'Columns': columns,
      'DataMatrixEcc': dataMatrixEcc,
      'DataMatrixEncodeMode': dataMatrixEncodeMode,
      'Rows': rows,
      'MacroCharacters': macroCharacters
    };
  }

  static List<DataMatrixParams> listFromJson(List<dynamic> json) {
    return json == null
        ? []
        : json.map((value) => new DataMatrixParams.fromJson(value)).toList();
  }

  static Map<String, DataMatrixParams> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DataMatrixParams>();
    if (json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new DataMatrixParams.fromJson(value));
    }
    return map;
  }
}
