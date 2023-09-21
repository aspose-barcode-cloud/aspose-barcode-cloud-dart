// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../../aspose_barcode_cloud.dart';

class QrParams {
  /* Height/Width ratio of 2D BarCode module. */
  double? aspectRatio = null;

/* DEPRECATED: This property is obsolete and will be removed in future releases. Unicode symbols detection and encoding will be processed in Auto mode with Extended Channel Interpretation charset designator. Using of own encodings requires manual CodeText encoding into byte[] array.  Sets the encoding of codetext. */
  @Deprecated(
      "This property is obsolete and will be removed in future releases. Unicode symbols detection and encoding will be processed in Auto mode with Extended Channel Interpretation charset designator. Using of own encodings requires manual CodeText encoding into byte[] array.  Sets the encoding of codetext. ")
  String? textEncoding = null;

/* QR / MicroQR selector mode. Select ForceQR for standard QR symbols, Auto for MicroQR. */
  QREncodeType? encodeType = null;

/* Extended Channel Interpretation Identifiers. It is used to tell the barcode reader details about the used references for encoding the data in the symbol. Current implementation consists all well known charset encodings. */
  ECIEncodings? eCIEncoding = null;

/* QR symbology type of BarCode's encoding mode. Default value: QREncodeMode.Auto. */
  QREncodeMode? encodeMode = null;

/* Level of Reed-Solomon error correction for QR barcode. From low to high: LevelL, LevelM, LevelQ, LevelH. see QRErrorLevel. */
  QRErrorLevel? errorLevel = null;

/* Version of QR Code. From Version1 to Version40 for QR code and from M1 to M4 for MicroQr. Default value is QRVersion.Auto. */
  QRVersion? version = null;

/* QR structured append parameters. */
  StructuredAppend? structuredAppend = null;

  QrParams();

  @override
  String toString() {
    return 'QrParams[aspectRatio=$aspectRatio, textEncoding=$textEncoding, encodeType=$encodeType, eCIEncoding=$eCIEncoding, encodeMode=$encodeMode, errorLevel=$errorLevel, version=$version, structuredAppend=$structuredAppend, ]';
  }

  QrParams.fromJson(Map<String, dynamic> json) {
    aspectRatio =
        json['aspectRatio'] == null ? null : json['aspectRatio'].toDouble();
    textEncoding = json['textEncoding'];
    encodeType = QREncodeType.fromJson(json['encodeType']);
    eCIEncoding = ECIEncodings.fromJson(json['eCIEncoding']);
    encodeMode = QREncodeMode.fromJson(json['encodeMode']);
    errorLevel = QRErrorLevel.fromJson(json['errorLevel']);
    version = QRVersion.fromJson(json['version']);
    structuredAppend = StructuredAppend.fromJson(json['structuredAppend']);
  }

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

  static List<QrParams> listFromJson(List<dynamic> json) {
    return json.map((value) => QrParams.fromJson(value)).toList();
  }

  static Map<String, QrParams> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = Map<String, QrParams>();
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = QrParams.fromJson(value));
    }
    return map;
  }
}
