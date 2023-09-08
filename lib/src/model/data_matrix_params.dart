// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../../aspose_barcode_cloud.dart';

class DataMatrixParams {
  /* Height/Width ratio of 2D BarCode module */
  double? aspectRatio = null;

/* Encoding of codetext. */
  String? textEncoding = null;

/* DEPRECATED: Will be replaced with 'DataMatrix.Version' in the next release  Columns count. */
  @Deprecated(
      "Will be replaced with 'DataMatrix.Version' in the next release  Columns count. ")
  int? columns = null;

/* Datamatrix ECC type. Default value: DataMatrixEccType.Ecc200. */
  DataMatrixEccType? dataMatrixEcc = null;

/* Encode mode of Datamatrix barcode. Default value: DataMatrixEncodeMode.Auto. */
  DataMatrixEncodeMode? dataMatrixEncodeMode = null;

/* DEPRECATED: Will be replaced with 'DataMatrix.Version' in the next release  Rows count. */
  @Deprecated(
      "Will be replaced with 'DataMatrix.Version' in the next release  Rows count. ")
  int? rows = null;

/* Macro Characters 05 and 06 values are used to obtain more compact encoding in special modes. Can be used only with DataMatrixEccType.Ecc200 or DataMatrixEccType.EccAuto. Cannot be used with EncodeTypes.GS1DataMatrix Default value: MacroCharacters.None. */
  MacroCharacter? macroCharacters = null;

/* Sets a Datamatrix symbol size. Default value: DataMatrixVersion.Auto. */
  DataMatrixVersion? version = null;

  DataMatrixParams();

  @override
  String toString() {
    return 'DataMatrixParams[aspectRatio=$aspectRatio, textEncoding=$textEncoding, columns=$columns, dataMatrixEcc=$dataMatrixEcc, dataMatrixEncodeMode=$dataMatrixEncodeMode, rows=$rows, macroCharacters=$macroCharacters, version=$version, ]';
  }

  DataMatrixParams.fromJson(Map<String, dynamic> json) {
    aspectRatio =
        json['aspectRatio'] == null ? null : json['aspectRatio'].toDouble();
    textEncoding = json['textEncoding'];
    columns = json['columns'];
    dataMatrixEcc = DataMatrixEccType.fromJson(json['dataMatrixEcc']);
    dataMatrixEncodeMode =
        DataMatrixEncodeMode.fromJson(json['dataMatrixEncodeMode']);
    rows = json['rows'];
    macroCharacters = MacroCharacter.fromJson(json['macroCharacters']);
    version = DataMatrixVersion.fromJson(json['version']);
  }

  Map<String, dynamic> toJson() {
    return {
      'AspectRatio': aspectRatio,
      'TextEncoding': textEncoding,
      'Columns': columns,
      'DataMatrixEcc': dataMatrixEcc,
      'DataMatrixEncodeMode': dataMatrixEncodeMode,
      'Rows': rows,
      'MacroCharacters': macroCharacters,
      'Version': version
    };
  }

  static List<DataMatrixParams> listFromJson(List<dynamic> json) {
    return json.map((value) => DataMatrixParams.fromJson(value)).toList();
  }

  static Map<String, DataMatrixParams> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = Map<String, DataMatrixParams>();
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = DataMatrixParams.fromJson(value));
    }
    return map;
  }
}
