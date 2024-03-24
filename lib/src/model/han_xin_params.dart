// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../../aspose_barcode_cloud.dart';

/// HanXin params.
class HanXinParams {
  /// Encoding mode for XanXin barcodes. Default value: HanXinEncodeMode.Auto.
  HanXinEncodeMode? encodeMode;

  /// Allowed Han Xin error correction levels from L1 to L4. Default value: HanXinErrorLevel.L1.
  HanXinErrorLevel? errorLevel;

  /// Allowed Han Xin versions, Auto and Version01 - Version84. Default value: HanXinVersion.Auto.
  HanXinVersion? version;

  /// Extended Channel Interpretation Identifiers. It is used to tell the barcode reader details about the used references for encoding the data in the symbol. Current implementation consists all well known charset encodings. Default value: ECIEncodings.ISO_8859_1
  ECIEncodings? eCIEncoding;

  /// Constructor
  HanXinParams();

  @override
  String toString() {
    return 'HanXinParams[encodeMode=$encodeMode, errorLevel=$errorLevel, version=$version, eCIEncoding=$eCIEncoding, ]';
  }

  /// Creates a HanXinParams instance from a JSON representation.
  HanXinParams.fromJson(Map<String, dynamic> json) {
    encodeMode = HanXinEncodeMode.fromJson(json['encodeMode']);
    errorLevel = HanXinErrorLevel.fromJson(json['errorLevel']);
    version = HanXinVersion.fromJson(json['version']);
    eCIEncoding = ECIEncodings.fromJson(json['eCIEncoding']);
  }

  /// Returns a JSON representation of HanXinParams.
  Map<String, dynamic> toJson() {
    return {
      'EncodeMode': encodeMode,
      'ErrorLevel': errorLevel,
      'Version': version,
      'ECIEncoding': eCIEncoding
    };
  }

  /// Converts a list of JSON objects to a list of HanXinParams instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of HanXinParams instances.
  static List<HanXinParams> listFromJson(List<dynamic> json) {
    return json.map((value) => HanXinParams.fromJson(value)).toList();
  }
}
