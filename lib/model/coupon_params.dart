part of aspose_barcode_cloud.api;

class CouponParams {
  CouponParams();

  CouponParams.fromJson(Map<String, dynamic> json) {
    supplementSpace = json['supplementSpace'] == null
        ? null
        : json['supplementSpace'].toDouble();
  }
  /* Space between main the BarCode and supplement BarCode in Unit value. */
  double? supplementSpace = null;

  @override
  String toString() => 'CouponParams[supplementSpace=$supplementSpace, ]';

  Map<String, dynamic> toJson() => {'SupplementSpace': supplementSpace};

  static List<CouponParams> listFromJson(List<dynamic> json) =>
      json.map((value) => new CouponParams.fromJson(value)).toList();

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
