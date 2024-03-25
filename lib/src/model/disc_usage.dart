// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package

/// Class for disc space information.
class DiscUsage {
  /// Application used disc space.
  int? usedSize;

  /// Total disc space.
  int? totalSize;

  /// Constructor
  DiscUsage();

  @override
  String toString() {
    return 'DiscUsage[usedSize=$usedSize, totalSize=$totalSize, ]';
  }

  /// Creates a DiscUsage instance from a JSON representation.
  DiscUsage.fromJson(Map<String, dynamic> json) {
    usedSize = json['usedSize'];
    totalSize = json['totalSize'];
  }

  /// Returns a JSON representation of DiscUsage.
  Map<String, dynamic> toJson() {
    return {'UsedSize': usedSize, 'TotalSize': totalSize};
  }

  /// Converts a list of JSON objects to a list of DiscUsage instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of DiscUsage instances.
  static List<DiscUsage> listFromJson(List<dynamic> json) {
    return json.map((value) => DiscUsage.fromJson(value)).toList();
  }
}
