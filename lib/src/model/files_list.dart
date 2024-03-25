// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../../aspose_barcode_cloud.dart';

/// Files list
class FilesList {
  /// Files and folders contained by folder StorageFile.
  List<StorageFile>? value = [];

  /// Constructor
  FilesList();

  @override
  String toString() {
    return 'FilesList[value=$value, ]';
  }

  /// Creates a FilesList instance from a JSON representation.
  FilesList.fromJson(Map<String, dynamic> json) {
    value = StorageFile.listFromJson(json['value']);
  }

  /// Returns a JSON representation of FilesList.
  Map<String, dynamic> toJson() {
    return {'Value': value};
  }

  /// Converts a list of JSON objects to a list of FilesList instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of FilesList instances.
  static List<FilesList> listFromJson(List<dynamic> json) {
    return json.map((value) => FilesList.fromJson(value)).toList();
  }
}
