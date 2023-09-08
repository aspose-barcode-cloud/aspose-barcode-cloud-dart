// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../../aspose_barcode_cloud.dart';

class FilesList {
  /* Files and folders contained by folder StorageFile. */
  List<StorageFile>? value = [];

  FilesList();

  @override
  String toString() {
    return 'FilesList[value=$value, ]';
  }

  FilesList.fromJson(Map<String, dynamic> json) {
    value = StorageFile.listFromJson(json['value']);
  }

  Map<String, dynamic> toJson() {
    return {'Value': value};
  }

  static List<FilesList> listFromJson(List<dynamic> json) {
    return json.map((value) => FilesList.fromJson(value)).toList();
  }

  static Map<String, FilesList> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = Map<String, FilesList>();
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = FilesList.fromJson(value));
    }
    return map;
  }
}
