part of aspose_barcode_cloud.api;

class AvailableGraphicsUnit {
  AvailableGraphicsUnit._internal(this.value);

  AvailableGraphicsUnit.fromJson(dynamic data) {
    switch (data) {
      case "Pixel":
        value = data;
        break;
      case "Point":
        value = data;
        break;
      case "Inch":
        value = data;
        break;
      case "Millimeter":
        value = data;
        break;
      default:
        throw Exception('Unknown enum value to decode: $data');
    }
  }

  /// The underlying value of this enum member.
  String? value;

  /// Subset of GraphicsUnit.
  static AvailableGraphicsUnit pixel_ =
      AvailableGraphicsUnit._internal("Pixel");

  /// Subset of GraphicsUnit.
  static AvailableGraphicsUnit point_ =
      AvailableGraphicsUnit._internal("Point");

  /// Subset of GraphicsUnit.
  static AvailableGraphicsUnit inch_ = AvailableGraphicsUnit._internal("Inch");

  /// Subset of GraphicsUnit.
  static AvailableGraphicsUnit millimeter_ =
      AvailableGraphicsUnit._internal("Millimeter");

  static dynamic encode(AvailableGraphicsUnit data) => data.value;

  String? toJson() => value;

  @override
  String toString() => value == null ? "null" : value.toString();
}
