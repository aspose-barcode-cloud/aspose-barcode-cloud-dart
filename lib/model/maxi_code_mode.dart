part of aspose_barcode_cloud.api;

class MaxiCodeMode {
  /// The underlying value of this enum member.
  String? value;

  MaxiCodeMode._internal(this.value);

  ///
  static MaxiCodeMode mode2_ = MaxiCodeMode._internal("Mode2");

  ///
  static MaxiCodeMode mode3_ = MaxiCodeMode._internal("Mode3");

  ///
  static MaxiCodeMode mode4_ = MaxiCodeMode._internal("Mode4");

  ///
  static MaxiCodeMode mode5_ = MaxiCodeMode._internal("Mode5");

  ///
  static MaxiCodeMode mode6_ = MaxiCodeMode._internal("Mode6");

  MaxiCodeMode.fromJson(dynamic data) {
    switch (data) {
      case "Mode2":
        value = data;
        break;
      case "Mode3":
        value = data;
        break;
      case "Mode4":
        value = data;
        break;
      case "Mode5":
        value = data;
        break;
      case "Mode6":
        value = data;
        break;
      default:
        throw ('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(MaxiCodeMode data) {
    return data.value;
  }
}
