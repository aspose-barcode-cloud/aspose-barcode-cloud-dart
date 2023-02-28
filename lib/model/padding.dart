part of aspose_barcode_cloud.api;

class Padding {
  Padding();

  Padding.fromJson(Map<String, dynamic> json) {
    left = json['left'] == null ? null : json['left'].toDouble();
    right = json['right'] == null ? null : json['right'].toDouble();
    top = json['top'] == null ? null : json['top'].toDouble();
    bottom = json['bottom'] == null ? null : json['bottom'].toDouble();
  }
  /* Left padding. */
  double? left = null;

/* Right padding. */
  double? right = null;

/* Top padding. */
  double? top = null;

/* Bottom padding. */
  double? bottom = null;

  @override
  String toString() =>
      'Padding[left=$left, right=$right, top=$top, bottom=$bottom, ]';

  Map<String, dynamic> toJson() =>
      {'Left': left, 'Right': right, 'Top': top, 'Bottom': bottom};

  static List<Padding> listFromJson(List<dynamic> json) =>
      json.map((value) => new Padding.fromJson(value)).toList();

  static Map<String, Padding> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = new Map<String, Padding>();
    if (json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Padding.fromJson(value));
    }
    return map;
  }
}
