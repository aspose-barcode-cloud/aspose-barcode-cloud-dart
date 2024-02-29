// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package

class CouponParams {
  /* Space between main the BarCode and supplement BarCode in Unit value. */
  double? supplementSpace;

  CouponParams();

  @override
  String toString() {
    return 'CouponParams[supplementSpace=$supplementSpace, ]';
  }

  CouponParams.fromJson(Map<String, dynamic> json) {
    supplementSpace = json['supplementSpace']?.toDouble();
  }

  Map<String, dynamic> toJson() {
    return {'SupplementSpace': supplementSpace};
  }

  static List<CouponParams> listFromJson(List<dynamic> json) {
    return json.map((value) => CouponParams.fromJson(value)).toList();
  }

  static Map<String, CouponParams> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = <String, CouponParams>{};
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = CouponParams.fromJson(value));
    }
    return map;
  }
}
