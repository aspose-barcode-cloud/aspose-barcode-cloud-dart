part of aspose_barcode_cloud.api;

class BorderDashStyle {
  /// The underlying value of this enum member.
  String? value;

  BorderDashStyle._internal(this.value);

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

  static dynamic encode(BorderDashStyle data) {
    return data.value;
  }

  String? toJson() {
    return value;
  }

  String toString() {
    return value == null ? "null" : value.toString();
  }
}
