part of barcode.api;

class ObjectExist {
  /* Indicates that the file or folder exists. */
  bool? exists = null;

/* True if it is a folder, false if it is a file. */
  bool? isFolder = null;

  ObjectExist();

  @override
  String toString() {
    return 'ObjectExist[exists=$exists, isFolder=$isFolder, ]';
  }

  ObjectExist.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    exists = json['exists'];
    isFolder = json['isFolder'];
  }

  Map<String, dynamic> toJson() {
    return {'Exists': exists, 'IsFolder': isFolder};
  }

  static List<ObjectExist> listFromJson(List<dynamic> json) {
    return json == null
        ? []
        : json.map((value) => new ObjectExist.fromJson(value)).toList();
  }

  static Map<String, ObjectExist> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ObjectExist>();
    if (json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ObjectExist.fromJson(value));
    }
    return map;
  }
}
