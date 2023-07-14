part of aspose_barcode_cloud.api;

class CodabarSymbol {
  /// The underlying value of this enum member.
  String? value;

  CodabarSymbol._internal(this.value);

  ///
  static CodabarSymbol a_ = CodabarSymbol._internal("A");

  ///
  static CodabarSymbol b_ = CodabarSymbol._internal("B");

  ///
  static CodabarSymbol c_ = CodabarSymbol._internal("C");

  ///
  static CodabarSymbol d_ = CodabarSymbol._internal("D");

  CodabarSymbol.fromJson(dynamic data) {
    switch (data) {
      case "A":
        value = data;
        break;
      case "B":
        value = data;
        break;
      case "C":
        value = data;
        break;
      case "D":
        value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(CodabarSymbol data) {
    return data.value;
  }

  String? toJson() {
    return value;
  }

  String toString() {
    return value == null ? "null" : value.toString();
  }
}
