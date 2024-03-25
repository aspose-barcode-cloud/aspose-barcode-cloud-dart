// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package

/// Codablock parameters.
class CodablockParams {
  /// Height/Width ratio of 2D BarCode module.
  double? aspectRatio;

  /// Columns count.
  int? columns;

  /// Rows count.
  int? rows;

  /// Constructor
  CodablockParams();

  @override
  String toString() {
    return 'CodablockParams[aspectRatio=$aspectRatio, columns=$columns, rows=$rows, ]';
  }

  /// Creates a CodablockParams instance from a JSON representation.
  CodablockParams.fromJson(Map<String, dynamic> json) {
    aspectRatio = json['aspectRatio']?.toDouble();
    columns = json['columns'];
    rows = json['rows'];
  }

  /// Returns a JSON representation of CodablockParams.
  Map<String, dynamic> toJson() {
    return {'AspectRatio': aspectRatio, 'Columns': columns, 'Rows': rows};
  }

  /// Converts a list of JSON objects to a list of CodablockParams instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of CodablockParams instances.
  static List<CodablockParams> listFromJson(List<dynamic> json) {
    return json.map((value) => CodablockParams.fromJson(value)).toList();
  }
}
