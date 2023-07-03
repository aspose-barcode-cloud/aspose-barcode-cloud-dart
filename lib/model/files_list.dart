part of aspose_barcode_cloud.api;

// ignore_for_file: non_constant_identifier_names
class FilesList {
  /* Files and folders contained by folder StorageFile. */
  List<StorageFile>? value = [];

  FilesList();

  @override
  String toString() {
    return 'FilesList[value=$value, ]';
  }

  FilesList.fromJson(Map<String, dynamic> json) {
    value = StorageFile.listFromJson(json['value']);
  }

  Map<String, dynamic> toJson() {
    return {'Value': value};
  }

  static List<FilesList> listFromJson(List<dynamic> json) {
    return json.map((value) => new FilesList.fromJson(value)).toList();
  }

  static Map<String, FilesList> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = new Map<String, FilesList>();
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new FilesList.fromJson(value));
    }
    return map;
  }
}
