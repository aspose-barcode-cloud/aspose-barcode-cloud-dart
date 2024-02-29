// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package

class ResultImageInfo {
  /* Result file size. */
  int? fileSize;

/* Result image width. */
  int? imageWidth;

/* Result image height. */
  int? imageHeight;

  ResultImageInfo();

  @override
  String toString() {
    return 'ResultImageInfo[fileSize=$fileSize, imageWidth=$imageWidth, imageHeight=$imageHeight, ]';
  }

  ResultImageInfo.fromJson(Map<String, dynamic> json) {
    fileSize = json['fileSize'];
    imageWidth = json['imageWidth'];
    imageHeight = json['imageHeight'];
  }

  Map<String, dynamic> toJson() {
    return {
      'FileSize': fileSize,
      'ImageWidth': imageWidth,
      'ImageHeight': imageHeight
    };
  }

  static List<ResultImageInfo> listFromJson(List<dynamic> json) {
    return json.map((value) => ResultImageInfo.fromJson(value)).toList();
  }

  static Map<String, ResultImageInfo> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = <String, ResultImageInfo>{};
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = ResultImageInfo.fromJson(value));
    }
    return map;
  }
}
