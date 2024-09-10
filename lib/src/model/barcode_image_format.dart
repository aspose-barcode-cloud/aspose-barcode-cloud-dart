/// Specifies the file format of the image.
/// BarcodeImageFormat: [Png, Jpeg, Svg, Tiff, Gif]
class BarcodeImageFormat {
  /// The underlying value of BarcodeImageFormat enum.
  late final String _value;

  BarcodeImageFormat._internal(this._value);

  /// Specifies the file format of the image.
  // ignore: non_constant_identifier_names
  static final BarcodeImageFormat Png = BarcodeImageFormat._internal("Png");

  /// Specifies the file format of the image.
  // ignore: non_constant_identifier_names
  static final BarcodeImageFormat Jpeg = BarcodeImageFormat._internal("Jpeg");

  /// Specifies the file format of the image.
  // ignore: non_constant_identifier_names
  static final BarcodeImageFormat Svg = BarcodeImageFormat._internal("Svg");

  /// Specifies the file format of the image.
  // ignore: non_constant_identifier_names
  static final BarcodeImageFormat Tiff = BarcodeImageFormat._internal("Tiff");

  /// Specifies the file format of the image.
  // ignore: non_constant_identifier_names
  static final BarcodeImageFormat Gif = BarcodeImageFormat._internal("Gif");

  /// Creates a BarcodeImageFormat instance from a JSON representation.
  BarcodeImageFormat.fromJson(dynamic data) {
    switch (data) {
      case 'Png':
      case 'Jpeg':
      case 'Svg':
      case 'Tiff':
      case 'Gif':
        _value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// Returns a JSON representation of BarcodeImageFormat.
  String? toJson() {
    return _value;
  }

  @override
  String toString() {
    return _value.toString();
  }

  /// Converts a list of JSON objects to a list of BarcodeImageFormat instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of BarcodeImageFormat instances.
  static List<BarcodeImageFormat> listFromJson(List<dynamic> json) {
    return json.map((value) => BarcodeImageFormat.fromJson(value)).toList();
  }
}
