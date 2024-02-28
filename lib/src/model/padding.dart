// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package

class Padding {
  /* Left padding. */
  double? left;

/* Right padding. */
  double? right;

/* Top padding. */
  double? top;

/* Bottom padding. */
  double? bottom;

  Padding();

  @override
  String toString() {
    return 'Padding[left=$left, right=$right, top=$top, bottom=$bottom, ]';
  }

  Padding.fromJson(Map<String, dynamic> json) {
    left = json['left']?.toDouble();
    right = json['right']?.toDouble();
    top = json['top']?.toDouble();
    bottom = json['bottom']?.toDouble();
  }

  Map<String, dynamic> toJson() {
    return {'Left': left, 'Right': right, 'Top': top, 'Bottom': bottom};
  }

  static List<Padding> listFromJson(List<dynamic> json) {
    return json.map((value) => Padding.fromJson(value)).toList();
  }

  static Map<String, Padding> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = <String, Padding>{};
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = Padding.fromJson(value));
    }
    return map;
  }
}
