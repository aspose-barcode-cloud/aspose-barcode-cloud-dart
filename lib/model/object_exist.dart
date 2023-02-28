part of aspose_barcode_cloud.api;

class ObjectExist {
  ObjectExist();

  ObjectExist.fromJson(Map<String, dynamic> json) {
    exists = json['exists'];
    isFolder = json['isFolder'];
  }
  /* Indicates that the file or folder exists. */
  bool? exists = null;

/* True if it is a folder, false if it is a file. */
  bool? isFolder = null;

  @override
  String toString() => 'ObjectExist[exists=$exists, isFolder=$isFolder, ]';

  Map<String, dynamic> toJson() => {'Exists': exists, 'IsFolder': isFolder};

  static List<ObjectExist> listFromJson(List<dynamic> json) =>
      json.map((value) => new ObjectExist.fromJson(value)).toList();

  static Map<String, ObjectExist> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = new Map<String, ObjectExist>();
    if (json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ObjectExist.fromJson(value));
    }
    return map;
  }
}
