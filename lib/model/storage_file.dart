part of aspose_barcode_cloud.api;

class StorageFile {
  /* File or folder name. */
  String? name = null;

/* True if it is a folder. */
  bool? isFolder = null;

/* File or folder last modified DateTime. */
  DateTime? modifiedDate = null;

/* File or folder size. */
  int? size = null;

/* File or folder path. */
  String? path = null;

  StorageFile();

  @override
  String toString() {
    return 'StorageFile[name=$name, isFolder=$isFolder, modifiedDate=$modifiedDate, size=$size, path=$path, ]';
  }

  StorageFile.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    isFolder = json['isFolder'];
    modifiedDate = json['modifiedDate'] == null
        ? null
        : DateTime.parse(json['modifiedDate']);
    size = json['size'];
    path = json['path'];
  }

  Map<String, dynamic> toJson() {
    return {
      'Name': name,
      'IsFolder': isFolder,
      'ModifiedDate':
          modifiedDate == null ? '' : modifiedDate!.toUtc().toIso8601String(),
      'Size': size,
      'Path': path
    };
  }

  static List<StorageFile> listFromJson(List<dynamic> json) {
    return json.map((value) => new StorageFile.fromJson(value)).toList();
  }

  static Map<String, StorageFile> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StorageFile>();
    if (json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new StorageFile.fromJson(value));
    }
    return map;
  }
}
