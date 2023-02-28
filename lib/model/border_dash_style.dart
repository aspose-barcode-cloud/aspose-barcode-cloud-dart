part of aspose_barcode_cloud.api;

class BorderDashStyle {
  BorderDashStyle._internal(this.value);

  BorderDashStyle.fromJson(dynamic data) {
    switch (data) {
      case "Solid":
        value = data;
        break;
      case "Dash":
        value = data;
        break;
      case "Dot":
        value = data;
        break;
      case "DashDot":
        value = data;
        break;
      case "DashDotDot":
        value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// The underlying value of this enum member.
  String? value;

  ///
  static BorderDashStyle solid_ = BorderDashStyle._internal("Solid");

  ///
  static BorderDashStyle dash_ = BorderDashStyle._internal("Dash");

  ///
  static BorderDashStyle dot_ = BorderDashStyle._internal("Dot");

  ///
  static BorderDashStyle dashDot_ = BorderDashStyle._internal("DashDot");

  ///
  static BorderDashStyle dashDotDot_ = BorderDashStyle._internal("DashDotDot");

  static dynamic encode(BorderDashStyle data) => data.value;

  String? toJson() => value;

  @override
  String toString() => value == null ? "null" : value.toString();
}
