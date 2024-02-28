// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package

class DiscUsage {
  /* Application used disc space. */
  int? usedSize;

/* Total disc space. */
  int? totalSize;

  DiscUsage();

  @override
  String toString() {
    return 'DiscUsage[usedSize=$usedSize, totalSize=$totalSize, ]';
  }

  DiscUsage.fromJson(Map<String, dynamic> json) {
    usedSize = json['usedSize'];
    totalSize = json['totalSize'];
  }

  Map<String, dynamic> toJson() {
    return {'UsedSize': usedSize, 'TotalSize': totalSize};
  }

  static List<DiscUsage> listFromJson(List<dynamic> json) {
    return json.map((value) => DiscUsage.fromJson(value)).toList();
  }

  static Map<String, DiscUsage> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = <String, DiscUsage>{};
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = DiscUsage.fromJson(value));
    }
    return map;
  }
}
