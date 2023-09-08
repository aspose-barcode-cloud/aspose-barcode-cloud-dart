// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package

class CodablockParams {
  /* Height/Width ratio of 2D BarCode module. */
  double? aspectRatio = null;

/* Columns count. */
  int? columns = null;

/* Rows count. */
  int? rows = null;

  CodablockParams();

  @override
  String toString() {
    return 'CodablockParams[aspectRatio=$aspectRatio, columns=$columns, rows=$rows, ]';
  }

  CodablockParams.fromJson(Map<String, dynamic> json) {
    aspectRatio =
        json['aspectRatio'] == null ? null : json['aspectRatio'].toDouble();
    columns = json['columns'];
    rows = json['rows'];
  }

  Map<String, dynamic> toJson() {
    return {'AspectRatio': aspectRatio, 'Columns': columns, 'Rows': rows};
  }

  static List<CodablockParams> listFromJson(List<dynamic> json) {
    return json.map((value) => CodablockParams.fromJson(value)).toList();
  }

  static Map<String, CodablockParams> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = Map<String, CodablockParams>();
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = CodablockParams.fromJson(value));
    }
    return map;
  }
}
