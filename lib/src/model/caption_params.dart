// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../../aspose_barcode_cloud.dart';

/// Caption
class CaptionParams {
  /// Caption text.
  String? text;

  /// Text alignment.
  TextAlignment? alignment;

  /// Text color.
  String? color;

  /// Is caption visible.
  bool? visible;

  /// Font.
  FontParams? font;

  /// Padding.
  Padding? padding;

  /// Specify word wraps (line breaks) within text. Default value: false.
  bool? noWrap;

  /// Constructor
  CaptionParams();

  @override
  String toString() {
    return 'CaptionParams[text=$text, alignment=$alignment, color=$color, visible=$visible, font=$font, padding=$padding, noWrap=$noWrap, ]';
  }

  /// Creates a CaptionParams instance from a JSON representation.
  CaptionParams.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    alignment = TextAlignment.fromJson(json['alignment']);
    color = json['color'];
    visible = json['visible'];
    font = FontParams.fromJson(json['font']);
    padding = Padding.fromJson(json['padding']);
    noWrap = json['noWrap'];
  }

  /// Returns a JSON representation of CaptionParams.
  Map<String, dynamic> toJson() {
    return {
      'Text': text,
      'Alignment': alignment,
      'Color': color,
      'Visible': visible,
      'Font': font,
      'Padding': padding,
      'NoWrap': noWrap
    };
  }

  /// Converts a list of JSON objects to a list of CaptionParams instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of CaptionParams instances.
  static List<CaptionParams> listFromJson(List<dynamic> json) {
    return json.map((value) => CaptionParams.fromJson(value)).toList();
  }
}
