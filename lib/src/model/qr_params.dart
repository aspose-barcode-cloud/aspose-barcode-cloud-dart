// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../../aspose_barcode_cloud.dart';

/// QR parameters.
class QrParams {
  /// Height/Width ratio of 2D BarCode module.
  double? aspectRatio;

  /// DEPRECATED: This property is obsolete and will be removed in future releases. Unicode symbols detection and encoding will be processed in Auto mode with Extended Channel Interpretation charset designator. Using of own encodings requires manual CodeText encoding into byte[] array.  Sets the encoding of codetext.
  String? textEncoding;

  /// QR / MicroQR selector mode. Select ForceQR for standard QR symbols, Auto for MicroQR.
  QREncodeType? encodeType;

  /// Extended Channel Interpretation Identifiers. It is used to tell the barcode reader details about the used references for encoding the data in the symbol. Current implementation consists all well known charset encodings.
  ECIEncodings? eCIEncoding;

  /// QR symbology type of BarCode's encoding mode. Default value: QREncodeMode.Auto.
  QREncodeMode? encodeMode;

  /// Level of Reed-Solomon error correction for QR barcode. From low to high: LevelL, LevelM, LevelQ, LevelH. see QRErrorLevel.
  QRErrorLevel? errorLevel;

  /// Version of QR Code. From Version1 to Version40 for QR code and from M1 to M4 for MicroQr. Default value is QRVersion.Auto.
  QRVersion? version;

  /// QR structured append parameters.
  StructuredAppend? structuredAppend;

  /// Constructor
  QrParams();

  @override
  String toString() {
    return 'QrParams[aspectRatio=$aspectRatio, textEncoding=$textEncoding, encodeType=$encodeType, eCIEncoding=$eCIEncoding, encodeMode=$encodeMode, errorLevel=$errorLevel, version=$version, structuredAppend=$structuredAppend, ]';
  }

  /// Creates a QrParams instance from a JSON representation.
  QrParams.fromJson(Map<String, dynamic> json) {
    aspectRatio = json['aspectRatio']?.toDouble();
    textEncoding = json['textEncoding'];
    encodeType = QREncodeType.fromJson(json['encodeType']);
    eCIEncoding = ECIEncodings.fromJson(json['eCIEncoding']);
    encodeMode = QREncodeMode.fromJson(json['encodeMode']);
    errorLevel = QRErrorLevel.fromJson(json['errorLevel']);
    version = QRVersion.fromJson(json['version']);
    structuredAppend = StructuredAppend.fromJson(json['structuredAppend']);
  }

  /// Returns a JSON representation of QrParams.
  Map<String, dynamic> toJson() {
    return {
      'AspectRatio': aspectRatio,
      'TextEncoding': textEncoding,
      'EncodeType': encodeType,
      'ECIEncoding': eCIEncoding,
      'EncodeMode': encodeMode,
      'ErrorLevel': errorLevel,
      'Version': version,
      'StructuredAppend': structuredAppend
    };
  }

  /// Converts a list of JSON objects to a list of QrParams instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of QrParams instances.
  static List<QrParams> listFromJson(List<dynamic> json) {
    return json.map((value) => QrParams.fromJson(value)).toList();
  }
}
