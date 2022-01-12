part of barcode.api;

class PostalParams {
  /* Short bar's height of Postal barcodes. */
  double? shortBarHeight = null;

  PostalParams();

  @override
  String toString() {
    return 'PostalParams[shortBarHeight=$shortBarHeight, ]';
  }

  PostalParams.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    shortBarHeight = json['shortBarHeight'] == null
        ? null
        : json['shortBarHeight'].toDouble();
  }

  Map<String, dynamic> toJson() {
    return {'ShortBarHeight': shortBarHeight};
  }

  static List<PostalParams> listFromJson(List<dynamic> json) {
    return json == null
        ? []
        : json.map((value) => new PostalParams.fromJson(value)).toList();
  }

  static Map<String, PostalParams> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PostalParams>();
    if (json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new PostalParams.fromJson(value));
    }
    return map;
  }
}
