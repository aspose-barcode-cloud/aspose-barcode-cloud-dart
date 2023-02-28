part of aspose_barcode_cloud.api;

class PostalParams {
  PostalParams();

  PostalParams.fromJson(Map<String, dynamic> json) {
    shortBarHeight = json['shortBarHeight'] == null
        ? null
        : json['shortBarHeight'].toDouble();
  }
  /* Short bar's height of Postal barcodes. */
  double? shortBarHeight = null;

  @override
  String toString() => 'PostalParams[shortBarHeight=$shortBarHeight, ]';

  Map<String, dynamic> toJson() => {'ShortBarHeight': shortBarHeight};

  static List<PostalParams> listFromJson(List<dynamic> json) =>
      json.map((value) => new PostalParams.fromJson(value)).toList();

  static Map<String, PostalParams> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = new Map<String, PostalParams>();
    if (json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new PostalParams.fromJson(value));
    }
    return map;
  }
}
