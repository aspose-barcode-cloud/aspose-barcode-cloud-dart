// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package

/// Scan barcode request.
class ScanBase64Request {
  /// Barcode image bytes encoded as base-64.

  late String fileBase64;

  /// Constructor
  ScanBase64Request(
    this.fileBase64,
  );

  @override
  String toString() {
    return 'ScanBase64Request[fileBase64=$fileBase64, ]';
  }

  /// Creates a ScanBase64Request instance from a JSON representation.
  ScanBase64Request.fromJson(Map<String, dynamic> json) {
    fileBase64 = json['fileBase64'];
  }

  /// Returns a JSON representation of ScanBase64Request.
  Map<String, dynamic> toJson() {
    return {'fileBase64': fileBase64};
  }

  /// Converts a list of JSON objects to a list of ScanBase64Request instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of ScanBase64Request instances.
  static List<ScanBase64Request> listFromJson(List<dynamic> json) {
    return json.map((value) => ScanBase64Request.fromJson(value)).toList();
  }
}
