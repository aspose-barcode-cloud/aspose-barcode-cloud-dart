// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../../aspose_barcode_cloud.dart';

class FontParams {
  /* Font family. */
  String? family;

/* Font size in units. */
  double? size;

/* Font style. */
  FontStyle? style;

  FontParams();

  @override
  String toString() {
    return 'FontParams[family=$family, size=$size, style=$style, ]';
  }

  FontParams.fromJson(Map<String, dynamic> json) {
    family = json['family'];
    size = json['size']?.toDouble();
    style = FontStyle.fromJson(json['style']);
  }

  Map<String, dynamic> toJson() {
    return {'Family': family, 'Size': size, 'Style': style};
  }

  static List<FontParams> listFromJson(List<dynamic> json) {
    return json.map((value) => FontParams.fromJson(value)).toList();
  }

  static Map<String, FontParams> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = <String, FontParams>{};
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = FontParams.fromJson(value));
    }
    return map;
  }
}
