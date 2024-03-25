// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../../aspose_barcode_cloud.dart';

/// Font.
class FontParams {
  /// Font family.
  String? family;

  /// Font size in units.
  double? size;

  /// Font style.
  FontStyle? style;

  /// Constructor
  FontParams();

  @override
  String toString() {
    return 'FontParams[family=$family, size=$size, style=$style, ]';
  }

  /// Creates a FontParams instance from a JSON representation.
  FontParams.fromJson(Map<String, dynamic> json) {
    family = json['family'];
    size = json['size']?.toDouble();
    style = FontStyle.fromJson(json['style']);
  }

  /// Returns a JSON representation of FontParams.
  Map<String, dynamic> toJson() {
    return {'Family': family, 'Size': size, 'Style': style};
  }

  /// Converts a list of JSON objects to a list of FontParams instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of FontParams instances.
  static List<FontParams> listFromJson(List<dynamic> json) {
    return json.map((value) => FontParams.fromJson(value)).toList();
  }
}
