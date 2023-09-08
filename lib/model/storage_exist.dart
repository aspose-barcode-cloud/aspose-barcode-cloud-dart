part of aspose_barcode_cloud.api;

// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
class StorageExist {
  /* Shows that the storage exists. */
  bool? exists = null;

  StorageExist();

  @override
  String toString() {
    return 'StorageExist[exists=$exists, ]';
  }

  StorageExist.fromJson(Map<String, dynamic> json) {
    exists = json['exists'];
  }

  Map<String, dynamic> toJson() {
    return {'Exists': exists};
  }

  static List<StorageExist> listFromJson(List<dynamic> json) {
    return json.map((value) => StorageExist.fromJson(value)).toList();
  }

  static Map<String, StorageExist> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = Map<String, StorageExist>();
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = StorageExist.fromJson(value));
    }
    return map;
  }
}
