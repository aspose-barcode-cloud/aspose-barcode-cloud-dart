part of aspose_barcode_cloud.api;

class CaptionParams {
  /* Caption text. */
  String? text = null;

/* Text alignment. */
  TextAlignment? alignment = null;

/* Text color. */
  String? color = null;

/* Is caption visible. */
  bool? visible = null;

/* Font. */
  FontParams? font = null;

/* Padding. */
  Padding? padding = null;

/* Specify word wraps (line breaks) within text. Default value: false. */
  bool? noWrap = null;

  CaptionParams();

  @override
  String toString() {
    return 'CaptionParams[text=$text, alignment=$alignment, color=$color, visible=$visible, font=$font, padding=$padding, noWrap=$noWrap, ]';
  }

  CaptionParams.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    alignment = new TextAlignment.fromJson(json['alignment']);
    color = json['color'];
    visible = json['visible'];
    font = new FontParams.fromJson(json['font']);
    padding = new Padding.fromJson(json['padding']);
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
    return json.map((value) => new CaptionParams.fromJson(value)).toList();
  }

  static Map<String, CaptionParams> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = new Map<String, CaptionParams>();
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new CaptionParams.fromJson(value));
    }
    return map;
  }
}
