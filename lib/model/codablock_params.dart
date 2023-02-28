part of aspose_barcode_cloud.api;

class CodablockParams {
  CodablockParams();

  CodablockParams.fromJson(Map<String, dynamic> json) {
    aspectRatio =
        json['aspectRatio'] == null ? null : json['aspectRatio'].toDouble();
    columns = json['columns'];
    rows = json['rows'];
  }
  /* Height/Width ratio of 2D BarCode module. */
  double? aspectRatio = null;

/* Columns count. */
  int? columns = null;

/* Rows count. */
  int? rows = null;

  @override
  String toString() =>
      'CodablockParams[aspectRatio=$aspectRatio, columns=$columns, rows=$rows, ]';

  Map<String, dynamic> toJson() =>
      {'AspectRatio': aspectRatio, 'Columns': columns, 'Rows': rows};

  static List<CodablockParams> listFromJson(List<dynamic> json) =>
      json.map((value) => new CodablockParams.fromJson(value)).toList();

  static Map<String, CodablockParams> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = new Map<String, CodablockParams>();
    if (json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new CodablockParams.fromJson(value));
    }
    return map;
  }
}
