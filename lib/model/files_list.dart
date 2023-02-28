part of aspose_barcode_cloud.api;

class FilesList {
  FilesList();

  FilesList.fromJson(Map<String, dynamic> json) {
    value = StorageFile.listFromJson(json['value']);
  }
  /* Files and folders contained by folder StorageFile. */
  List<StorageFile>? value = [];

  @override
  String toString() => 'FilesList[value=$value, ]';

  Map<String, dynamic> toJson() => {'Value': value};

  static List<FilesList> listFromJson(List<dynamic> json) =>
      json.map((value) => new FilesList.fromJson(value)).toList();

  static Map<String, FilesList> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = new Map<String, FilesList>();
    if (json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new FilesList.fromJson(value));
    }
    return map;
  }
}
