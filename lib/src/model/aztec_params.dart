// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../../aspose_barcode_cloud.dart';

/// Aztec parameters.
class AztecParams {
  /// Height/Width ratio of 2D BarCode module.
  double? aspectRatio;

  /// Level of error correction of Aztec types of barcode. Value should between 10 to 95.
  int? errorLevel;

  /// Aztec Symbol mode. Default value: AztecSymbolMode.Auto.
  AztecSymbolMode? symbolMode;

  /// DEPRECATED: This property is obsolete and will be removed in future releases. Unicode symbols detection and encoding will be processed in Auto mode with Extended Channel Interpretation charset designator. Using of own encodings requires manual CodeText encoding into byte[] array.  Sets the encoding of codetext.
  String? textEncoding;

  /// Encoding mode for Aztec barcodes. Default value: Auto
  AztecEncodeMode? encodeMode;

  /// Identifies ECI encoding. Used when AztecEncodeMode is Auto. Default value: ISO-8859-1.
  ECIEncodings? eCIEncoding;

  /// Used to instruct the reader to interpret the data contained within the symbol as programming for reader initialization.
  bool? isReaderInitialization;

  /// Gets or sets layers count of Aztec symbol. Layers count should be in range from 1 to 3 for Compact mode and in range from 1 to 32 for Full Range mode. Default value: 0 (auto).
  int? layersCount;

  /// Constructor
  AztecParams();

  @override
  String toString() {
    return 'AztecParams[aspectRatio=$aspectRatio, errorLevel=$errorLevel, symbolMode=$symbolMode, textEncoding=$textEncoding, encodeMode=$encodeMode, eCIEncoding=$eCIEncoding, isReaderInitialization=$isReaderInitialization, layersCount=$layersCount, ]';
  }

  /// Creates a AztecParams instance from a JSON representation.
  AztecParams.fromJson(Map<String, dynamic> json) {
    aspectRatio = json['aspectRatio']?.toDouble();
    errorLevel = json['errorLevel'];
    symbolMode = AztecSymbolMode.fromJson(json['symbolMode']);
    textEncoding = json['textEncoding'];
    encodeMode = AztecEncodeMode.fromJson(json['encodeMode']);
    eCIEncoding = ECIEncodings.fromJson(json['eCIEncoding']);
    isReaderInitialization = json['isReaderInitialization'];
    layersCount = json['layersCount'];
  }

  /// Returns a JSON representation of AztecParams.
  Map<String, dynamic> toJson() {
    return {
      'AspectRatio': aspectRatio,
      'ErrorLevel': errorLevel,
      'SymbolMode': symbolMode,
      'TextEncoding': textEncoding,
      'EncodeMode': encodeMode,
      'ECIEncoding': eCIEncoding,
      'IsReaderInitialization': isReaderInitialization,
      'LayersCount': layersCount
    };
  }

  /// Converts a list of JSON objects to a list of AztecParams instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of AztecParams instances.
  static List<AztecParams> listFromJson(List<dynamic> json) {
    return json.map((value) => AztecParams.fromJson(value)).toList();
  }
}
