part of aspose_barcode_cloud.api;

class FileVersions {
  FileVersions();

  FileVersions.fromJson(Map<String, dynamic> json) {
    value = FileVersion.listFromJson(json['value']);
  }
  /* File versions FileVersion. */
  List<FileVersion>? value = [];

  @override
  String toString() => 'FileVersions[value=$value, ]';

  Map<String, dynamic> toJson() => {'Value': value};

  static List<FileVersions> listFromJson(List<dynamic> json) =>
      json.map((value) => new FileVersions.fromJson(value)).toList();

  static Map<String, FileVersions> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = new Map<String, FileVersions>();
    if (json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new FileVersions.fromJson(value));
    }
    return map;
  }
}
