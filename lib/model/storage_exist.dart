part of aspose_barcode_cloud.api;

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
    return json.map((value) => new StorageExist.fromJson(value)).toList();
  }

  static Map<String, StorageExist> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StorageExist>();
    if (json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new StorageExist.fromJson(value));
    }
    return map;
  }
}
