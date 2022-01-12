part of barcode.api;

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
    if (json == null) return;
    family = json['family'];
    size = json['size'] == null ? null : json['size'].toDouble();
    style = new FontStyle.fromJson(json['style']);
  }

  Map<String, dynamic> toJson() {
    return {'Family': family, 'Size': size, 'Style': style};
  }

  static List<FontParams> listFromJson(List<dynamic> json) {
    return json == null
        ? []
        : json.map((value) => new FontParams.fromJson(value)).toList();
  }

  static Map<String, FontParams> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FontParams>();
    if (json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new FontParams.fromJson(value));
    }
    return map;
  }
}
