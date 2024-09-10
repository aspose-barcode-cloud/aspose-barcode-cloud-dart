// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../../aspose_barcode_cloud.dart';

/// Barcode image optional parameters
class BarcodeImageParams {
  /// imageFormat
  //enum imageFormatEnum {  Gif,  Jpeg,  Png,  Tiff,  Svg,  };
  AvailableBarCodeImageFormat? imageFormat;

  /// Text that will be displayed instead of codetext in 2D barcodes.  Used for: Aztec, Pdf417, DataMatrix, QR, MaxiCode, DotCode

  String? twoDDisplayText;

  /// textLocation
  //enum textLocationEnum {  Below,  Above,  None,  };
  CodeLocation? textLocation;

  /// textAlignment
  //enum textAlignmentEnum {  Left,  Center,  Right,  };
  TextAlignment? textAlignment;

  /// Specify the displaying bars and content Color.   Value: Color name from https://reference.aspose.com/drawing/net/system.drawing/color/ or ARGB value started with #.   For example: Color.AliceBlue or #FF000000  Default value: Color.Black.

  String? foregroundColor;

  /// Background color of the barcode image.  Value: Color name from https://reference.aspose.com/drawing/net/system.drawing/color/ or ARGB value started with #.   For example: Color.AliceBlue or #FF000000  Default value: Color.White.

  String? backgroundColor;

  /// units
  //enum unitsEnum {  Pixel,  Point,  Inch,  Millimeter,  };
  AvailableGraphicsUnit? units;

  /// Resolution of the BarCode image.  One value for both dimensions.  Default value: 96 dpi.

  double? resolution;

  /// Height of the barcode image in given units. Default units: pixel.

  double? imageHeight;

  /// Width of the barcode image in given units. Default units: pixel.

  double? imageWidth;

  /// BarCode image rotation angle, measured in degree, e.g. RotationAngle = 0 or RotationAngle = 360 means no rotation.  If RotationAngle NOT equal to 90, 180, 270 or 0, it may increase the difficulty for the scanner to read the image.  Default value: 0.

  int? rotationAngle;

  /// Constructor
  BarcodeImageParams(
      [this.imageFormat,
      this.twoDDisplayText,
      this.textLocation,
      this.textAlignment,
      this.foregroundColor,
      this.backgroundColor,
      this.units,
      this.resolution,
      this.imageHeight,
      this.imageWidth,
      this.rotationAngle]);

  @override
  String toString() {
    return 'BarcodeImageParams[imageFormat=$imageFormat, twoDDisplayText=$twoDDisplayText, textLocation=$textLocation, textAlignment=$textAlignment, foregroundColor=$foregroundColor, backgroundColor=$backgroundColor, units=$units, resolution=$resolution, imageHeight=$imageHeight, imageWidth=$imageWidth, rotationAngle=$rotationAngle, ]';
  }

  /// Creates a BarcodeImageParams instance from a JSON representation.
  BarcodeImageParams.fromJson(Map<String, dynamic> json) {
    imageFormat = AvailableBarCodeImageFormat.fromJson(json['imageFormat']);
    twoDDisplayText = json['twoDDisplayText'];
    textLocation = CodeLocation.fromJson(json['textLocation']);
    textAlignment = TextAlignment.fromJson(json['textAlignment']);
    foregroundColor = json['foregroundColor'];
    backgroundColor = json['backgroundColor'];
    units = AvailableGraphicsUnit.fromJson(json['units']);
    resolution = json['resolution'];
    imageHeight = json['imageHeight'];
    imageWidth = json['imageWidth'];
    rotationAngle = json['rotationAngle'];
  }

  /// Returns a JSON representation of BarcodeImageParams.
  Map<String, dynamic> toJson() {
    return {
      'imageFormat': imageFormat,
      'twoDDisplayText': twoDDisplayText,
      'textLocation': textLocation,
      'textAlignment': textAlignment,
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
