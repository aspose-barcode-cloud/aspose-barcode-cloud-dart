// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package

class PostalParams {
  /* Short bar's height of Postal barcodes. */
  double? shortBarHeight = null;

  PostalParams();

  @override
  String toString() {
    return 'PostalParams[shortBarHeight=$shortBarHeight, ]';
  }

  PostalParams.fromJson(Map<String, dynamic> json) {
    shortBarHeight = json['shortBarHeight'] == null
        ? null
        : json['shortBarHeight'].toDouble();
  }

  Map<String, dynamic> toJson() {
    return {'ShortBarHeight': shortBarHeight};
  }

  static List<PostalParams> listFromJson(List<dynamic> json) {
    return json.map((value) => PostalParams.fromJson(value)).toList();
  }

  static Map<String, PostalParams> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = Map<String, PostalParams>();
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = PostalParams.fromJson(value));
    }
    return map;
  }
}
