// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package

/// Databar parameters.
class DataBarParams {
  /// Height/Width ratio of 2D BarCode module. Used for DataBar stacked.
  double? aspectRatio;

  /// Columns count.
  int? columns;

  /// Rows count.
  int? rows;

  /// Enables flag of 2D composite component with DataBar barcode
  bool? is2DCompositeComponent;

  /// If this flag is set, it allows only GS1 encoding standard for Databar barcode types
  bool? isAllowOnlyGS1Encoding;

  /// Constructor
  DataBarParams();

  @override
  String toString() {
    return 'DataBarParams[aspectRatio=$aspectRatio, columns=$columns, rows=$rows, is2DCompositeComponent=$is2DCompositeComponent, isAllowOnlyGS1Encoding=$isAllowOnlyGS1Encoding, ]';
  }

  /// Creates a DataBarParams instance from a JSON representation.
  DataBarParams.fromJson(Map<String, dynamic> json) {
    aspectRatio = json['aspectRatio']?.toDouble();
    columns = json['columns'];
    rows = json['rows'];
    is2DCompositeComponent = json['is2DCompositeComponent'];
    isAllowOnlyGS1Encoding = json['isAllowOnlyGS1Encoding'];
  }

  /// Returns a JSON representation of DataBarParams.
  Map<String, dynamic> toJson() {
    return {
      'AspectRatio': aspectRatio,
      'Columns': columns,
      'Rows': rows,
      'Is2DCompositeComponent': is2DCompositeComponent,
      'IsAllowOnlyGS1Encoding': isAllowOnlyGS1Encoding
    };
  }

  /// Converts a list of JSON objects to a list of DataBarParams instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of DataBarParams instances.
  static List<DataBarParams> listFromJson(List<dynamic> json) {
    return json.map((value) => DataBarParams.fromJson(value)).toList();
  }
}
