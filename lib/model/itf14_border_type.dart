part of aspose_barcode_cloud.api;

class ITF14BorderType {
  /// The underlying value of this enum member.
  String? value;

  ITF14BorderType._internal(this.value);

  ///
  static ITF14BorderType none_ = ITF14BorderType._internal("None");

  ///
  static ITF14BorderType frame_ = ITF14BorderType._internal("Frame");

  ///
  static ITF14BorderType bar_ = ITF14BorderType._internal("Bar");

  ///
  static ITF14BorderType frameOut_ = ITF14BorderType._internal("FrameOut");

  ///
  static ITF14BorderType barOut_ = ITF14BorderType._internal("BarOut");

  ITF14BorderType.fromJson(dynamic data) {
    switch (data) {
      case "None":
        value = data;
        break;
      case "Frame":
        value = data;
        break;
      case "Bar":
        value = data;
        break;
      case "FrameOut":
        value = data;
        break;
      case "BarOut":
        value = data;
        break;
      default:
        throw ('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(ITF14BorderType data) {
    return data.value;
  }

  String? toJson() {
    return value;
  }

  String toString() {
    return value == null ? "null" : value.toString();
  }
}
