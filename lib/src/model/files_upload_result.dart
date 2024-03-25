// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../../aspose_barcode_cloud.dart';

/// File upload result
class FilesUploadResult {
  /// List of uploaded file names
  List<String>? uploaded = [];

  /// List of errors.
  List<Error>? errors = [];

  /// Constructor
  FilesUploadResult();

  @override
  String toString() {
    return 'FilesUploadResult[uploaded=$uploaded, errors=$errors, ]';
  }

  /// Creates a FilesUploadResult instance from a JSON representation.
  FilesUploadResult.fromJson(Map<String, dynamic> json) {
    uploaded =
        (json['uploaded'] as List).map((item) => item as String).toList();
    errors = Error.listFromJson(json['errors']);
  }

  /// Returns a JSON representation of FilesUploadResult.
  Map<String, dynamic> toJson() {
    return {'Uploaded': uploaded, 'Errors': errors};
  }

  /// Converts a list of JSON objects to a list of FilesUploadResult instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of FilesUploadResult instances.
  static List<FilesUploadResult> listFromJson(List<dynamic> json) {
    return json.map((value) => FilesUploadResult.fromJson(value)).toList();
  }
}
