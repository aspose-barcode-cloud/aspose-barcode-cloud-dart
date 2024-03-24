// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package

/// File or folder information
class StorageFile {
  /// File or folder name.
  String? name;

  /// True if it is a folder.
  bool? isFolder;

  /// File or folder last modified DateTime.
  DateTime? modifiedDate;

  /// File or folder size.
  int? size;

  /// File or folder path.
  String? path;

  /// Constructor
  StorageFile();

  @override
  String toString() {
    return 'StorageFile[name=$name, isFolder=$isFolder, modifiedDate=$modifiedDate, size=$size, path=$path, ]';
  }

  /// Creates a StorageFile instance from a JSON representation.
  StorageFile.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    isFolder = json['isFolder'];
    modifiedDate = json['modifiedDate'] == null
        ? null
        : DateTime.parse(json['modifiedDate']);
    size = json['size'];
    path = json['path'];
  }

  /// Returns a JSON representation of StorageFile.
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

  /// Converts a list of JSON objects to a list of StorageFile instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of StorageFile instances.
  static List<StorageFile> listFromJson(List<dynamic> json) {
    return json.map((value) => StorageFile.fromJson(value)).toList();
  }
}
