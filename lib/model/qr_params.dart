part of aspose_barcode_cloud.api;

class QrParams {
  QrParams();

  QrParams.fromJson(Map<String, dynamic> json) {
    aspectRatio =
        json['aspectRatio'] == null ? null : json['aspectRatio'].toDouble();
    textEncoding = json['textEncoding'];
    encodeType = new QREncodeType.fromJson(json['encodeType']);
    eCIEncoding = new ECIEncodings.fromJson(json['eCIEncoding']);
    encodeMode = new QREncodeMode.fromJson(json['encodeMode']);
    errorLevel = new QRErrorLevel.fromJson(json['errorLevel']);
    version = new QRVersion.fromJson(json['version']);
    structuredAppend = new StructuredAppend.fromJson(json['structuredAppend']);
  }
  /* Height/Width ratio of 2D BarCode module. */
  double? aspectRatio = null;

/* Encoding of codetext. */
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

  @override
  String toString() =>
      'QrParams[aspectRatio=$aspectRatio, textEncoding=$textEncoding, encodeType=$encodeType, eCIEncoding=$eCIEncoding, encodeMode=$encodeMode, errorLevel=$errorLevel, version=$version, structuredAppend=$structuredAppend, ]';

  Map<String, dynamic> toJson() => {
        'AspectRatio': aspectRatio,
        'TextEncoding': textEncoding,
        'EncodeType': encodeType,
        'ECIEncoding': eCIEncoding,
        'EncodeMode': encodeMode,
        'ErrorLevel': errorLevel,
        'Version': version,
        'StructuredAppend': structuredAppend
      };

  static List<QrParams> listFromJson(List<dynamic> json) =>
      json.map((value) => new QrParams.fromJson(value)).toList();

  static Map<String, QrParams> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = new Map<String, QrParams>();
    if (json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new QrParams.fromJson(value));
    }
    return map;
  }
}
