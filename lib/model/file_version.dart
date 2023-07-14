part of aspose_barcode_cloud.api;

// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
class FileVersion {
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

/* File Version ID. */
  String? versionId = null;

/* Specifies whether the file is (true) or is not (false) the latest version of an file. */
  bool? isLatest = null;

  FileVersion();

  @override
  String toString() {
    return 'FileVersion[name=$name, isFolder=$isFolder, modifiedDate=$modifiedDate, size=$size, path=$path, versionId=$versionId, isLatest=$isLatest, ]';
  }

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

  static List<FileVersion> listFromJson(List<dynamic> json) {
    return json.map((value) => new FileVersion.fromJson(value)).toList();
  }

  static Map<String, FileVersion> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = new Map<String, FileVersion>();
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new FileVersion.fromJson(value));
    }
    return map;
  }
}
