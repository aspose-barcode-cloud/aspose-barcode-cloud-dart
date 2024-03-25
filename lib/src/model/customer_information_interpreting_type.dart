///
/// CustomerInformationInterpretingType: [CTable, NTable, Other]
class CustomerInformationInterpretingType {
  /// The underlying value of CustomerInformationInterpretingType enum.
  late final String _value;

  CustomerInformationInterpretingType._internal(this._value);

  ///
  static CustomerInformationInterpretingType cTable_ =
      CustomerInformationInterpretingType._internal("CTable");

  ///
  static CustomerInformationInterpretingType nTable_ =
      CustomerInformationInterpretingType._internal("NTable");

  ///
  static CustomerInformationInterpretingType other_ =
      CustomerInformationInterpretingType._internal("Other");

  /// Creates a CustomerInformationInterpretingType instance from a JSON representation.
  CustomerInformationInterpretingType.fromJson(dynamic data) {
    switch (data) {
      case "CTable":
      case "NTable":
      case "Other":
        _value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// Returns a JSON representation of CustomerInformationInterpretingType.
  String? toJson() {
    return _value;
  }

  @override
  String toString() {
    return _value.toString();
  }

  /// Converts a list of JSON objects to a list of CustomerInformationInterpretingType instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of CustomerInformationInterpretingType instances.
  static List<CustomerInformationInterpretingType> listFromJson(
      List<dynamic> json) {
    return json
        .map((value) => CustomerInformationInterpretingType.fromJson(value))
        .toList();
  }
}
