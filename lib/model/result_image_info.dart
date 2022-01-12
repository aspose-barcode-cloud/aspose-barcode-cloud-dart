part of barcode.api;

class ResultImageInfo {
  /* Result file size. */
  int? fileSize = null;

/* Result image width. */
  int? imageWidth = null;

/* Result image height. */
  int? imageHeight = null;

  ResultImageInfo();

  @override
  String toString() {
    return 'ResultImageInfo[fileSize=$fileSize, imageWidth=$imageWidth, imageHeight=$imageHeight, ]';
  }

  ResultImageInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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
    return json == null
        ? []
        : json.map((value) => new ResultImageInfo.fromJson(value)).toList();
  }

  static Map<String, ResultImageInfo> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ResultImageInfo>();
    if (json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ResultImageInfo.fromJson(value));
    }
    return map;
  }
}
