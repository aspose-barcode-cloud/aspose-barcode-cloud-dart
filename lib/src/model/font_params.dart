// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../../api.dart';

class FontParams {
  /* Font family. */
  String? family = null;

/* Font size in units. */
  double? size = null;

/* Font style. */
  FontStyle? style = null;

  FontParams();

  @override
  String toString() {
    return 'FontParams[family=$family, size=$size, style=$style, ]';
  }

  FontParams.fromJson(Map<String, dynamic> json) {
    family = json['family'];
    size = json['size'] == null ? null : json['size'].toDouble();
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
    final map = Map<String, FontParams>();
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = FontParams.fromJson(value));
    }
    return map;
  }
}
