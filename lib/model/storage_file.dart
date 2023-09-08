part of aspose_barcode_cloud.api;

// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
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
    return json.map((value) => StorageFile.fromJson(value)).toList();
  }

  static Map<String, StorageFile> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = Map<String, StorageFile>();
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = StorageFile.fromJson(value));
    }
    return map;
  }
}
