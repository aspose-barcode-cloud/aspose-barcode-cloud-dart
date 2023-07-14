part of aspose_barcode_cloud.api;

// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
class FilesUploadResult {
  /* List of uploaded file names */
  List<String>? uploaded = [];

/* List of errors. */
  List<Error>? errors = [];

  FilesUploadResult();

  @override
  String toString() {
    return 'FilesUploadResult[uploaded=$uploaded, errors=$errors, ]';
  }

  FilesUploadResult.fromJson(Map<String, dynamic> json) {
    uploaded =
        (json['uploaded'] as List).map((item) => item as String).toList();
    errors = Error.listFromJson(json['errors']);
  }

  Map<String, dynamic> toJson() {
    return {'Uploaded': uploaded, 'Errors': errors};
  }

  static List<FilesUploadResult> listFromJson(List<dynamic> json) {
    return json.map((value) => new FilesUploadResult.fromJson(value)).toList();
  }

  static Map<String, FilesUploadResult> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = new Map<String, FilesUploadResult>();
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new FilesUploadResult.fromJson(value));
    }
    return map;
  }
}
