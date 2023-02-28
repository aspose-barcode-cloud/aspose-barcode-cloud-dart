part of aspose_barcode_cloud.api;

class CustomerInformationInterpretingType {
  CustomerInformationInterpretingType._internal(this.value);

  CustomerInformationInterpretingType.fromJson(dynamic data) {
    switch (data) {
      case "CTable":
        value = data;
        break;
      case "NTable":
        value = data;
        break;
      case "Other":
        value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// The underlying value of this enum member.
  String? value;

  ///
  static CustomerInformationInterpretingType cTable_ =
      CustomerInformationInterpretingType._internal("CTable");

  ///
  static CustomerInformationInterpretingType nTable_ =
      CustomerInformationInterpretingType._internal("NTable");

  ///
  static CustomerInformationInterpretingType other_ =
      CustomerInformationInterpretingType._internal("Other");

  static dynamic encode(CustomerInformationInterpretingType data) => data.value;

  String? toJson() => value;

  @override
  String toString() => value == null ? "null" : value.toString();
}
