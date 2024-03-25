// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package

/// Postal parameters. Used for Postnet, Planet.
class PostalParams {
  /// Short bar's height of Postal barcodes.
  double? shortBarHeight;

  /// Constructor
  PostalParams();

  @override
  String toString() {
    return 'PostalParams[shortBarHeight=$shortBarHeight, ]';
  }

  /// Creates a PostalParams instance from a JSON representation.
  PostalParams.fromJson(Map<String, dynamic> json) {
    shortBarHeight = json['shortBarHeight']?.toDouble();
  }

  /// Returns a JSON representation of PostalParams.
  Map<String, dynamic> toJson() {
    return {'ShortBarHeight': shortBarHeight};
  }

  /// Converts a list of JSON objects to a list of PostalParams instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of PostalParams instances.
  static List<PostalParams> listFromJson(List<dynamic> json) {
    return json.map((value) => PostalParams.fromJson(value)).toList();
  }
}
