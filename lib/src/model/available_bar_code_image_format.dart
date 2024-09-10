/// Specifies the file format of the image.
/// AvailableBarCodeImageFormat: [Gif, Jpeg, Png, Tiff, Svg]
class AvailableBarCodeImageFormat {
  /// The underlying value of AvailableBarCodeImageFormat enum.
  late final String _value;

  AvailableBarCodeImageFormat._internal(this._value);

  /// Specifies the file format of the image.
  // ignore: non_constant_identifier_names
  static final AvailableBarCodeImageFormat Gif =
      AvailableBarCodeImageFormat._internal("Gif");

  /// Specifies the file format of the image.
  // ignore: non_constant_identifier_names
  static final AvailableBarCodeImageFormat Jpeg =
      AvailableBarCodeImageFormat._internal("Jpeg");

  /// Specifies the file format of the image.
  // ignore: non_constant_identifier_names
  static final AvailableBarCodeImageFormat Png =
      AvailableBarCodeImageFormat._internal("Png");

  /// Specifies the file format of the image.
  // ignore: non_constant_identifier_names
  static final AvailableBarCodeImageFormat Tiff =
      AvailableBarCodeImageFormat._internal("Tiff");

  /// Specifies the file format of the image.
  // ignore: non_constant_identifier_names
  static final AvailableBarCodeImageFormat Svg =
      AvailableBarCodeImageFormat._internal("Svg");

  /// Creates a AvailableBarCodeImageFormat instance from a JSON representation.
  AvailableBarCodeImageFormat.fromJson(dynamic data) {
    switch (data) {
      case 'Gif':
      case 'Jpeg':
      case 'Png':
      case 'Tiff':
      case 'Svg':
        _value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// Returns a JSON representation of AvailableBarCodeImageFormat.
  String? toJson() {
    return _value;
  }

  @override
  String toString() {
    return _value.toString();
  }

  /// Converts a list of JSON objects to a list of AvailableBarCodeImageFormat instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of AvailableBarCodeImageFormat instances.
  static List<AvailableBarCodeImageFormat> listFromJson(List<dynamic> json) {
    return json
        .map((value) => AvailableBarCodeImageFormat.fromJson(value))
        .toList();
  }
}
