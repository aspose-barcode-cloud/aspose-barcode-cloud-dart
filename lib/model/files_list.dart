part of barcode.api;

class FilesList {
  /* Files and folders contained by folder StorageFile. */
  List<StorageFile>? value = [];

  FilesList();

  @override
  String toString() {
    return 'FilesList[value=$value, ]';
  }

  FilesList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    value = StorageFile.listFromJson(json['value']);
  }

  Map<String, dynamic> toJson() {
    return {'Value': value};
  }

  static List<FilesList> listFromJson(List<dynamic> json) {
    return json == null
        ? []
        : json.map((value) => new FilesList.fromJson(value)).toList();
  }

  static Map<String, FilesList> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FilesList>();
    if (json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new FilesList.fromJson(value));
    }
    return map;
  }
}
