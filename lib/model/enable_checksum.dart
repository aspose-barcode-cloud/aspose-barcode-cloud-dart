part of aspose_barcode_cloud.api;

class EnableChecksum {
  EnableChecksum._internal(this.value);

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

  /// The underlying value of this enum member.
  String? value;

  ///
  static EnableChecksum default_ = EnableChecksum._internal("Default");

  ///
  static EnableChecksum yes_ = EnableChecksum._internal("Yes");

  ///
  static EnableChecksum no_ = EnableChecksum._internal("No");

  static dynamic encode(EnableChecksum data) => data.value;

  String? toJson() => value;

  @override
  String toString() => value == null ? "null" : value.toString();
}
