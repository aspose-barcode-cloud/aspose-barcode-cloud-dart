///
/// CodabarSymbol: [A, B, C, D]
class CodabarSymbol {
  /// The underlying value of CodabarSymbol enum.
  late final String _value;

  CodabarSymbol._internal(this._value);

  ///
  static CodabarSymbol a_ = CodabarSymbol._internal("A");

  ///
  static CodabarSymbol b_ = CodabarSymbol._internal("B");

  ///
  static CodabarSymbol c_ = CodabarSymbol._internal("C");

  ///
  static CodabarSymbol d_ = CodabarSymbol._internal("D");

  /// Creates a CodabarSymbol instance from a JSON representation.
  CodabarSymbol.fromJson(dynamic data) {
    switch (data) {
      case "A":
      case "B":
      case "C":
      case "D":
        _value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// Returns a JSON representation of CodabarSymbol.
  String? toJson() {
    return _value;
  }

  @override
  String toString() {
    return _value.toString();
  }

  /// Converts a list of JSON objects to a list of CodabarSymbol instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of CodabarSymbol instances.
  static List<CodabarSymbol> listFromJson(List<dynamic> json) {
    return json.map((value) => CodabarSymbol.fromJson(value)).toList();
  }
}
