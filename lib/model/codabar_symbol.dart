part of aspose_barcode_cloud.api;

class CodabarSymbol {
  CodabarSymbol._internal(this.value);

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

  /// The underlying value of this enum member.
  String? value;

  ///
  static CodabarSymbol a_ = CodabarSymbol._internal("A");

  ///
  static CodabarSymbol b_ = CodabarSymbol._internal("B");

  ///
  static CodabarSymbol c_ = CodabarSymbol._internal("C");

  ///
  static CodabarSymbol d_ = CodabarSymbol._internal("D");

  static dynamic encode(CodabarSymbol data) => data.value;

  String? toJson() => value;

  @override
  String toString() => value == null ? "null" : value.toString();
}
