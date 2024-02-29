class ChecksumValidation {
  /// The underlying value of this enum member.
  String? value;

  ChecksumValidation._internal(this.value);

  ///
  static ChecksumValidation default_ = ChecksumValidation._internal("Default");

  ///
  static ChecksumValidation on_ = ChecksumValidation._internal("On");

  ///
  static ChecksumValidation off_ = ChecksumValidation._internal("Off");

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

  static dynamic encode(ChecksumValidation data) {
    return data.value;
  }

  String? toJson() {
    return value;
  }

  @override
  String toString() {
    return value == null ? "null" : value.toString();
  }

  static List<ChecksumValidation> listFromJson(List<dynamic> json) {
    return json.map((value) => ChecksumValidation.fromJson(value)).toList();
  }
}
