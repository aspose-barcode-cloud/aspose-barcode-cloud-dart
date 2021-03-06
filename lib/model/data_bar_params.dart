part of aspose_barcode_cloud.api;

class DataBarParams {
  /* Height/Width ratio of 2D BarCode module. Used for DataBar stacked. */
  double? aspectRatio = null;

/* Columns count. */
  int? columns = null;

/* Rows count. */
  int? rows = null;

/* Enables flag of 2D composite component with DataBar barcode */
  bool? is2DCompositeComponent = null;

/* If this flag is set, it allows only GS1 encoding standard for Databar barcode types */
  bool? isAllowOnlyGS1Encoding = null;

  DataBarParams();

  @override
  String toString() {
    return 'DataBarParams[aspectRatio=$aspectRatio, columns=$columns, rows=$rows, is2DCompositeComponent=$is2DCompositeComponent, isAllowOnlyGS1Encoding=$isAllowOnlyGS1Encoding, ]';
  }

  DataBarParams.fromJson(Map<String, dynamic> json) {
    aspectRatio =
        json['aspectRatio'] == null ? null : json['aspectRatio'].toDouble();
    columns = json['columns'];
    rows = json['rows'];
    is2DCompositeComponent = json['is2DCompositeComponent'];
    isAllowOnlyGS1Encoding = json['isAllowOnlyGS1Encoding'];
  }

  Map<String, dynamic> toJson() {
    return {
      'AspectRatio': aspectRatio,
      'Columns': columns,
      'Rows': rows,
      'Is2DCompositeComponent': is2DCompositeComponent,
      'IsAllowOnlyGS1Encoding': isAllowOnlyGS1Encoding
    };
  }

  static List<DataBarParams> listFromJson(List<dynamic> json) {
    return json.map((value) => new DataBarParams.fromJson(value)).toList();
  }

  static Map<String, DataBarParams> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DataBarParams>();
    if (json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new DataBarParams.fromJson(value));
    }
    return map;
  }
}
