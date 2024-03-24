// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package

/// Padding around barcode.
class Padding {
  /// Left padding.
  double? left;

  /// Right padding.
  double? right;

  /// Top padding.
  double? top;

  /// Bottom padding.
  double? bottom;

  /// Constructor
  Padding();

  @override
  String toString() {
    return 'Padding[left=$left, right=$right, top=$top, bottom=$bottom, ]';
  }

  /// Creates a Padding instance from a JSON representation.
  Padding.fromJson(Map<String, dynamic> json) {
    left = json['left']?.toDouble();
    right = json['right']?.toDouble();
    top = json['top']?.toDouble();
    bottom = json['bottom']?.toDouble();
  }

  /// Returns a JSON representation of Padding.
  Map<String, dynamic> toJson() {
    return {'Left': left, 'Right': right, 'Top': top, 'Bottom': bottom};
  }

  /// Converts a list of JSON objects to a list of Padding instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of Padding instances.
  static List<Padding> listFromJson(List<dynamic> json) {
    return json.map((value) => Padding.fromJson(value)).toList();
  }
}
