// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package

/// Coupon parameters. Used for UpcaGs1DatabarCoupon, UpcaGs1Code128Coupon.
class CouponParams {
  /// Space between main the BarCode and supplement BarCode in Unit value.
  double? supplementSpace;

  /// Constructor
  CouponParams();

  @override
  String toString() {
    return 'CouponParams[supplementSpace=$supplementSpace, ]';
  }

  /// Creates a CouponParams instance from a JSON representation.
  CouponParams.fromJson(Map<String, dynamic> json) {
    supplementSpace = json['supplementSpace']?.toDouble();
  }

  /// Returns a JSON representation of CouponParams.
  Map<String, dynamic> toJson() {
    return {'SupplementSpace': supplementSpace};
  }

  /// Converts a list of JSON objects to a list of CouponParams instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of CouponParams instances.
  static List<CouponParams> listFromJson(List<dynamic> json) {
    return json.map((value) => CouponParams.fromJson(value)).toList();
  }
}
