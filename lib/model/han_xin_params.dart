part of aspose_barcode_cloud.api;

class HanXinParams {
  HanXinParams();

  HanXinParams.fromJson(Map<String, dynamic> json) {
    encodeMode = new HanXinEncodeMode.fromJson(json['encodeMode']);
    errorLevel = new HanXinErrorLevel.fromJson(json['errorLevel']);
    version = new HanXinVersion.fromJson(json['version']);
    eCIEncoding = new ECIEncodings.fromJson(json['eCIEncoding']);
  }
  /* Encoding mode for XanXin barcodes. Default value: HanXinEncodeMode.Auto. */
  HanXinEncodeMode? encodeMode = null;

/* Allowed Han Xin error correction levels from L1 to L4. Default value: HanXinErrorLevel.L1. */
  HanXinErrorLevel? errorLevel = null;

/* Allowed Han Xin versions, Auto and Version01 - Version84. Default value: HanXinVersion.Auto. */
  HanXinVersion? version = null;

/* Extended Channel Interpretation Identifiers. It is used to tell the barcode reader details about the used references for encoding the data in the symbol. Current implementation consists all well known charset encodings. Default value: ECIEncodings.ISO_8859_1 */
  ECIEncodings? eCIEncoding = null;

  @override
  String toString() =>
      'HanXinParams[encodeMode=$encodeMode, errorLevel=$errorLevel, version=$version, eCIEncoding=$eCIEncoding, ]';

  Map<String, dynamic> toJson() => {
        'EncodeMode': encodeMode,
        'ErrorLevel': errorLevel,
        'Version': version,
        'ECIEncoding': eCIEncoding
      };

  static List<HanXinParams> listFromJson(List<dynamic> json) =>
      json.map((value) => new HanXinParams.fromJson(value)).toList();

  static Map<String, HanXinParams> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = new Map<String, HanXinParams>();
    if (json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new HanXinParams.fromJson(value));
    }
    return map;
  }
}
