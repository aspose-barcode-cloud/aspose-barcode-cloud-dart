part of aspose_barcode_cloud.api;

// ignore_for_file: non_constant_identifier_names
class DiscUsage {
  /* Application used disc space. */
  int? usedSize = null;

/* Total disc space. */
  int? totalSize = null;

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
    return json.map((value) => new DiscUsage.fromJson(value)).toList();
  }

  static Map<String, DiscUsage> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = new Map<String, DiscUsage>();
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new DiscUsage.fromJson(value));
    }
    return map;
  }
}
