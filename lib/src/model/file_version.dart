// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package

/// FileVersion
class FileVersion {
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

  /// File Version ID.
  String? versionId;

  /// Specifies whether the file is (true) or is not (false) the latest version of an file.
  bool? isLatest;

  /// Constructor
  FileVersion();

  @override
  String toString() {
    return 'FileVersion[name=$name, isFolder=$isFolder, modifiedDate=$modifiedDate, size=$size, path=$path, versionId=$versionId, isLatest=$isLatest, ]';
  }

  /// Creates a FileVersion instance from a JSON representation.
  FileVersion.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    isFolder = json['isFolder'];
    modifiedDate = json['modifiedDate'] == null
        ? null
        : DateTime.parse(json['modifiedDate']);
    size = json['size'];
    path = json['path'];
    versionId = json['versionId'];
    isLatest = json['isLatest'];
  }

  /// Returns a JSON representation of FileVersion.
  Map<String, dynamic> toJson() {
    return {
      'Name': name,
      'IsFolder': isFolder,
      'ModifiedDate':
          modifiedDate == null ? '' : modifiedDate!.toUtc().toIso8601String(),
      'Size': size,
      'Path': path,
      'VersionId': versionId,
      'IsLatest': isLatest
    };
  }

  /// Converts a list of JSON objects to a list of FileVersion instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of FileVersion instances.
  static List<FileVersion> listFromJson(List<dynamic> json) {
    return json.map((value) => FileVersion.fromJson(value)).toList();
  }
}
