// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package

class ObjectExist {
  /* Indicates that the file or folder exists. */
  bool? exists;

/* True if it is a folder, false if it is a file. */
  bool? isFolder;

  ObjectExist();

  @override
  String toString() {
    return 'ObjectExist[exists=$exists, isFolder=$isFolder, ]';
  }

  ObjectExist.fromJson(Map<String, dynamic> json) {
    exists = json['exists'];
    isFolder = json['isFolder'];
  }

  Map<String, dynamic> toJson() {
    return {'Exists': exists, 'IsFolder': isFolder};
  }

  static List<ObjectExist> listFromJson(List<dynamic> json) {
    return json.map((value) => ObjectExist.fromJson(value)).toList();
  }

  static Map<String, ObjectExist> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = <String, ObjectExist>{};
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = ObjectExist.fromJson(value));
    }
    return map;
  }
}
