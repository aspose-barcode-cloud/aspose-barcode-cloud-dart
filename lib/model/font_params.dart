part of aspose_barcode_cloud.api;

class FontParams {
  FontParams();

  FontParams.fromJson(Map<String, dynamic> json) {
    family = json['family'];
    size = json['size'] == null ? null : json['size'].toDouble();
    style = new FontStyle.fromJson(json['style']);
  }
  /* Font family. */
  String? family = null;

/* Font size in units. */
  double? size = null;

/* Font style. */
  FontStyle? style = null;

  @override
  String toString() => 'FontParams[family=$family, size=$size, style=$style, ]';

  Map<String, dynamic> toJson() =>
      {'Family': family, 'Size': size, 'Style': style};

  static List<FontParams> listFromJson(List<dynamic> json) =>
      json.map((value) => new FontParams.fromJson(value)).toList();

  static Map<String, FontParams> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = new Map<String, FontParams>();
    if (json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new FontParams.fromJson(value));
    }
    return map;
  }
}
