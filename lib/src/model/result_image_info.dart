// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package

/// Created image info.
class ResultImageInfo {
  /// Result file size.
  int? fileSize;

  /// Result image width.
  int? imageWidth;

  /// Result image height.
  int? imageHeight;

  /// Constructor
  ResultImageInfo();

  @override
  String toString() {
    return 'ResultImageInfo[fileSize=$fileSize, imageWidth=$imageWidth, imageHeight=$imageHeight, ]';
  }

  /// Creates a ResultImageInfo instance from a JSON representation.
  ResultImageInfo.fromJson(Map<String, dynamic> json) {
    fileSize = json['fileSize'];
    imageWidth = json['imageWidth'];
    imageHeight = json['imageHeight'];
  }

  /// Returns a JSON representation of ResultImageInfo.
  Map<String, dynamic> toJson() {
    return {
      'FileSize': fileSize,
      'ImageWidth': imageWidth,
      'ImageHeight': imageHeight
    };
  }

  /// Converts a list of JSON objects to a list of ResultImageInfo instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of ResultImageInfo instances.
  static List<ResultImageInfo> listFromJson(List<dynamic> json) {
    return json.map((value) => ResultImageInfo.fromJson(value)).toList();
  }
}
