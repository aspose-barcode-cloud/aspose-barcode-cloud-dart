part of aspose_barcode_cloud.api;

class DataMatrixEccType {
  DataMatrixEccType._internal(this.value);

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
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// The underlying value of this enum member.
  String? value;

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

  static dynamic encode(DataMatrixEccType data) => data.value;

  String? toJson() => value;

  @override
  String toString() => value == null ? "null" : value.toString();
}
