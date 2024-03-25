// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../../aspose_barcode_cloud.dart';

/// DataMatrix parameters.
class DataMatrixParams {
  /// Height/Width ratio of 2D BarCode module
  double? aspectRatio;

  /// DEPRECATED: This property is obsolete and will be removed in future releases. Unicode symbols detection and encoding will be processed in Auto mode with Extended Channel Interpretation charset designator. Using of own encodings requires manual CodeText encoding into byte[] array.  Sets the encoding of codetext.
  String? textEncoding;

  /// DEPRECATED: Will be replaced with 'DataMatrix.Version' in the next release  Columns count.
  int? columns;

  /// Datamatrix ECC type. Default value: DataMatrixEccType.Ecc200.
  DataMatrixEccType? dataMatrixEcc;

  /// Encode mode of Datamatrix barcode. Default value: DataMatrixEncodeMode.Auto.
  DataMatrixEncodeMode? dataMatrixEncodeMode;

  /// DEPRECATED: Will be replaced with 'DataMatrix.Version' in the next release  Rows count.
  int? rows;

  /// Macro Characters 05 and 06 values are used to obtain more compact encoding in special modes. Can be used only with DataMatrixEccType.Ecc200 or DataMatrixEccType.EccAuto. Cannot be used with EncodeTypes.GS1DataMatrix Default value: MacroCharacters.None.
  MacroCharacter? macroCharacters;

  /// Sets a Datamatrix symbol size. Default value: DataMatrixVersion.Auto.
  DataMatrixVersion? version;

  /// Constructor
  DataMatrixParams();

  @override
  String toString() {
    return 'DataMatrixParams[aspectRatio=$aspectRatio, textEncoding=$textEncoding, columns=$columns, dataMatrixEcc=$dataMatrixEcc, dataMatrixEncodeMode=$dataMatrixEncodeMode, rows=$rows, macroCharacters=$macroCharacters, version=$version, ]';
  }

  /// Creates a DataMatrixParams instance from a JSON representation.
  DataMatrixParams.fromJson(Map<String, dynamic> json) {
    aspectRatio = json['aspectRatio']?.toDouble();
    textEncoding = json['textEncoding'];
    columns = json['columns'];
    dataMatrixEcc = DataMatrixEccType.fromJson(json['dataMatrixEcc']);
    dataMatrixEncodeMode =
        DataMatrixEncodeMode.fromJson(json['dataMatrixEncodeMode']);
    rows = json['rows'];
    macroCharacters = MacroCharacter.fromJson(json['macroCharacters']);
    version = DataMatrixVersion.fromJson(json['version']);
  }

  /// Returns a JSON representation of DataMatrixParams.
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

  /// Converts a list of JSON objects to a list of DataMatrixParams instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of DataMatrixParams instances.
  static List<DataMatrixParams> listFromJson(List<dynamic> json) {
    return json.map((value) => DataMatrixParams.fromJson(value)).toList();
  }
}
