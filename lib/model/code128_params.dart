// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../api.dart';

class Code128Params {
  /* Encoding mode for Code128 barcodes. Code 128 specification Default value: Code128EncodeMode.Auto. */
  Code128EncodeMode? encodeMode = null;

  Code128Params();

  @override
  String toString() {
    return 'Code128Params[encodeMode=$encodeMode, ]';
  }

  Code128Params.fromJson(Map<String, dynamic> json) {
    encodeMode = Code128EncodeMode.fromJson(json['encodeMode']);
  }

  Map<String, dynamic> toJson() {
    return {'EncodeMode': encodeMode};
  }

  static List<Code128Params> listFromJson(List<dynamic> json) {
    return json.map((value) => Code128Params.fromJson(value)).toList();
  }

  static Map<String, Code128Params> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = Map<String, Code128Params>();
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = Code128Params.fromJson(value));
    }
    return map;
  }
}
