part of barcode.api;

class DataMatrixEccType {
  /// The underlying value of this enum member.
  String? value;

  DataMatrixEccType._internal(this.value);

  ///
  static DataMatrixEccType eccAuto_ = DataMatrixEccType._internal("EccAuto");

  ///
  static DataMatrixEccType ecc000_ = DataMatrixEccType._internal("Ecc000");

  ///
  static DataMatrixEccType ecc050_ = DataMatrixEccType._internal("Ecc050");

  ///
  static DataMatrixEccType ecc080_ = DataMatrixEccType._internal("Ecc080");

  ///
  static DataMatrixEccType ecc100_ = DataMatrixEccType._internal("Ecc100");

  ///
  static DataMatrixEccType ecc140_ = DataMatrixEccType._internal("Ecc140");

  ///
  static DataMatrixEccType ecc200_ = DataMatrixEccType._internal("Ecc200");

  DataMatrixEccType.fromJson(dynamic data) {
    switch (data) {
      case "EccAuto":
        value = data;
        break;
      case "Ecc000":
        value = data;
        break;
      case "Ecc050":
        value = data;
        break;
      case "Ecc080":
        value = data;
        break;
      case "Ecc100":
        value = data;
        break;
      case "Ecc140":
        value = data;
        break;
      case "Ecc200":
        value = data;
        break;
      default:
        throw ('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(DataMatrixEccType data) {
    return data.value;
  }
}
