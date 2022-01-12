part of barcode.api;

class StorageExist {
  /* Shows that the storage exists. */
  bool? exists = null;

  StorageExist();

  @override
  String toString() {
    return 'StorageExist[exists=$exists, ]';
  }

  StorageExist.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    exists = json['exists'];
  }

  Map<String, dynamic> toJson() {
    return {'Exists': exists};
  }

  static List<StorageExist> listFromJson(List<dynamic> json) {
    return json == null
        ? []
        : json.map((value) => new StorageExist.fromJson(value)).toList();
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
