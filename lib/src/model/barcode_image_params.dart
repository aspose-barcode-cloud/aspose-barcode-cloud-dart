// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../../aspose_barcode_cloud.dart';

/// Barcode image optional parameters
class BarcodeImageParams {
  /// imageFormat
  //enum imageFormatEnum {  Png,  Jpeg,  Svg,  Tiff,  Gif,  };
  BarcodeImageFormat? imageFormat;

  /// textLocation
  //enum textLocationEnum {  Below,  Above,  None,  };
  CodeLocation? textLocation;

  /// Specify the displaying bars and content Color. Value: Color name from https://reference.aspose.com/drawing/net/system.drawing/color/ or ARGB value started with #. For example: AliceBlue or #FF000000 Default value: Black.

  String? foregroundColor;

  /// Background color of the barcode image. Value: Color name from https://reference.aspose.com/drawing/net/system.drawing/color/ or ARGB value started with #. For example: AliceBlue or #FF000000 Default value: White.

  String? backgroundColor;

  /// units
  //enum unitsEnum {  Pixel,  Point,  Inch,  Millimeter,  };
  GraphicsUnit? units;

  /// Resolution of the BarCode image. One value for both dimensions. Default value: 96 dpi. Decimal separator is dot.

  double? resolution;

  /// Height of the barcode image in given units. Default units: pixel. Decimal separator is dot.

  double? imageHeight;

  /// Width of the barcode image in given units. Default units: pixel. Decimal separator is dot.

  double? imageWidth;

  /// BarCode image rotation angle, measured in degree, e.g. RotationAngle = 0 or RotationAngle = 360 means no rotation. If RotationAngle NOT equal to 90, 180, 270 or 0, it may increase the difficulty for the scanner to read the image. Default value: 0.

  int? rotationAngle;

  /// Constructor
  BarcodeImageParams(
      [this.imageFormat,
      this.textLocation,
      this.foregroundColor,
      this.backgroundColor,
      this.units,
      this.resolution,
      this.imageHeight,
      this.imageWidth,
      this.rotationAngle]);

  @override
  String toString() {
    return 'BarcodeImageParams[imageFormat=$imageFormat, textLocation=$textLocation, foregroundColor=$foregroundColor, backgroundColor=$backgroundColor, units=$units, resolution=$resolution, imageHeight=$imageHeight, imageWidth=$imageWidth, rotationAngle=$rotationAngle, ]';
  }

  /// Creates a BarcodeImageParams instance from a JSON representation.
  BarcodeImageParams.fromJson(Map<String, dynamic> json) {
    imageFormat = json['imageFormat'] == null
        ? null
        : BarcodeImageFormat.fromJson(json['imageFormat']);
    textLocation = json['textLocation'] == null
        ? null
        : CodeLocation.fromJson(json['textLocation']);
    foregroundColor = json['foregroundColor'];
    backgroundColor = json['backgroundColor'];
    units = json['units'] == null ? null : GraphicsUnit.fromJson(json['units']);
    resolution = json['resolution'];
    imageHeight = json['imageHeight'];
    imageWidth = json['imageWidth'];
    rotationAngle = json['rotationAngle'];
  }

  /// Returns a JSON representation of BarcodeImageParams.
  Map<String, dynamic> toJson() {
    return {
      'imageFormat': imageFormat,
      'textLocation': textLocation,
      'foregroundColor': foregroundColor,
      'backgroundColor': backgroundColor,
      'units': units,
      'resolution': resolution,
      'imageHeight': imageHeight,
      'imageWidth': imageWidth,
      'rotationAngle': rotationAngle
    };
  }

  /// Converts a list of JSON objects to a list of BarcodeImageParams instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of BarcodeImageParams instances.
  static List<BarcodeImageParams> listFromJson(List<dynamic> json) {
    return json.map((value) => BarcodeImageParams.fromJson(value)).toList();
  }
}
