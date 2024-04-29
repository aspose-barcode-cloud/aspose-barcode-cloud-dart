///
/// DataMatrixEccType: [EccAuto, Ecc000, Ecc050, Ecc080, Ecc100, Ecc140, Ecc200]
class DataMatrixEccType {
  /// The underlying value of DataMatrixEccType enum.
  late final String _value;

  DataMatrixEccType._internal(this._value);

  ///
  // ignore: non_constant_identifier_names
  static final DataMatrixEccType EccAuto =
      DataMatrixEccType._internal("EccAuto");

  ///
  // ignore: non_constant_identifier_names
  static final DataMatrixEccType Ecc000 = DataMatrixEccType._internal("Ecc000");

  ///
  // ignore: non_constant_identifier_names
  static final DataMatrixEccType Ecc050 = DataMatrixEccType._internal("Ecc050");

  ///
  // ignore: non_constant_identifier_names
  static final DataMatrixEccType Ecc080 = DataMatrixEccType._internal("Ecc080");

  ///
  // ignore: non_constant_identifier_names
  static final DataMatrixEccType Ecc100 = DataMatrixEccType._internal("Ecc100");

  ///
  // ignore: non_constant_identifier_names
  static final DataMatrixEccType Ecc140 = DataMatrixEccType._internal("Ecc140");

  ///
  // ignore: non_constant_identifier_names
  static final DataMatrixEccType Ecc200 = DataMatrixEccType._internal("Ecc200");

  /// Creates a DataMatrixEccType instance from a JSON representation.
  DataMatrixEccType.fromJson(dynamic data) {
    switch (data) {
      case "EccAuto":
      case "Ecc000":
      case "Ecc050":
      case "Ecc080":
      case "Ecc100":
      case "Ecc140":
      case "Ecc200":
        _value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// Returns a JSON representation of DataMatrixEccType.
  String? toJson() {
    return _value;
  }

  @override
  String toString() {
    return _value.toString();
  }

  /// Converts a list of JSON objects to a list of DataMatrixEccType instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of DataMatrixEccType instances.
  static List<DataMatrixEccType> listFromJson(List<dynamic> json) {
    return json.map((value) => DataMatrixEccType.fromJson(value)).toList();
  }
}
