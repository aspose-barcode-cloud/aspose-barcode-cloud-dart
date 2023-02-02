part of aspose_barcode_cloud.api;

class CouponParams {
  /* Space between main the BarCode and supplement BarCode in Unit value. */
  double? supplementSpace = null;

  CouponParams();

  @override
  String toString() {
    return 'CouponParams[supplementSpace=$supplementSpace, ]';
  }

  CouponParams.fromJson(Map<String, dynamic> json) {
    supplementSpace = json['supplementSpace'] == null
        ? null
        : json['supplementSpace'].toDouble();
  }

  Map<String, dynamic> toJson() {
    return {'SupplementSpace': supplementSpace};
  }

  static List<CouponParams> listFromJson(List<dynamic> json) {
    return json.map((value) => new CouponParams.fromJson(value)).toList();
  }

  static Map<String, CouponParams> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = new Map<String, CouponParams>();
    if (json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new CouponParams.fromJson(value));
    }
    return map;
  }
}
