// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../../aspose_barcode_cloud.dart';

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
    return json.map((value) => FileVersions.fromJson(value)).toList();
  }

  static Map<String, FileVersions> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = Map<String, FileVersions>();
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = FileVersions.fromJson(value));
    }
    return map;
  }
}
