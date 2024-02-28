// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../../aspose_barcode_cloud.dart';

class CaptionParams {
  /* Caption text. */
  String? text;

/* Text alignment. */
  TextAlignment? alignment;

/* Text color. */
  String? color;

/* Is caption visible. */
  bool? visible;

/* Font. */
  FontParams? font;

/* Padding. */
  Padding? padding;

/* Specify word wraps (line breaks) within text. Default value: false. */
  bool? noWrap;

  CaptionParams();

  @override
  String toString() {
    return 'CaptionParams[text=$text, alignment=$alignment, color=$color, visible=$visible, font=$font, padding=$padding, noWrap=$noWrap, ]';
  }

  CaptionParams.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    alignment = TextAlignment.fromJson(json['alignment']);
    color = json['color'];
    visible = json['visible'];
    font = FontParams.fromJson(json['font']);
    padding = Padding.fromJson(json['padding']);
    noWrap = json['noWrap'];
  }

  Map<String, dynamic> toJson() {
    return {
      'Text': text,
      'Alignment': alignment,
      'Color': color,
      'Visible': visible,
      'Font': font,
      'Padding': padding,
      'NoWrap': noWrap
    };
  }

  static List<CaptionParams> listFromJson(List<dynamic> json) {
    return json.map((value) => CaptionParams.fromJson(value)).toList();
  }

  static Map<String, CaptionParams> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = <String, CaptionParams>{};
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = CaptionParams.fromJson(value));
    }
    return map;
  }
}
