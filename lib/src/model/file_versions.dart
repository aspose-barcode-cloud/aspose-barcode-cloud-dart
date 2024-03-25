// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../../aspose_barcode_cloud.dart';

/// File versions FileVersion.
class FileVersions {
  /// File versions FileVersion.
  List<FileVersion>? value = [];

  /// Constructor
  FileVersions();

  @override
  String toString() {
    return 'FileVersions[value=$value, ]';
  }

  /// Creates a FileVersions instance from a JSON representation.
  FileVersions.fromJson(Map<String, dynamic> json) {
    value = FileVersion.listFromJson(json['value']);
  }

  /// Returns a JSON representation of FileVersions.
  Map<String, dynamic> toJson() {
    return {'Value': value};
  }

  /// Converts a list of JSON objects to a list of FileVersions instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of FileVersions instances.
  static List<FileVersions> listFromJson(List<dynamic> json) {
    return json.map((value) => FileVersions.fromJson(value)).toList();
  }
}
