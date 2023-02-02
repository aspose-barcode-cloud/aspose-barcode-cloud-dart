part of aspose_barcode_cloud.api;

class StorageExist {
  StorageExist();

  StorageExist.fromJson(Map<String, dynamic> json) {
    exists = json['exists'];
  }
  /* Shows that the storage exists. */
  bool? exists = null;

  @override
  String toString() => 'StorageExist[exists=$exists, ]';

  Map<String, dynamic> toJson() => {'Exists': exists};

  static List<StorageExist> listFromJson(List<dynamic> json) =>
      json.map((value) => new StorageExist.fromJson(value)).toList();

  static Map<String, StorageExist> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = new Map<String, StorageExist>();
    if (json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new StorageExist.fromJson(value));
    }
    return map;
  }
}
