part of aspose_barcode_cloud.api;

class CustomerInformationInterpretingType {
  /// The underlying value of this enum member.
  String? value;

  CustomerInformationInterpretingType._internal(this.value);

  ///
  static CustomerInformationInterpretingType cTable_ =
      CustomerInformationInterpretingType._internal("CTable");

  ///
  static CustomerInformationInterpretingType nTable_ =
      CustomerInformationInterpretingType._internal("NTable");

  ///
  static CustomerInformationInterpretingType other_ =
      CustomerInformationInterpretingType._internal("Other");

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
        throw ('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(CustomerInformationInterpretingType data) {
    return data.value;
  }

  String? toJson() {
    return value;
  }

  String toString() {
    return value == null ? "null" : value.toString();
  }
}
