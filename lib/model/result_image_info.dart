part of aspose_barcode_cloud.api;

class ResultImageInfo {
  ResultImageInfo();

  ResultImageInfo.fromJson(Map<String, dynamic> json) {
    fileSize = json['fileSize'];
    imageWidth = json['imageWidth'];
    imageHeight = json['imageHeight'];
  }
  /* Result file size. */
  int? fileSize = null;

/* Result image width. */
  int? imageWidth = null;

/* Result image height. */
  int? imageHeight = null;

  @override
  String toString() =>
      'ResultImageInfo[fileSize=$fileSize, imageWidth=$imageWidth, imageHeight=$imageHeight, ]';

  Map<String, dynamic> toJson() => {
        'FileSize': fileSize,
        'ImageWidth': imageWidth,
        'ImageHeight': imageHeight
      };

  static List<ResultImageInfo> listFromJson(List<dynamic> json) =>
      json.map((value) => new ResultImageInfo.fromJson(value)).toList();

  static Map<String, ResultImageInfo> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = new Map<String, ResultImageInfo>();
    if (json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ResultImageInfo.fromJson(value));
    }
    return map;
  }
}
