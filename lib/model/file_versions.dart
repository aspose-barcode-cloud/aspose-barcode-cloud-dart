part of aspose_barcode_cloud.api;

// ignore_for_file: non_constant_identifier_names
class FileVersions {
  /* File versions FileVersion. */
  List<FileVersion>? value = [];

  FileVersions();

  @override
  String toString() {
    return 'FileVersions[value=$value, ]';
  }

  FileVersions.fromJson(Map<String, dynamic> json) {
    value = FileVersion.listFromJson(json['value']);
  }

  Map<String, dynamic> toJson() {
    return {'Value': value};
  }

  static List<FileVersions> listFromJson(List<dynamic> json) {
    return json.map((value) => new FileVersions.fromJson(value)).toList();
  }

  static Map<String, FileVersions> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = new Map<String, FileVersions>();
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new FileVersions.fromJson(value));
    }
    return map;
  }
}
