part of aspose_barcode_cloud.api;

class EnableChecksum {
  /// The underlying value of this enum member.
  String? value;

  EnableChecksum._internal(this.value);

  ///
  static EnableChecksum default_ = EnableChecksum._internal("Default");

  ///
  static EnableChecksum yes_ = EnableChecksum._internal("Yes");

  ///
  static EnableChecksum no_ = EnableChecksum._internal("No");

  EnableChecksum.fromJson(dynamic data) {
    switch (data) {
      case "Default":
        value = data;
        break;
      case "Yes":
        value = data;
        break;
      case "No":
        value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(EnableChecksum data) {
    return data.value;
  }

  String? toJson() {
    return value;
  }

  String toString() {
    return value == null ? "null" : value.toString();
  }
}
