part of aspose_barcode_cloud.api;

class ChecksumValidation {
  ChecksumValidation._internal(this.value);

  ChecksumValidation.fromJson(dynamic data) {
    switch (data) {
      case "Default":
        value = data;
        break;
      case "On":
        value = data;
        break;
      case "Off":
        value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// The underlying value of this enum member.
  String? value;

  ///
  static ChecksumValidation default_ = ChecksumValidation._internal("Default");

  ///
  static ChecksumValidation on_ = ChecksumValidation._internal("On");

  ///
  static ChecksumValidation off_ = ChecksumValidation._internal("Off");

  static dynamic encode(ChecksumValidation data) => data.value;

  String? toJson() => value;

  @override
  String toString() => value == null ? "null" : value.toString();
}
