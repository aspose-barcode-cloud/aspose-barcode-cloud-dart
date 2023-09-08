// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../../aspose_barcode_cloud.dart';

class HanXinParams {
  /* Encoding mode for XanXin barcodes. Default value: HanXinEncodeMode.Auto. */
  HanXinEncodeMode? encodeMode = null;

/* Allowed Han Xin error correction levels from L1 to L4. Default value: HanXinErrorLevel.L1. */
  HanXinErrorLevel? errorLevel = null;

/* Allowed Han Xin versions, Auto and Version01 - Version84. Default value: HanXinVersion.Auto. */
  HanXinVersion? version = null;

/* Extended Channel Interpretation Identifiers. It is used to tell the barcode reader details about the used references for encoding the data in the symbol. Current implementation consists all well known charset encodings. Default value: ECIEncodings.ISO_8859_1 */
  ECIEncodings? eCIEncoding = null;

  HanXinParams();

  @override
  String toString() {
    return 'HanXinParams[encodeMode=$encodeMode, errorLevel=$errorLevel, version=$version, eCIEncoding=$eCIEncoding, ]';
  }

  HanXinParams.fromJson(Map<String, dynamic> json) {
    encodeMode = HanXinEncodeMode.fromJson(json['encodeMode']);
    errorLevel = HanXinErrorLevel.fromJson(json['errorLevel']);
    version = HanXinVersion.fromJson(json['version']);
    eCIEncoding = ECIEncodings.fromJson(json['eCIEncoding']);
  }

  Map<String, dynamic> toJson() {
    return {
      'EncodeMode': encodeMode,
      'ErrorLevel': errorLevel,
      'Version': version,
      'ECIEncoding': eCIEncoding
    };
  }

  static List<HanXinParams> listFromJson(List<dynamic> json) {
    return json.map((value) => HanXinParams.fromJson(value)).toList();
  }

  static Map<String, HanXinParams> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = Map<String, HanXinParams>();
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = HanXinParams.fromJson(value));
    }
    return map;
  }
}
