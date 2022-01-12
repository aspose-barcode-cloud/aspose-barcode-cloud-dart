part of barcode.api;

class FileVersions {
  /* File versions FileVersion. */
  List<FileVersion>? value = [];

  FileVersions();

  @override
  String toString() {
    return 'FileVersions[value=$value, ]';
  }

  FileVersions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    value = FileVersion.listFromJson(json['value']);
  }

  Map<String, dynamic> toJson() {
    return {'Value': value};
  }

  static List<FileVersions> listFromJson(List<dynamic> json) {
    return json == null
        ? []
        : json.map((value) => new FileVersions.fromJson(value)).toList();
  }

  static Map<String, FileVersions> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FileVersions>();
    if (json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new FileVersions.fromJson(value));
    }
    return map;
  }
}
